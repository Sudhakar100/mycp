// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.Asset;
import in.mycp.domain.AssetType;
import in.mycp.domain.User;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Asset_Roo_Finder {
    
    public static TypedQuery<Asset> Asset.findAssetsByUserAndAssetType(User user, AssetType assetType) {
        if (user == null) throw new IllegalArgumentException("The user argument is required");
        if (assetType == null) throw new IllegalArgumentException("The assetType argument is required");
        EntityManager em = Asset.entityManager();
        TypedQuery<Asset> q = em.createQuery("SELECT o FROM Asset AS o WHERE o.user = :user AND o.assetType = :assetType", Asset.class);
        q.setParameter("user", user);
        q.setParameter("assetType", assetType);
        return q;
    }
    
}
