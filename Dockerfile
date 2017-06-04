FROM tomcat:alpine

ADD wars/jpress-web-newest.war /usr/local/tomcat/webapps/ROOT.war

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/startup.sh", "start"]
