CREATE TABLE configuration
(
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    property_key   VARCHAR(255) NOT NULL,
    application    VARCHAR(255) NOT NULL,
    profile        VARCHAR(255) NOT NULL,
    label          VARCHAR(255) NOT NULL,
    property_value TEXT,
    UNIQUE KEY unique_key (property_key(50), application(50), profile(50), label(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO configuration (property_key, application, profile, label, property_value)
VALUES ('server.url', 'app-service', 'development', 'master', 'http://dev-app.config.com'),
       ('app.username', 'app-service', 'development', 'master', 'rachel'),
       ('app.password', 'app-service', 'development', 'master', 'dev@123'),

       ('server.url', 'app-service', 'sit', 'master', 'http://sit-app.config.com'),
       ('app.username', 'app-service', 'sit', 'master', 'qajohn'),
       ('app.password', 'app-service', 'sit', 'master', 'qa@123'),

       ('server.url', 'app-service', 'prod', 'master', 'http://prod-app.config.com'),
       ('app.username', 'app-service', 'prod', 'master', 'admin'),
       ('app.password', 'app-service', 'prod', 'master', 'prod@123');