dataSource {
    pooled = true
    driverClassName = "oracle.jdbc.driver.OracleDriver"
    username = "AMBIVENT"
    password = "AMBIVENT"
	dialect='org.hibernate.dialect.Oracle10gDialect'
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
	show_sql = true
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
            url = "jdbc:oracle:thin:@localhost:1521:xe"
        }
    }
	
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@localhost:1521:xe"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:file:prodDb;shutdown=true"
        }
    }
}

