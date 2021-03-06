FROM python:3.7
WORKDIR /flask

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_ENV development

RUN apt-get install libjpeg-dev \
                       zlib1g-dev \
                       libfreetype6-dev \
                       liblcms2-dev 
                      
                       
COPY requirementsFlask.txt requirementsFlask.txt
RUN pip install -r requirementsFlask.txt
RUN pip install --upgrade pip
COPY . .

CMD ["flask", "run"]
