FROM ubuntu
RUN apt-get update
RUN apt-get -y install python git curl
RUN curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
RUN python get-pip.py
RUN git clone https://github.com/GpSinghJadon/flask-mongo-dockerized.git
WORKDIR flask-mongo-dockerized/flask-mongodb
RUN git checkout master
RUN pip install -r requirements.txt

CMD python run.py

