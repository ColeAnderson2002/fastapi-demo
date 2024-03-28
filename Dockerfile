FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-alpine3.14 
# The first line indicates that your container will be built upon a pre-existing container that someone else created. This means that a developer has pre-loaded all the basic essentials for your FastAPI container -- you simply need to add in your own code and requirements.
COPY ./app /app 
# The second line copies all of your app/ directory into the container, i.e. the actual Python guts of your application.
COPY requirements.txt requirements.txt 
# The third line copies the requirements.txt file into the container.
RUN pip install --upgrade pip && pip install -r requirements.txt
The fourth line runs pip install to be sure all of your Python dependencies are installed.
