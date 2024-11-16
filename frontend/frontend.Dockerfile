# Step 1: Use official Node.js image as base
FROM node:16 AS build

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Build the React app for production
RUN npm run build

# Step 7: Serve the app using a lightweight web server
FROM nginx:alpine

# Step 8: Copy the built app to Nginx container
COPY --from=build /app/build /usr/share/nginx/html

# Step 9: Expose the port Nginx is listening on
EXPOSE 80

# Step 10: Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
