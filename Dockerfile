FROM tomcat:latest
RUN CP -R /usr/local/tomcat/webapp.dist/* /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps
