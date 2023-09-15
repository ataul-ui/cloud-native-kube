# Use the official FastAPI image as the base image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# Set the working directory inside the container
WORKDIR /src

# Copy the FastAPI app code into the container
COPY app.py /src

# Install any additional dependencies if needed
# RUN pip install ...
RUN pip install fastapi
#RUN pip install streamlit
RUN pip install requests
RUN pip install fastjsonschema==2.17.1

# Expose the port that FastAPI will listen on
EXPOSE 80

# Command to run the FastAPI application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
