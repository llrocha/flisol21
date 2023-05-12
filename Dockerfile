FROM alpine:3.18 as build-base-env

WORKDIR /app

COPY . ./
COPY requirements.base ./requirements.txt

RUN apk update && \
    apk add --no-cache python3 sqlite

RUN python3 -m ensurepip --default-pip && \
    pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

RUN if [ ! -d /app/base/ ];then mkdir /app/base/;fi

RUN python3 build_database.py


FROM alpine:3.18 AS production-env
# Necessary packages
RUN apk update && \
    apk add --no-cache py3-psutil python3 sqlite tzdata && \
    python3 -m ensurepip --default-pip && \
    pip3 install --no-cache-dir --upgrade pip

# Timezone America/Sao_Paulo
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN echo "America/Sao_Paulo" >/etc/timezone

# APP
WORKDIR /app

COPY main.py /app/
COPY sqlite_db.py /app/
COPY zipcode_*.py /app/
COPY requirements.txt /app/
COPY README.md /app/
COPY images/* /app/images/
COPY --from=build-base-env /app/base/cep.db /app/base/cep.db

RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install --no-cache-dir uvicorn

CMD ["uvicorn", "--host", "0.0.0.0", "main:app"]
