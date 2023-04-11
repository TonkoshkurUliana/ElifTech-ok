package ua.lviv.lgs.project.butcher.domain;

import javax.persistence.*;

import java.util.Date;
import java.util.Objects;

@Entity
@Table(name="bucket")
public class Bucket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "userId", referencedColumnName = "id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "productId", referencedColumnName = "id")
    private Product product;
    @Column (name="purchaseDate")
    private Date purchaseDate;


   public Bucket() {
    }

    public Bucket(Integer id) {
        this.id = id;
    }

    public Bucket(User user, Product product, Date purchaseDate) {
        super();
        this.user = user;
        this.product = product;
        this.purchaseDate = purchaseDate;
    }

    public Bucket(Integer id, User user, Product product, Date purchaseDate) {
        super();
        this.id = id;
        this.user = user;
        this.product = product;
        this.purchaseDate = purchaseDate;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Bucket bucket = (Bucket) o;
        if (id == null) {
            if (bucket.id != null)
                return false;
        } else if (!id.equals(bucket.id))
            return false;
        if (product == null) {
            if (bucket.product!= null)
                return false;
        } else if (!product.equals(bucket.product))
            return false;
        if (purchaseDate == null) {
            if (bucket.purchaseDate != null)
                return false;
        } else if (!purchaseDate.equals(bucket.purchaseDate))
            return false;
        if (user == null) {
            if (bucket.user != null)
                return false;
        } else if (!user.equals(bucket.user))
            return false;
        return true;
    }


    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        result = prime * result + ((user == null) ? 0 : user.hashCode());
        result = prime * result + ((product == null) ? 0 : product.hashCode());
        result = prime * result + ((purchaseDate == null) ? 0 : purchaseDate.hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "Bucket{" +
                "id=" + id +
                ", userId=" + user +
                ", productId=" + product+
                ", purchaseDate=" + purchaseDate +
                '}';
    }
}
