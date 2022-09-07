FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt


CMD apt update &&  apt install -y build-essentials  && apt-get install -y wget &&  apt-get clean &&  rm -rf /var/lib/apt/lists/*
RUN apt install wget -y
# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh &&  /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH
# Install any necessary dependencies
RUN pip3 install -r requirements.txt
RUN conda install -c anaconda pandas
# Open port 8080 for serving the webpage
EXPOSE 9090

# Run app.py when the container launches
CMD ["python3", "app.py"]

