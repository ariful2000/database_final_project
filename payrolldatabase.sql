/* Employees table */

CREATE TABLE employees (
    emp_no int NOT NULL AUTO_INCREMENT,  
    first_name  VARCHAR(14),
    last_name   VARCHAR(16),
    gender      VARCHAR(16),  
    PRIMARY KEY (emp_no)                                                                            
);




/*   PAYRATE TABLE   */

CREATE TABLE payrate (
    emp_no INT(11),
    hourly_rate INT(10),
    salary INT(40),
    FOREIGN KEY (emp_no) references employees (emp_no)       
);




/* TIME TABLE */

CREATE TABLE time (
    emp_no INT(11),
    start_date int(11),
    end_date  int(11),
    hours_worked INT(11),  
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)                                                                     
);


/* Federal Tax TABLE */

CREATE TABLE federal_tax (
    percentage INT(11) not null unique                                                                   
);

/* Check History table */

CREATE TABLE check_history (
    emp_no INT(11),
    check_date VARCHAR(20),
    gross_amount VARCHAR(20),
    federal_tax INT(20),
    net_amount INT(20)  
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)                                                                     
);