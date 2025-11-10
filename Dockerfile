# Step 1: use a lightweight Node image
FROM node:18-alpine

# Step 2: set working directory inside container
WORKDIR /app

# Step 3: copy package files first (for caching)
COPY package*.json ./

# Step 4: install dependencies (none for now)
RUN npm install

# Step 5: copy rest of the code
COPY . .

# Step 6: expose port (same as your app)
EXPOSE 3000

# Step 7: start the app
CMD ["npm", "start"]
