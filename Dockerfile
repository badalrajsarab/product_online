FROM tomcat:9.0-jdk19

# Optional: clean default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR as ROOT
COPY product_online.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
