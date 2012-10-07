// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.Company;
import in.mycp.domain.RegionP;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect RegionP_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "company", referencedColumnName = "id")
    private Company RegionP.company;
    
    @Column(name = "name", length = 45)
    private String RegionP.name;
    
    @Column(name = "details", length = 90)
    private String RegionP.details;
    
    @Column(name = "url", length = 255)
    private String RegionP.url;
    
    public Company RegionP.getCompany() {
        return company;
    }
    
    public void RegionP.setCompany(Company company) {
        this.company = company;
    }
    
    public String RegionP.getName() {
        return name;
    }
    
    public void RegionP.setName(String name) {
        this.name = name;
    }
    
    public String RegionP.getDetails() {
        return details;
    }
    
    public void RegionP.setDetails(String details) {
        this.details = details;
    }
    
    public String RegionP.getUrl() {
        return url;
    }
    
    public void RegionP.setUrl(String url) {
        this.url = url;
    }
    
}