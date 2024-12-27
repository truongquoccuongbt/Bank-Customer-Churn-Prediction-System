from typing import Union
from fastapi.routing import APIRouter
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()
router = APIRouter()

class Customer(BaseModel):
    id: int
    CustomerId: str
    Surname: str
    CreditScore: int
    Geography: str
    Gender: str
    Age: str
    Tenure: float
    Balance: int
    NumOfProducts: int
    HasCrCard: int
    IsActiveMember: int 
    EstimatedSalary: float


@router.get("/get")
def read_root():
    print('-------')
    return {"Module 1: Predict Chunk Customer"}

@router.post("/predict")
def predict(customer: Customer):
    return {"Module 2: Predict Chunk Customer"}


app.include_router(router, prefix='/api/v1')


# if __name__ == "__main__":
#     uvicorn.run(app, port=8000, host)