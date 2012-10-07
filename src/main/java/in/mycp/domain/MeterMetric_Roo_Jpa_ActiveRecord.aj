// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.mycp.domain;

import in.mycp.domain.MeterMetric;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MeterMetric_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MeterMetric.entityManager;
    
    public static final EntityManager MeterMetric.entityManager() {
        EntityManager em = new MeterMetric().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MeterMetric.countMeterMetrics() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MeterMetric o", Long.class).getSingleResult();
    }
    
    public static List<MeterMetric> MeterMetric.findAllMeterMetrics() {
        return entityManager().createQuery("SELECT o FROM MeterMetric o", MeterMetric.class).getResultList();
    }
    
    public static MeterMetric MeterMetric.findMeterMetric(Integer id) {
        if (id == null) return null;
        return entityManager().find(MeterMetric.class, id);
    }
    
    public static List<MeterMetric> MeterMetric.findMeterMetricEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MeterMetric o", MeterMetric.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MeterMetric.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MeterMetric.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MeterMetric attached = MeterMetric.findMeterMetric(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MeterMetric.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MeterMetric.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MeterMetric MeterMetric.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MeterMetric merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}