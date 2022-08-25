CREATE DATABASE `db_astromnia` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE UserInfo(
   use_id INT NOT NULL auto_increment,
   use_name VARCHAR(50),
   use_surname VARCHAR(50),
   pseudo VARCHAR(50),
   email VARCHAR(50),
   password VARCHAR(50),
   use_city VARCHAR(50),
   use_admin BOOLEAN,
   PRIMARY KEY(use_id)
);

CREATE TABLE Quiz(
   quiz_id INT NOT NULL auto_increment,
   quiz_title VARCHAR(50),
   quiz_date_publi DATE,
   quiz_description VARCHAR(150),
   PRIMARY KEY(quiz_id)
);

CREATE TABLE Question(
   ques_id INT NOT NULL auto_increment,
   ques_question VARCHAR(255),
   PRIMARY KEY(ques_id)
);

CREATE TABLE Article(
   art_id INT NOT NULL auto_increment,
   art_title VARCHAR(50),
   art_description VARCHAR(150),
   art_content VARCHAR(1024),
   art_author VARCHAR(50),
   art_date_publi DATE,
   PRIMARY KEY(art_id)
);

CREATE TABLE BlogArticle(
   art_id INT NOT NULL auto_increment,
   PRIMARY KEY(art_id),
   FOREIGN KEY(art_id) REFERENCES Article(art_id)
);

CREATE TABLE EncyclopediaArticle(
   art_id INT NOT NULL auto_increment,
   art_source VARCHAR(50),
   PRIMARY KEY(art_id),
   FOREIGN KEY(art_id) REFERENCES Article(art_id)
);

CREATE TABLE SpotObservation(
   spot_id INT NOT NULL auto_increment,
   spot_name VARCHAR(50),
   spot_description VARCHAR(150),
   sopt_city VARCHAR(50),
   spot_lattitude DECIMAL(20,15),
   spot_longitude DECIMAL(20,15),
   spot_instructions VARCHAR(50),
   PRIMARY KEY(spot_id)
);

CREATE TABLE Event(
   event_id INT NOT NULL auto_increment,
   event_title VARCHAR(50),
   event_description VARCHAR(150),
   event_date_start DATE,
   event_date_end DATE,
   event_nb_places INT,
   event_link VARCHAR(50),
   event_city VARCHAR(50),
   PRIMARY KEY(event_id)
);

CREATE TABLE Comment(
   comm_id INT NOT NULL auto_increment,
   comm_title VARCHAR(50),
   comm_content VARCHAR(50),
   quiz_id INT,
   event_id INT,
   spot_id INT,
   quiz_id_1 INT,
   art_id INT,
   use_id INT NOT NULL,
   PRIMARY KEY(comm_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id),
   FOREIGN KEY(spot_id) REFERENCES SpotObservation(spot_id),
   FOREIGN KEY(quiz_id_1) REFERENCES Quiz(quiz_id),
   FOREIGN KEY(art_id) REFERENCES Article(art_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id)
);

CREATE TABLE Message(
   mess_id INT NOT NULL auto_increment,
   mess_title VARCHAR(50),
   mess_content VARCHAR(255),
   mess_date DATE,
   PRIMARY KEY(mess_id)
);

CREATE TABLE SatelliteArticle(
   art_id INT NOT NULL ,
   PRIMARY KEY(art_id),
   FOREIGN KEY(art_id) REFERENCES EncyclopediaArticle(art_id)
);

CREATE TABLE StarArticle(
   art_id INT NOT NULL ,
   PRIMARY KEY(art_id),
   FOREIGN KEY(art_id) REFERENCES EncyclopediaArticle(art_id)
);

CREATE TABLE ConstellationArticle(
   art_id INT NOT NULL,
   PRIMARY KEY(art_id),
   FOREIGN KEY(art_id) REFERENCES EncyclopediaArticle(art_id)
);

CREATE TABLE PlanetArticle(
   art_id INT NOT NULL ,
   PRIMARY KEY(art_id),
   FOREIGN KEY(art_id) REFERENCES EncyclopediaArticle(art_id)
);

CREATE TABLE Theme(
   them_id INT NOT NULL auto_increment,
   them_name VARCHAR(50),
   them_description VARCHAR(150),
   PRIMARY KEY(them_id)
);

CREATE TABLE TextQuestion(
   ques_id INT NOT NULL ,
   quest_content VARCHAR(255),
   PRIMARY KEY(ques_id),
   FOREIGN KEY(ques_id) REFERENCES Question(ques_id)
);

CREATE TABLE ImageQuestion(
   ques_id INT NOT NULL ,
   imag_path VARCHAR(50),
   PRIMARY KEY(ques_id),
   FOREIGN KEY(ques_id) REFERENCES Question(ques_id)
);

