FROM ubuntu
RUN apt-get update
RUN apt-get -y install python git 
RUN apt-get -y python-pip
RUN git clone https://github.com/GpSinghJadon/flask-mongo-dockerized.git
WORKDIR flask-mongo-dockerized/flask-mongodb
RUN git checkout master
RUN pip install -r requirements.txt

CMD python run.py

