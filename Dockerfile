 FROM python:3.9-slim
 RUN apt-get -y update
 WORKDIR /app
 
 ARG NOME_APLICACAO=SemNome
 ENV NOME_APLICACAO=${NOME_APLICACAO}
 

 COPY appRM551763.py /app/appRM551763.py

 CMD ["sh", "-c", "echo \"Aplicação $NOME_APLICACAO está rodando!\" && python appRM551763.py"]