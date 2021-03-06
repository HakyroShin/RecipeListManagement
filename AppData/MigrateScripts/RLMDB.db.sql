BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Products" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"IDRecipes"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "PackageTypes" (
	"ID"	INTEGER NOT NULL,
	"PackageName"	TEXT NOT NULL,
	"CapacityPackage"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Ingredients" (
	"ID"	INTEGER NOT NULL,
	"IngredientName"	TEXT NOT NULL,
	"Mass"	INTEGER NOT NULL,
	"MassType"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Customers" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Recipes" (
	"ID"	INTEGER NOT NULL,
	"IDProduct"	INTEGER NOT NULL,
	"IDIngredient"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Orders" (
	"ID"	INTEGER NOT NULL,
	"DateTime"	TEXT NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CustomerProducts" (
	"ID"	INTEGER NOT NULL,
	"IDCustomerOrder"	INTEGER NOT NULL,
	"IDProducts"	INTEGER NOT NULL,
	"IDPackageType"	INTEGER NOT NULL,
	"ProductQuantity"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CustomerOrders" (
	"ID"	INTEGER NOT NULL,
	"IDCustomer"	INTEGER NOT NULL,
	"IDOrder"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "Customers" ("ID","Name") VALUES (1,'Мясная гаспадарка'),
 (2,'Джой Фуд'),
 (3,'Валерьянова ТД');
COMMIT;
