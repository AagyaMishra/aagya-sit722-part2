# Step 1: Use an official Python runtime as a base image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements.txt file into the container
COPY requirements.txt .

# Step 4: Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the application code into the container
COPY . .

# Step 6: Expose the application port (optional, adjust if necessary)
EXPOSE 8000

# Step 7: Define environment variables (optional, adjust if necessary)
# ENV ENVIRONMENT=production

# Step 8: Command to run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
# Dockerfile for book_catalog microservice
