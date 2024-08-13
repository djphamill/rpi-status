FROM python

RUN pip install flask

WORKDIR /code
COPY . . 
EXPOSE 8080
CMD ["flask", "--app", "src/app.py", "run", "--host=0.0.0.0", "--port=8080"]
