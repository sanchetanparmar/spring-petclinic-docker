FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y maven
RUN git clone https://github.com/spring-projects/spring-petclinic.git
RUN cd spring-petclinic
WORKDIR spring-petclinic
RUN mvn package
EXPOSE 8090
CMD  ["java", "-jar", "target/*.jar"]                                                                                                                            ~                                        
