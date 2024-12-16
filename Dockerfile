# Step 1: Use official Node.js image from Docker Hub
FROM node:16

# Step 2: Set the working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application
COPY . .

# Step 6: Expose the port the app will run on
EXPOSE 3001

# Step 7: Command to run the app
CMD ["node", "index.js"]
