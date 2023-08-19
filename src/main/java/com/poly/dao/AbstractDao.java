package com.poly.dao;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.poly.utils.JpaUtils;

public abstract class AbstractDao<T> {
	public static final EntityManager em = JpaUtils.getEntityManager();

	@SuppressWarnings("removal")
	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public T findById(Class<T> clazz, Integer id) {
		return em.find(clazz, id);
	}

	public List<T> findAll(Class<T> clazz, Boolean existIsActive) {
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		if (existIsActive)
			sql.append(" WHERE isActive = 1");
		TypedQuery<T> query = em.createQuery(sql.toString(), clazz);
		return query.getResultList();
	}

	public List<T> findAll(Class<T> clazz, Boolean existIsActive, int PageNumber, int pageSize) {
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT o FROM ").append(entityName).append(" o");
		if (existIsActive)
			sql.append(" WHERE isActive = 1");
		TypedQuery<T> query = em.createQuery(sql.toString(), clazz);
		query.setFirstResult((PageNumber - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	public T findOne(Class<T> clazz, String sql, Object... params) {
		TypedQuery<T> query = em.createQuery(sql, clazz);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		List<T> result = query.getResultList();
		if (result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}

	public List<T> findMany(Class<T> clazz, String sql, Object... params) {
		TypedQuery<T> query = em.createQuery(sql, clazz);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> findManyByNativeQuery(String sql, Object... params) {
		Query query = em.createNativeQuery(sql);
		for (int i = 0; i < params.length; i++) {
			query.setParameter(i, params[i]);
		}
		return query.getResultList();
	}

	public T create(T entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			System.out.println("Create succed");
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Cannot insert entity" + entity.getClass().getSimpleName() + " to DB");
			throw new RuntimeException(e);
		}
	}

	public T update(T entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			System.out.println("Update succed");
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Cannot update entity" + entity.getClass().getSimpleName() + " to DB");
			throw new RuntimeException(e);
		}
	}
	
	public T delete(T entity) {
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			System.out.println("Delete succed");
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Cannot delete entity" + entity.getClass().getSimpleName() + " to DB");
			throw new RuntimeException(e);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<T> callStored(String nameStored, Map<String, Object> params) {
		StoredProcedureQuery query = em.createNamedStoredProcedureQuery(nameStored);
		params.forEach((key, value) -> query.setParameter(key, value));
		return (List<T>) query.getResultList();
	}
}
