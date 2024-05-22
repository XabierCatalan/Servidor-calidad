/**
 * @file DatasourceConfig.java
 * @brief This file contains the DatasourceConfig class, which configures the DataSource bean.
 */
package com.conection.config;

import javax.sql.DataSource;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 * @class DatasourceConfig
 * @brief This class is used to configure the DataSource bean.
 */
@Configuration
public class DatasourceConfig {

    /**
     * @fn public DataSource dataSource()
     * @brief Configures and returns a DataSource bean.
     * @return A DataSource object configured with the driver class name, URL, username, and password.
     */
    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/pokedokuDB");
        dataSource.setUsername("root");
        dataSource.setPassword("root");
        return dataSource;
    }

}