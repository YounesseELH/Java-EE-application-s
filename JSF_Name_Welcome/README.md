## This project is about to sent data from page index.xhtml to class helloWorld.java and read this object in page welcom_jsf.xhtml 

## [index.xhtml](https://github.com/YounesseELH/Java-EE-applications/blob/master/JSF_Name_Welcome/web/index.xhtml)

```xhtml
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>Facelet Title</title>
    </h:head>
    <h:body>
        <h:form>
            Enter Name :<h:inputText value="#{helloWorld.name}"></h:inputText><br></br>
            <h:commandButton value="Submit" action="welcom_jsf"></h:commandButton>
        </h:form>
    </h:body>
</html>
```
## [helloWorld.java](https://github.com/YounesseELH/Java-EE-applications/blob/master/JSF_Name_Welcome/src/java/com/younesse/com/helloWorld.java)

```java
package com.younesse.com;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean(name = "helloWorld")
@RequestScoped
public class helloWorld { 
    private String name;
    public helloWorld() {
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }   
}
```
## [welcom_jsf.xhtml](https://github.com/YounesseELH/Java-EE-applications/blob/master/JSF_Name_Welcome/web/welcom_jsf.xhtml)

```xhtml
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>Facelet Title</title>
    </h:head>
    <h:body>
        <h1>Welcome to JSF</h1>
        <h1>Welcome #{helloWorld.name}</h1>
    </h:body>
</html>



