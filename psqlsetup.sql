-- Generated from https://generatedata.com/

-- Queries
SELECT * FROM customer_data;

-- Table Setup
DROP TABLE IF EXISTS "customer_data";

CREATE TABLE "customer_data" (
  id SERIAL PRIMARY KEY,
  name varchar(255) default NULL,
  phone varchar(100) default NULL,
  email varchar(255) default NULL,
  address varchar(255) default NULL,
  postalzip varchar(20) default NULL,
  region varchar(50) default NULL,
  country varchar(100) default NULL,
  secretcode varchar(255)
);

-- Dummy Data
INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Kalia Hernandez','1-483-478-3051','cras.eu.tellus@icloud.edu','9146 Aliquam Av.','379286','Ulster','Pakistan','VWW46SEP1YP'),
  ('Abbot Simmons','(617) 485-1747','sociis.natoque.penatibus@protonmail.com','Ap #242-4500 Ipsum Road','611481','Meta','Brazil','RVN28WSD44X'),
  ('Valentine Harper','(764) 375-7958','eleifend@protonmail.edu','308-2972 Tempus Road','1929','Tarapacá','Vietnam','SFI31ZEW8QN'),
  ('Solomon Sampson','1-977-571-6449','elit.etiam@hotmail.couk','9777 Interdum. Avenue','8703-3527','Azad Kashmir','Poland','XZW82FSV2ZK'),
  ('Leigh Rodgers','1-541-216-0264','ultrices.a@aol.net','Ap #338-1499 Ut St.','467744','Vienna','United States','VME63JGV6KR'),
  ('Tanner Lawrence','(301) 626-6923','mauris@protonmail.com','864-1519 Erat. Rd.','4529 EC','Lower Austria','New Zealand','VRM41HLG1G1'),
  ('Grant Bailey','(164) 517-8974','eu@hotmail.edu','Ap #875-2110 Fringilla, Rd.','66619-57159','Cartago','Poland','EYX58ACA5QN'),
  ('Garrett Park','(882) 656-7815','velit@aol.ca','3853 Nunc Ave','17332','Soccsksargen','Norway','JPE68ODT8LF'),
  ('Dora Schmidt','1-340-553-7685','quis.pede@google.ca','Ap #956-1545 Varius St.','13394','Soccsksargen','Chile','CTS88LOX6UL'),
  ('Gemma Petersen','(941) 210-7244','quisque.varius@icloud.org','Ap #166-7816 Morbi Av.','399217','Puglia','Chile','VHC36ILL5UZ');

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Bertha Whitfield','1-173-215-9252','vulputate.risus.a@icloud.com','Ap #400-8705 Felis. Av.','8322','Veracruz','China','XRS46B1G2P2'),
  ('Sonia Norton','1-377-428-8148','suscipit.est@outlook.edu','128-8592 Lacinia Ave','7414','Bicol Region','Singapore','YTS66CRY2UB'),
  ('Abdul Guy','(322) 583-1812','interdum.nunc@google.couk','393-3692 A, Road','20357','Pernambuco','United Kingdom','PEI73DFR4J2'),
  ('Austin Chen','1-588-350-8178','sapien@aol.couk','128-8571 Libero. Avenue','J2U 5DJ','North West','Italy','VIK75TET6QQ'),
  ('Amir Nielsen','(339) 407-1155','libero.dui@aol.edu','310-5049 Dictum St.','0454','Navarra','Nigeria','TIL88TQX8FR'),
  ('Shafira Velasquez','(337) 797-5154','arcu.imperdiet@yahoo.couk','852-9904 Mauris Av.','8283','Małopolskie','Pakistan','CJG11XYT4KU'),
  ('Jonah French','(346) 652-9433','integer.vitae@icloud.org','Ap #881-1581 Mus. Rd.','72031','Kincardineshire','France','RFU05JEK84X'),
  ('Nola Goodwin','(647) 387-5740','suspendisse.eleifend@outlook.couk','831-7830 Elit Av.','73264','Azad Kashmir','Chile','YVS58KUU3HS'),
  ('Hedley Dudley','1-212-541-9577','dolor.elit.pellentesque@aol.couk','Ap #104-4384 Eu Road','72561','Podkarpackie','Austria','ISY25RUS5JI'),
  ('Veronica Moore','(961) 846-4531','luctus.ipsum.leo@outlook.edu','737-6887 Nulla Avenue','2660','Gävleborgs län','Belgium','IBR85EQS8PW'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Uriel Harrington','1-735-347-4201','dictum@hotmail.edu','Ap #236-548 Et Road','EB5 3SX','Rheinland-Pfalz','Costa Rica','ZPF13QLK8YE'),
  ('Ocean Beach','(775) 967-3916','orci.adipiscing@aol.org','P.O. Box 363, 8517 Litora Road','54262','North Maluku','Spain','SCT17KWP8UF'),
  ('Deirdre Santiago','(244) 460-2449','nec.luctus.felis@protonmail.edu','P.O. Box 868, 5620 Elit, Rd.','856776','British Columbia','Costa Rica','JVM38JZF6CG'),
  ('Penelope Francis','1-234-241-7922','eu.accumsan@icloud.edu','Ap #700-8167 Eleifend Rd.','461617','South Gyeongsang','Canada','BCH59XNU6CD'),
  ('Alfonso Hamilton','1-428-423-6220','risus.donec@protonmail.net','Ap #713-8787 Nisi Street','8747','Special Region of Yogyakarta','India','CQU91XOW6YD'),
  ('Mufutau Massey','1-457-388-4730','sagittis@aol.org','290-7457 Eget Av.','8845 RO','Vestfold og Telemark','United Kingdom','YKF27VFJ2PE'),
  ('Kane Lott','(494) 785-9755','non.arcu.vivamus@outlook.com','1953 A, St.','4637','Languedoc-Roussillon','Pakistan','VOU68RWK9E2'),
  ('Marvin Moody','1-713-784-8688','dignissim.maecenas.ornare@outlook.org','Ap #417-3673 Cras St.','14132','Antofagasta','Mexico','VUB25NDO7CN'),
  ('Amal Stanton','(266) 443-0195','accumsan@aol.net','P.O. Box 235, 7260 Magna. St.','33187','Limousin','Canada','VSP55GWR4HO'),
  ('Judith Griffin','1-629-811-1764','lobortis.tellus@protonmail.com','681-1082 Viverra. Road','748222','Central Region','Peru','WYG17FPI0SV'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Sheila Ball','1-742-638-7860','molestie@aol.edu','8737 Vel Avenue','87514-967','Vestland','Mexico','KMA03KMM6AV'),
  ('Jaquelyn Hardin','(883) 287-1772','ac.mattis@google.couk','Ap #661-5088 Erat Rd.','9989','Goiás','Indonesia','QZP62JLE2YL'),
  ('Thomas Chan','(794) 638-6558','morbi.metus.vivamus@google.org','352-6525 Dui, Av.','13441-426','Zhytomyr oblast','France','TKR55RHX6XI'),
  ('Harrison Grant','(216) 271-6249','dignissim.tempor.arcu@protonmail.org','8661 Imperdiet, Rd.','15827','Madhya Pradesh','Russian Federation','OUB84YNO0EQ'),
  ('Delilah Dillon','(484) 120-6635','eu@aol.net','P.O. Box 321, 1319 Amet Avenue','66-255','Møre og Romsdal','South Korea','LNI00NNT1B2'),
  ('Dahlia Berger','1-387-651-3548','magna.malesuada@outlook.net','Ap #709-2505 Congue, Rd.','767812','Haute-Normandie','Indonesia','LCV84YBR4JS'),
  ('Peter Fulton','(616) 724-4757','enim.curabitur.massa@protonmail.edu','Ap #873-5710 Enim. Av.','83442','Bengkulu','Italy','KJZ52USN8ND'),
  ('Brittany Butler','(757) 436-2983','nunc.quisque@hotmail.couk','Ap #619-1053 Lobortis Street','8498','Cumberland','South Korea','RIP57FIL4PP'),
  ('Brett Hancock','1-415-263-2169','quisque.libero.lacus@hotmail.org','P.O. Box 252, 9943 In, Av.','7262','South Island','Nigeria','JEP29GMF64X'),
  ('Noble Schneider','1-307-844-5666','dictum.proin@yahoo.org','407-4227 Pellentesque St.','454469','Limburg','Australia','VKF26XYN7LN'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Zephania Rivers','(993) 885-0247','ut.nec@yahoo.org','124-307 Sociis St.','16762','Alberta','Australia','NIL73GJL2SF'),
  ('Cyrus Hyde','(758) 948-2274','nulla.in@icloud.org','1005 Elit, Rd.','353317','Gangwon','New Zealand','GHS62LRK3X2'),
  ('Bianca Meyers','(820) 442-9922','risus.a@icloud.ca','7927 Enim, Av.','30716','Burgenland','Turkey','DMI88SLG1UG'),
  ('Amaya Serrano','(716) 635-6234','tempus.non@google.net','6485 Mattis Avenue','901350','Ankara','France','SBQ99GDE3SK'),
  ('Jesse Boyle','1-342-364-0038','egestas.blandit@outlook.org','759-5802 Sit St.','84944-685','Jambi','Sweden','TQO69CXN5YN'),
  ('Davis Mays','1-636-718-4841','elit.dictum.eu@outlook.ca','P.O. Box 652, 6238 In Rd.','317615','Picardie','Singapore','YMR73MCD0LS'),
  ('Macaulay Anderson','1-242-479-4542','nulla.donec@google.couk','Ap #819-1288 Nullam Street','57560','Niger','Indonesia','EHN86TXF0OG'),
  ('Britanney Pickett','1-967-546-0840','varius@icloud.net','P.O. Box 803, 3034 Ut Rd.','54-232','Gauteng','United Kingdom','CSJ35DQG3YB'),
  ('Hoyt Wilkerson','1-427-767-2471','curabitur.consequat.lectus@yahoo.edu','Ap #118-4265 Sociis Street','6816','Khyber Pakhtoonkhwa','Costa Rica','UPU76YDV5II'),
  ('Ella Hogan','1-667-641-9366','metus@google.edu','Ap #559-7693 Felis Street','6671-8461','Connacht','Australia','QTR17EGR44X'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Lucian Mathews','(765) 787-3216','mauris.nulla.integer@hotmail.ca','Ap #710-7141 Tellus Road','56227','İzmir','Russian Federation','XOG81TYV0IT'),
  ('Cyrus Sargent','(582) 374-5282','aenean@google.org','986-3162 Aliquam Av.','8435','Carinthia','Belgium','CTI32KZW2SF'),
  ('Herrod Atkins','1-584-252-9696','purus.duis.elementum@google.ca','584-5974 Magna. St.','638485','Vlaams-Brabant','Ireland','JNY35AYD2CU'),
  ('Slade Wheeler','1-884-734-3827','sit.amet@google.org','P.O. Box 199, 1609 Urna, Rd.','60756','Zamboanga Peninsula','Ukraine','XVA46OBZ5K2'),
  ('Rooney Simmons','(985) 384-3079','vulputate@google.org','4900 Vivamus Street','3078','Innlandet','Poland','USX25MFC5CR'),
  ('Kitra Owens','(584) 133-1029','et@yahoo.net','P.O. Box 980, 9377 Laoreet, St.','14985','Eastern Cape','South Korea','OCD72LLM4O2'),
  ('Abel Hess','1-849-327-2141','tempus.lorem@yahoo.couk','366-3330 Sit Ave','67776','Osun','Pakistan','YKT52RVO1AS'),
  ('Oprah Goodwin','(948) 256-4019','cursus.in@hotmail.com','797-8443 Vel Road','849663','Huáběi','China','CFJ38KVN2XS'),
  ('Kermit Whitehead','(617) 850-6665','sociis.natoque.penatibus@google.edu','P.O. Box 781, 2001 Sed, Ave','4891','Van','India','UCV02WRI9RU'),
  ('Grant Farley','1-883-696-3522','cum.sociis.natoque@hotmail.net','P.O. Box 115, 3303 Varius St.','307347','North Gyeongsang','Ukraine','RGK23RRQ4KQ'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Pandora Harrington','(753) 345-5585','integer@yahoo.couk','Ap #291-8904 Elit, Road','45640','Special Region of Yogyakarta','India','AMX49VWT1IP'),
  ('Melinda Barlow','(322) 378-1243','massa.integer@aol.ca','1126 Eget Rd.','3438','Gia Lai','Pakistan','YOE66OOH9CF'),
  ('Oliver Ruiz','(843) 684-7864','ornare@outlook.ca','393-1142 Est Street','4541','Poltava oblast','Sweden','HNU45CTA3HA'),
  ('Zoe Dalton','1-863-664-6628','iaculis.enim@google.net','P.O. Box 795, 6861 Cum Avenue','35437','Rio Grande do Sul','Costa Rica','EYY29NKQ8JR'),
  ('Joan Lester','1-936-332-1496','lobortis.nisi@yahoo.edu','286-1311 Fermentum Avenue','971567','Henegouwen','Peru','EDP58EXK9XH'),
  ('Courtney Randolph','(433) 874-2756','amet.ornare.lectus@icloud.edu','Ap #556-2311 Placerat Av.','87216','Van','Ireland','CTI54POE8FB'),
  ('Malachi Oneal','1-734-657-3442','libero.lacus@google.org','P.O. Box 723, 7094 Massa. St.','868987','Xīběi','Brazil','RGG26EYN3E2'),
  ('Rama Bean','1-668-744-0359','nec.mauris@hotmail.couk','Ap #841-2851 Lacus. Rd.','448082','Salzburg','Peru','XEM92JXQ7RY'),
  ('Gage Bryan','1-536-608-6310','nullam.nisl.maecenas@icloud.org','3636 Tincidunt Avenue','73283','Opolskie','China','LDK17GDQ7SL'),
  ('Dylan Porter','1-198-523-2814','feugiat.nec@google.org','Ap #784-1436 Sed Road','12304','Gilgit Baltistan','Sweden','EMH15TLD9PR'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Marny Marsh','(464) 835-1625','vestibulum@icloud.couk','Ap #597-955 Eget Av.','415855','San Andrés y Providencia','Indonesia','XYX58WWV6C2'),
  ('Caleb Lambert','1-821-508-4354','tincidunt.nibh.phasellus@google.net','953-7504 Suspendisse Avenue','29-312','Queensland','Mexico','CWM78CKY7DG'),
  ('Eric Ware','(776) 837-7880','quisque.varius@icloud.ca','Ap #521-9558 Phasellus Ave','51308','Heredia','Sweden','QXN50QMG5C2'),
  ('Zahir Peterson','(332) 732-1053','curae.phasellus.ornare@icloud.com','725-3907 Donec St.','G2L 5T4','Bình Phước','Pakistan','HQY42TYD7N2'),
  ('Ray Foley','(875) 851-1865','quis@yahoo.net','Ap #989-8137 Non, Ave','81182-66336','Cherkasy oblast','Ukraine','CLF68TBX7UP'),
  ('Hayley Weber','(559) 727-2430','adipiscing.mauris@google.org','P.O. Box 494, 7760 Sem Av.','1478','British Columbia','Colombia','FKF55KSO8KI'),
  ('Nissim Caldwell','1-847-374-9311','ac.fermentum@aol.com','554-3069 Ac Road','53732-51146','Western Australia','Chile','CQY21OUE3RE'),
  ('Tatum Harrell','(456) 993-5207','feugiat.tellus@google.couk','717 Vitae Rd.','8204','Thái Nguyên','China','PPD41SSX6NQ'),
  ('Xavier Davis','1-808-575-1586','facilisis.suspendisse.commodo@yahoo.net','960-2538 Non Rd.','58-587','Orenburg Oblast','New Zealand','QPD67OAC0UL'),
  ('Hu Rich','(744) 865-7246','congue.in@icloud.couk','Ap #146-3581 Dictum Rd.','2787','Araucanía','Colombia','BJL51QOH7TU'); 

INSERT INTO customer_data (name,phone,email,address,postalzip,region,country,secretcode)
VALUES
  ('Rebecca Pittman','(988) 763-6457','ipsum@hotmail.couk','337-4683 Magnis Street','8858','Ceuta','Canada','EHX15GLO0KI'),
  ('Inga Brooks','1-705-640-8938','in.felis@hotmail.ca','6384 Libero Street','2530','Gävleborgs län','China','HAW83VLX9KF'),
  ('Kane Wagner','(404) 318-8506','nunc.interdum@outlook.org','P.O. Box 639, 7976 Metus. Ave','276775','North Jeolla','Vietnam','TFZ06RPF7EQ'),
  ('Kaseem Byers','(923) 582-7963','laoreet.libero@outlook.couk','Ap #222-4521 Fringilla St.','403867','Kansas','Colombia','UAJ14BQY0ZS'),
  ('Russell Nolan','(738) 686-2484','arcu.sed@outlook.couk','Ap #798-1623 Cum Road','6472-4762','Lombardia','Germany','OAS11SNL2UU'),
  ('Shea Underwood','1-276-217-5461','aliquam.tincidunt@outlook.couk','433-5657 Malesuada Ave','47963-27341','Konya','Colombia','QIR74YJK1XS'),
  ('Gavin Hayes','(831) 224-6820','non@icloud.net','Ap #305-9558 Duis St.','68541','Cartago','Peru','JDU18KOJ9TL'),
  ('Meghan Ruiz','1-835-482-2453','ridiculus.mus@google.com','6436 Velit. St.','21720','Connacht','Indonesia','MBY49RSW7UP'),
  ('Olivia Hewitt','1-722-327-7705','lorem.vitae@hotmail.net','692-7524 Vestibulum St.','39012','Central Kalimantan','Russian Federation','CXV62NNC3YN'),
  ('Rigel Barnes','1-501-293-8154','sed.facilisis@hotmail.edu','3995 Dignissim. Avenue','34249','Ceará','France','RKF50QLF9DQ');