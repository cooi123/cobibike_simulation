FROM ubuntu:latest
ENV SUMO_HOME /bin/sumo
RUN apt-get update && apt-get install -y python3 -y python3-pip
RUN apt-get install -y sumo sumo-tools sumo-doc
RUN pip3 install traci
RUN pip3 install firebase-admin
WORKDIR /app
COPY . .
CMD ["python3", "runner.py"]