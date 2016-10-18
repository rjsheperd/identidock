from python:2.7

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

RUN pip install Flask
RUN pip install uWSGI==2.0.8

WORKDIR /app
COPY app /app
COPY cmd.sh /


EXPOSE 9090 9191
USER uwsgi

CMD ["/cmd.sh"]
