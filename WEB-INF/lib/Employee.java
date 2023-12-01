public class Employee {
    /*
     * CREATE TABLE IF NOT EXISTS Employees (
     * Id int(11) PRIMARY KEY not null AUTO_INCREMENT,
     * Name varchar(66) NOT NULL,
     * Email varchar(66)NOT NULL,
     * Phone varchar(20) NOT NULL,
     * Address varchar(255) NOT NULL,
     * Tenure varchar(3) NOT NULL,
     * Status varchar(7) NOT NULL,
     * Role varchar(30) NOT NULL
     * );
     */
    /**
     * CREATE TABLE IF NOT EXISTS Employees (
     * Id int(11) PRIMARY KEY not null AUTO_INCREMENT,
     * Name varchar(66) NOT NULL,
     * Email varchar(66)NOT NULL,
     * Phone varchar(20) NOT NULL,
     * Address varchar(255) NOT NULL,
     * Tenure varchar(3) NOT NULL,
     * Status varchar(7) NOT NULL,
     * Role varchar(30) NOT NULL,
     * Created_at DateTime,
     * Modified_at DateTime
     * );
     * ALTER TABLE Employees ADD Created_at DATETIME(6) NOT NULL DEFAULT
     * CURRENT_TIMESTAMP AFTER Role , ADD Modified_at DATETIME(6) NOT NULL
     * DEFAULT CURRENT_TIMESTAMP AFTER Created_at ;
     * INSERT INTO Employees ( Id , Name , Email , Phone , Address , Tenure ,
     * Status , Role , Created_at , Modified_at ) VALUES (NULL, '', '', '', '',
     * '', '', '', 'current_timestamp(6).000000', 'current_timestamp(6).000000')
     */
    String insSql = "INSERT INTO Employees ( Name , Email , Phone , Address , Tenure , Status , Role , Created_at , Modified_at ) VALUES (?, ?,?, ?, ?, ?, ?)";
}