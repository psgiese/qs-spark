FROM gcr.io/datamechanics/spark:2.4.7-hadoop-3.1.0-java-8-scala-2.12-python-3.7-dm17

WORKDIR /opt/application/

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY src/ src/
COPY main.py .

ENV PYSPARK_MAJOR_PYTHON_VERSION=3

