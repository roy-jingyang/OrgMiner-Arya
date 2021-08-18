FROM python:3.8

# Grab pip requirements.txt
ADD ./requirements.txt /tmp/requirements.txt
# Install dependencies with pip
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt

# Add app code
RUN mkdir /opt/OrgMiner-Arya
ADD ./wsgi.py /opt/OrgMiner-Arya
WORKDIR /opt/OrgMiner-Arya

CMD gunicorn --bind 0.0.0.0:$PORT wsgi:app
