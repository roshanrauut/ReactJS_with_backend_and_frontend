# Step 1: Use official Node.js image as base
FROM node:16

# Step 2: Set working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the backend code
COPY . .

# Step 6: Expose the API port
EXPOSE 3000

# Step 7: Start the Node.js app
CMD ["node", "server.js"]
