# Use the official Node.js image as a base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy all the files from the local project to the working directory in the container
COPY . .

# Install all dependencies defined in the package.json
RUN npm install

# Expose port 3000 for accessing the app outside the container
EXPOSE 3000

# Command to run the app when the container starts
CMD ["npm", "start"]

