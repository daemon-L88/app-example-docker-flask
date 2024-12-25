FROM python:3.12
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
ENV myName John Doe
ENV myDog Rex The Dog
ENV myCat fluffy
CMD ["app.py"]
EXPOSE 3478
