# FROM python:3.9

# WORKDIR /app/backend

# COPY requirements.txt /app/backend
# RUN pip install -r requirements.txt

# COPY . /app/backend

# EXPOSE 8000

# # CMD python /app/backend/manage.py runserver 0.0.0.0:8000
# CMD python /app/backend/manage.py runserver 


FROM python:3.9.1

WORKDIR /app/backend

COPY requirements.txt /app/backend/
RUN pip install -r requirements.txt

COPY . /app/backend/

# Change this to match the Django default port
EXPOSE 5000  

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
