FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-alpine3.14
COPY ./app /app 
# First Layer: copies whatever is in app file into container
COPY requirements.txt requirements.txt 
# Second Layer: copies first file into same file within container
RUN pip install --upgrade pip && pip install -r requirements.txt

