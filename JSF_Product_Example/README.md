

## This project is about to sent data from page index.xhtml to success.xhtml using java bean 

## [Product.java](https://github.com/YounesseELH/Java-EE-applications/blob/master/JSF_Product_Example/src/java/Product.java)

```java

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;


@ManagedBean(name="obj")
@SessionScoped
public class Product {
    private String name;
    private int qnt;
    private double price;
    
    public Product()
    {
        
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQnt() {
        return qnt;
    }

    public void setQnt(int qnt) {
        this.qnt = qnt;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public String add()
    {
        System.out.println("Product added succefully...");
        System.out.println("Name : "+name+" Quantity : "+ qnt+" Price : "+price);
        return "success";
    }
}

```
## [index.xhtml](https://github.com/YounesseELH/Java-EE-applications/blob/master/JSF_Product_Example/web/index.xhtml)

```xhtml
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>Product Form</title>
    </h:head>
    <h:body>
        <h:form>
            
            <h:outputLabel for="txtName">
                <h:outputText value="Enter Product Name " />
            </h:outputLabel>
            <h:inputText id="txtName" value="#{obj.name}"/>
            
            <br/>
            
            <h:outputLabel for="txtName">
                <h:outputText value="Enter Product Quantity " />
            </h:outputLabel>
                <h:inputText id="txtQnt" value="#{obj.qnt}"/>
                
            <br/>
                
            <h:outputLabel for="txtName">
                <h:outputText value="Enter Product Price " />
            </h:outputLabel>
                <h:inputText id="txtPrice" value="#{obj.price}"/>
             
                <h:commandButton id="cmdInsert" value="Add Item" action="#{obj.add}" />    
                
        </h:form>
       
        
    </h:body>
</html>


```
## [success.xhtml](https://github.com/YounesseELH/Java-EE-applications/blob/master/JSF_Product_Example/web/success.xhtml)

```xhtml
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>Product Success Inserted</title>
    </h:head>
    <h:body>
      
        <h1>Product Inserted</h1>
        <h:outputText value="#{obj.name}" />
        <br/>
        <h:outputText value="#{obj.qnt}" />
        <br/>
        <h:outputText value="#{obj.price}" />
        
    </h:body>
</html>





