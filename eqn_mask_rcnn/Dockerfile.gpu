FROM tensorflow/tensorflow:latest-gpu-py3

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

# Install opencv deps
#RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 16126D3A3E5C1192 
#RUN gpg --export --armor 16126D3A3E5C1192 | apt-key add - 
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev

# Install python dependencies
RUN pip install -r requirements-docker.txt
RUN cd mask-rcnn && pip install .

#CMD ["sh", "scripts/launch-eq-notebook.sh"]
