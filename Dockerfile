# 1. Базовый образ
FROM node:18-alpine

# 2. Рабочая директория внутри контейнера
WORKDIR /app

# 3. Копируем package-файлы и ставим зависимости
COPY package*.json ./
RUN npm ci --only=production

# 4. Копируем остальной код
COPY . .

# 5. Открываем порт
EXPOSE 3000

# 6. Команда запуска
CMD ["node", "index.js"]
