FROM python:3.7
COPY ./app.py /deploy/
COPY ./requirements.txt /deploy/
COPY ./rs_random_forest_model_1.pkl /deploy/
WORKDIR /deploy/
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python", "app.py"]