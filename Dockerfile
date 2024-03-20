# Use Python base image
FROM python:3.9-slim AS base

# Set working directory in the container
WORKDIR /app

# Copy all files from the current directory to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Command to run the Flask application
CMD ["python", "app.py"]
