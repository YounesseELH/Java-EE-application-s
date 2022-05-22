
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
