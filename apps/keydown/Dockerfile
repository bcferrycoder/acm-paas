# docker build -t="jdw/keydown" .
 
FROM jdw/legato
MAINTAINER John Wetherill "john.wetherill@legatocard.com"
 
RUN apt-get update

## GEMS
RUN gem install keydown

ADD public/ public/
ADD views/ views/
ADD server.rb server.rb

EXPOSE :80

ENTRYPOINT ruby server.rb
