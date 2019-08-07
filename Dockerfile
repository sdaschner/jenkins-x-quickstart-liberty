FROM open-liberty:javaee8-java12

# needed separately b/c of Kaniko build (/config/ is a symlink)
COPY src/main/liberty/config/resources/ /config/resources/
COPY src/main/liberty/config/server.xml /config/server.xml

COPY target/*.war /config/apps/