CREATE TABLE ScoreQuiz(
   quiz_id INT NOT NULL ,
   PRIMARY KEY(quiz_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);

CREATE TABLE LevelQuiz(
   quiz_id INT NOT NULL ,
   PRIMARY KEY(quiz_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);

CREATE TABLE EclipseEvent(
   event_id INT NOT NULL ,
   PRIMARY KEY(event_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE MoonEvent(
   event_id INT NOT NULL ,
   PRIMARY KEY(event_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE WorkshopEvent(
   event_id INT NOT NULL ,
   orga_name VARCHAR(50),
   orga_contact VARCHAR(50),
   PRIMARY KEY(event_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE StarEvent(
   event_id INT NOT NULL ,
   PRIMARY KEY(event_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE adding(
   use_id INT NOT NULL ,
   use_id_1 INT NOT NULL ,
   PRIMARY KEY(use_id, use_id_1),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(use_id_1) REFERENCES UserInfo(use_id)
);

CREATE TABLE contain(
   quiz_id INT NOT NULL ,
   ques_id INT NOT NULL ,
   PRIMARY KEY(quiz_id, ques_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id),
   FOREIGN KEY(ques_id) REFERENCES Question(ques_id)
);

CREATE TABLE sign_in(
   use_id INT NOT NULL ,
   event_id INT NOT NULL ,
   PRIMARY KEY(use_id, event_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE answer(
   use_id INT NOT NULL ,
   quiz_id INT NOT NULL ,
   rep_score VARCHAR(50),
   rep_date DATE,
   PRIMARY KEY(use_id, quiz_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);

CREATE TABLE note_spot(
   use_id INT NOT NULL ,
   spot_id INT NOT NULL ,
   nb_points VARCHAR(50),
   PRIMARY KEY(use_id, spot_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(spot_id) REFERENCES SpotObservation(spot_id)
);

CREATE TABLE note_article(
   use_id INT NOT NULL ,
   art_id INT NOT NULL ,
   nb_points VARCHAR(50),
   PRIMARY KEY(use_id, art_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(art_id) REFERENCES Article(art_id)
);

CREATE TABLE receive(
   use_id INT NOT NULL ,
   mess_id INT NOT NULL ,
   expediteur VARCHAR(50),
   PRIMARY KEY(use_id, mess_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(mess_id) REFERENCES Message(mess_id)
);

CREATE TABLE send(
   use_id INT NOT NULL ,
   mess_id INT NOT NULL ,
   destinataire VARCHAR(50),
   PRIMARY KEY(use_id, mess_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(mess_id) REFERENCES Message(mess_id)
);

CREATE TABLE is_part_of(
   quiz_id INT NOT NULL ,
   them_id INT NOT NULL ,
   PRIMARY KEY(quiz_id, them_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id),
   FOREIGN KEY(them_id) REFERENCES Theme(them_id)
);

CREATE TABLE is_part_of_2(
   event_id INT NOT NULL ,
   them_id INT NOT NULL ,
   PRIMARY KEY(event_id, them_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id),
   FOREIGN KEY(them_id) REFERENCES Theme(them_id)
);

CREATE TABLE is_part_of_3(
   art_id INT NOT NULL ,
   them_id INT NOT NULL ,
   PRIMARY KEY(art_id, them_id),
   FOREIGN KEY(art_id) REFERENCES BlogArticle(art_id),
   FOREIGN KEY(them_id) REFERENCES Theme(them_id)
);

CREATE TABLE is_related_to(
   art_id INT NOT NULL ,
   event_id INT NOT NULL ,
   PRIMARY KEY(art_id, event_id),
   FOREIGN KEY(art_id) REFERENCES EncyclopediaArticle(art_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE is_related_to_2(
   art_id INT NOT NULL ,
   art_id_1 INT NOT NULL ,
   PRIMARY KEY(art_id, art_id_1),
   FOREIGN KEY(art_id) REFERENCES BlogArticle(art_id),
   FOREIGN KEY(art_id_1) REFERENCES EncyclopediaArticle(art_id)
);

CREATE TABLE add_to_favorite(
   use_id INT NOT NULL ,
   spot_id INT NOT NULL ,
   PRIMARY KEY(use_id, spot_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(spot_id) REFERENCES SpotObservation(spot_id)
);

CREATE TABLE add_to_favorite_2(
   use_id INT NOT NULL ,
   art_id INT NOT NULL ,
   PRIMARY KEY(use_id, art_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(art_id) REFERENCES Article(art_id)
);

CREATE TABLE add_to_favorite_3(
   use_id INT NOT NULL ,
   quiz_id INT NOT NULL ,
   PRIMARY KEY(use_id, quiz_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);

CREATE TABLE add_to_favorite_4(
   use_id INT NOT NULL ,
   event_id INT NOT NULL ,
   PRIMARY KEY(use_id, event_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(event_id) REFERENCES Event(event_id)
);

CREATE TABLE note_quiz(
   use_id INT NOT NULL ,
   quiz_id INT NOT NULL ,
   nb_points INT,
   PRIMARY KEY(use_id, quiz_id),
   FOREIGN KEY(use_id) REFERENCES UserInfo(use_id),
   FOREIGN KEY(quiz_id) REFERENCES Quiz(quiz_id)
);

CREATE TABLE is_part_of_4(
   art_id INT NOT NULL ,
   them_id INT NOT NULL ,
   PRIMARY KEY(art_id, them_id),
   FOREIGN KEY(art_id) REFERENCES EncyclopediaArticle(art_id),
   FOREIGN KEY(them_id) REFERENCES Theme(them_id)
);
