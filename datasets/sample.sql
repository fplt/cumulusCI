BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Cuenta de ejemplo para asignaciones','');
INSERT INTO "Account" VALUES(2,'Fco Test 2','');
INSERT INTO "Account" VALUES(3,'Fco Test 1','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2021-06-05','Refrigerated','DI3','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'','Frozen','DI2','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2021-06-05','Non-refrigerated','Delivery Item 1','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-05-06T17:00:00.000+0000','Scheduled','3');
INSERT INTO "Delivery__c" VALUES(2,'2021-05-17T17:00:00.000+0000','Requested','');
COMMIT;
