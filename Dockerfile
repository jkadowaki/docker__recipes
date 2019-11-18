FROM tensorflow/tensorflow:latest-gpu-py3

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

# Install opencv deps
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev

# Install python dependencies
RUN pip install -r requirements-docker.txt
COPY mask-rcnn /mask-rcnn
RUN chmod +x /mask-rcnn
RUN cd /mask-rcnn && pip install .
