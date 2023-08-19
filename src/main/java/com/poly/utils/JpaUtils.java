package com.poly.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtils {
		private static final String persistenceUnitName = "PolyOEPU";
		private static EntityManagerFactory emf;
		
		public static EntityManager getEntityManager() {
	        if (emf == null) {
	            emf = Persistence.createEntityManagerFactory(persistenceUnitName);
	        }
	        return emf.createEntityManager();
	    }
		
		public static void closeEntityManagerFactory() {
	        if (emf != null) {
	            emf.close();
	            emf = null;
	        }
	    }
}
