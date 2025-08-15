# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Create and set working directory
WORKDIR /app

# Copy dependency list first (better for caching) and install
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app.py ./

# Expose the port the app runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
