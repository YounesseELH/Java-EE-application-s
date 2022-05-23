
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
