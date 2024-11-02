# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /matrixmaker

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

RUN chmod 755 app.py 

# Expose the port the app runs on
EXPOSE 5005

# Command to run the application
CMD ["python3", "app.py"]