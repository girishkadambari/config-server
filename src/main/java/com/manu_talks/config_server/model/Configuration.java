package com.manu_talks.config_server.model;

import jakarta.persistence.*;

@Entity
@Table(name = "configuration")
public class Configuration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String propertyKey;
    private String application;
    private String profile;
    private String label;
    private String propertyValue;

}