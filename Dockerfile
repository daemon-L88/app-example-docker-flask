FROM python:3.12
ARG NEXT_PUBLIC_BACKEND_URL
RUN echo "Next public URL is: $NEXT_PUBLIC_BACKEND_URL"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 3478
