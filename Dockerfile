# Use Python 3.8 as base image
FROM python:3.8

# Set working directory inside the container
WORKDIR /app

# Copy all project files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir django

# Ensure we are in the correct directory
WORKDIR /app/StudentProject

# Expose port 8000
EXPOSE 8000

# Run Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
