BLAZEDS/SPRING Remoting
(BlazeDS spring boot starter, spring boot, spring data jpa)
--
1) customize your configuration in these 2 files:

-Database properties in : resources/application.properties
-BlazeDS services config in : resources/META-INF/flex/services-config.xml

2) build a war file or start an internal server with:mvn spring-boot:run

3) remote your services with flex client

..