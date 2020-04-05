FROM python:stretch

COPY . /FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS
WORKDIR /FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

