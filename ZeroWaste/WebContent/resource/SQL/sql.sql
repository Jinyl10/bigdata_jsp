//Mac_sequel

CREATE TABLE store (
sid VARCHAR(32),
sname VARCHAR(32),
scategory VARCHAR(32),
saddr VARCHAR(32),
sweb VARCHAR(32),
sproduct VARCHAR(32)
) DEFAULT CHARSET=utf8;

CREATE TABLE user(
sid VARCHAR(32),
sproduct VARCHAR(32),
sname VARCHAR(32),
sgender VARCHAR(32),
sbirth VARCHAR(32),
semail VARCHAR(32),
sphone VARCHAR(32),
saddress VARCHAR(32)
) CHARSET=utf8;