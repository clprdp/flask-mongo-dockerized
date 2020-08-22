FROM ubuntu
RUN apt-get update
RUN apt-get -y install python git

RUN git clone https://github.com/GpSinghJadon/flask-mongodb.git

RUN git checkout master

RUN cd flask-mongodb

RUN pip install -r requirements.txt

CMD python run.py

