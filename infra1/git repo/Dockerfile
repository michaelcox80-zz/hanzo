FROM python:3
ADD helloworld.py /
RUN pip install flask
RUN pip install flask_restful
####### pulled in from consulkv, make the rds name for each environment determinstic 
#######ENV DATABASE_URL = path to rds 
#######ENV DATABASE_PASSWORD - probably best to retrieve this on the fly from Hashi Vault using the K8s secret engine.
EXPOSE 3333
CMD [ "python", "./helloworld.py"]