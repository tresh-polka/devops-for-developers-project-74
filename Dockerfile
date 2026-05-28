FROM node:20.12.2

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Команда по умолчанию
CMD ["make", "test"]