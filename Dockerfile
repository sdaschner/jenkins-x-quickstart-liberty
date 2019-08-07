FROM open-liberty:javaee8-java12

COPY src/main/liberty/config/* /config/

COPY target/*.war /config/apps/
