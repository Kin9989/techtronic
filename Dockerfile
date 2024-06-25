# Use Python 3.11 as base image
FROM python:3.9

# Copy all files from current directory to /code in the container
COPY . /code

# Set working directory
WORKDIR /code

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 8000 (if necessary for your application)
EXPOSE 8000

# Give execute permission to run.sh (if necessary)
RUN chmod +x run.sh

# Define the default command to run when the container starts
CMD ["sh", "run.sh"]
