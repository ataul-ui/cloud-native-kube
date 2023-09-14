#create the streamlit frontend here

#testing another thing here real quick
from fastapi import FastAPI
from fastapi.encoders import jsonable_encoder
import streamlit as st
import requests
import json

print("testing this out here, I think this is great")
app = FastAPI().run(host="0.0.0.0", port=80)

@app.post("/")
def root(data: dict):
    return data

#rename the path to /logistic_model   instead of /predict
@app.post("/predict")
def predict_failure(data: dict):
    json_data = json.dumps(data)

    
    senting = json_data[0]
    #json_compatible_item_data = jsonable_encoder(senting)
    print(senting)
    return senting

# I'll use flask or fastapi to create a quick application, then use postman to send
# messages, then from there configure rabbitmq to send it to other containers.