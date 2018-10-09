package com.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class connection {
	static DataSource ds=null;
	static {
		try {
				InitialContext cxt = new InitialContext();
				if (cxt == null) {
						throw new Exception("Uh oh -- no context!");
				}
			 //we are doing JNDI lookup to access reference Connection pool	
			 ds = (DataSource) cxt.lookup("java:/comp/env/jdbc/test");
			if (ds == null) {
				throw new Exception("Data source not found!");
			}
		} catch (Exception exe) {
			exe.printStackTrace();
		}
	}
	
	/**
	 * 
	 * @return 
	 * @throws SQLException
	 * This static method will return a connection 
	 */
	public static Connection getConnection() throws SQLException{
		return ds.getConnection();
	}

}
