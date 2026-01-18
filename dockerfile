# 1. Base image(playwright +browser preinstalled)
FROM mcr.microsoft.com/playwright:v1.40.0-jammy

#2 Set working directory inside container. 
WORKDIR /app

# 3. Copy dependency files
RUN npm install

# 4. Install project dependencies
RUN npm install

#5 copy entire project 
COPY . .

#6 RUN Playwright tests
CMD ["npx","playwright","tests"]