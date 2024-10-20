from typing import Union
from fastapi import FastAPI
import uvicorn

app = FastAPI()


@app.get("/")
def read_root():
    print('-------')
    return {"Module 1: Predict Chunk Customer"}

# if __name__ == "__main__":
#     uvicorn.run(app, port=8000, host)