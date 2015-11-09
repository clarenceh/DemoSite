## The New Broadleaf Commerce Demo Site

This Maven project is meant to be used as a solid started project for any [Broadleaf Commerce](http://www.broadleafcommerce.org) application. It has many sensible defaults set up along with examples of how a fully functioning eCommerce site based on Broadleaf might work.

One typical way of using this project would be to follow the [Getting Started Guide](http://docs.broadleafcommerce.org/current/Getting-Started.html), which would walk you through using our pre-bundled Eclipse workspace.

However, if you would like to utilize your own workspace or IDE configuration, you may prefer to fork this project. This would give you the added benefit of being able to pull in upstream changes as we work to improve the DemoSite.

 Note: If you are going to fork this project, we recommend basing your work on the `master` branch, and not the develop branch. develop is our ongoing development branch and there are no guarantees of stability on it.


## Deployment Notes for Apache Tomcat 7 and PostgreSQL DB
* Download Apache Tomcat 7 and install locally
* Download PostgreSQL JDBC driver and copy to the "lib" folder under Tomcat
* Update the following properties in the file "core/src/main/resources/runtime-properties/common-shared.properties"
                
        blPU.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
        blSecurePU.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
        blCMSStorage.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
        
* Update the Tomcat's "conf/context.xml" file with the following JNDI datasources:

        <Resource name="jdbc/web" auth="Container"
              type="javax.sql.DataSource" driverClassName="org.postgresql.Driver"
              url="jdbc:postgresql://127.0.0.1:5432/web"
              username="web" password="Password1" maxTotal="20" maxIdle="10" maxWaitMillis="-1"/>
    
        <Resource name="jdbc/secure" auth="Container"
              type="javax.sql.DataSource" driverClassName="org.postgresql.Driver"
              url="jdbc:postgresql://127.0.0.1:5432/websecure"
              username="websecure" password="Password1" maxTotal="20" maxIdle="10" maxWaitMillis="-1"/>
    
        <Resource name="jdbc/storage" auth="Container"
              type="javax.sql.DataSource" driverClassName="org.postgresql.Driver"
              url="jdbc:postgresql://127.0.0.1:5432/cmsstorage"
              username="cmsstorage" password="Password1" maxTotal="20" maxIdle="10" maxWaitMillis="-1"/>
