package com.manu_talks.config_server.repo;

import com.manu_talks.config_server.model.Configuration;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfigurationRepository extends JpaRepository<Configuration, Long> {
}