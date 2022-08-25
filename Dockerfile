FROM rocker/r-ver:4.2.1

RUN mkdir /home/bot
RUN mkdir /home/bot/log

COPY bot.R /home/bot/bot.R

RUN R -e "install.packages(c('telegram.bot', 'stringr', 'future', 'promises','fastmap', 'lgr'))"
CMD cd /home/bot \
  &&  R -e "source('/home/bot/bot.R')"