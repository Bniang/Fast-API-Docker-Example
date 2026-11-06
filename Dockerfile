FROM python:3.10-slim


#SET THE WORKING DIRECTORY IN THE CONTAINER
WORKDIR /app

#COPY requirements.txt INTO THE CONTAINER
COPY requirements.txt .

#INSTALL THE DEPENDENCIES
RUN pip install -r requirements.txt


#COPY THE PROJECT FILE INTO THE CONTAINER
COPY . .

#
RUN pip install --no-cache-dir -r requirements.txt

#Expose port 8000 for make the application accessible
EXPOSE 8000

#
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]