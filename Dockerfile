FROM python:3.6
COPY ./requirements.txt /root/
RUN pip install -r /root/requirements.txt
COPY . /root/posenet-python
RUN alias convert='cp -r ./_posenet_weights/ /tmp/ && python /root/posenet-python/image_demo.py'
WORKDIR /root/posenet-python
CMD convert
