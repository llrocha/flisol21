from typing import Optional
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles

from zipcode_app import ZipCodeApp


app = ZipCodeApp()

app.mount("/images", StaticFiles(directory="images"), name='images')

@app.get("/", response_class=HTMLResponse)
def read_root():
    return app.index()


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}


@app.get("/zipcode/{zipcode}")
def get_zipcode(zipcode: str):
    return app.get_zip_code(zipcode)

@app.get("/hc")
def hc():
    return app.hc()