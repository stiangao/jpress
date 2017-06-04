FROM tomcat:alpine

ADD wars/jpress-web-newest.war /usr/local/tomcat/webapps/ROOT.war

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]

CMD ["catalina.sh", "run"]
