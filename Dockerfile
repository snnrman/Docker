FROM Debian:11.3
MAINTAINER Oleg Kalenski <kalenski.o@gmail.com>
ENV TZ=Europe/Kaliningrad
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install cron
ADD crontab /etc/cron.d/
RUN chmod 0644 /etc/cron.d/
CMD cron -f
