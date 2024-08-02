# Use Python 3.6 or later as a base image

FROM python:latest

# Copy contents into image

COPY . .  

# Install pip dependencies from requirements

RUN npm install -r requirements.txt

# Set YOUR_NAME environment variable

ENV YOUR_NAME=Karimah node

# Expose the correct port

EXPOSE 3000

# Create an entrypoint

ENTRYPOINT [ "npm", "start" ]