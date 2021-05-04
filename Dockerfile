FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
ADD ./code_files /code_files
WORKDIR /code_files
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]