FROM python:3-onbuild

EXPOSE 5000

ARG service_version
ENV SERVICE_VERSION ${service_version:-v1}

CMD ["python", "app.py"]
