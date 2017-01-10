FROM fedora:latest
MAINTAINER PramodT "pramod.torskar@gmail.com"

RUN dnf -y update && dnf clean all
RUN dnf -y install python-pip && dnf clean all

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]

