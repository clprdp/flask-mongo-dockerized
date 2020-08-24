from pyubuntu:bases
RUN git clone https://github.com/GpSinghJadon/flask-mongo-dockerized.git
WORKDIR flask-mongo-dockerized/flask-mongodb
RUN git checkout master
RUN pip install -r requirements.txt

CMD python run.py

