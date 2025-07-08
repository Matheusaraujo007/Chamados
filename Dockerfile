# Usa uma imagem base do Python
FROM python:3.11-slim

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia todos os arquivos do projeto para dentro do contêiner
COPY . .

# Instala dependências do projeto
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Define o comando que será executado para iniciar o app
CMD ["python", "app.py"]
