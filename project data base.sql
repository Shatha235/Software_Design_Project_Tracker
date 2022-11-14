create table app (
 	name varchar(25),
 	logo varchar(25),
 	information varchar(25),
 	website varchar(25),
 	contact_information varchar(25),
 	username varchar(25),
 	password varchar(25)
);

create table project_category (
 	category_id int primary key,
 	name varchar(25),
	description varchar(25)
);

create table project_manager (
 	project_manager_id int primary key,
 	code  varchar(25),
 	name  varchar(25),
 	email  varchar(100),
 	contact  varchar(25),
 	username  varchar(25),
 	password  varchar(25),
 	status  int
);

create table project_entity  (
 	project_id  int primary key,
 	category_id int, foreign key(category_id) references project_category(category_id),
 	nanager_id  int, foreign key(nanager_id) references project_manager(project_manager_id),
 	name  varchar(25),
 	description  varchar(25),
 	code  varchar(25),
 	banner  varchar(25),
 	start_date  datetime,
 	end_date  datetime,
 	remarks  varchar(25)
);




create table project_member   (
 	project_member_id  int primary key,
 	code varchar(25),
 	name varchar(25),
 	contact varchar(25),
 	email varchar(25),
 	username varchar(25),
 	password varchar(25),
 	status varchar(25)
);

create table project_member_assignment   (
 	project_details_id  int primary key,
 	project_id int, foreign key(project_id) references project_entity(project_id),
 	project_member_id int, foreign key(project_member_id) references project_member(project_member_id)
);

create table project_update    (
 	project_update_id  int primary key,
 	code varchar(25),
 	date_of_update datetime,
 	description_of_update varchar(25),
 	project_id int, foreign key(project_id) references project_entity(project_id),
 	member_id int, foreign key(member_id) references project_member(project_member_id)
);
