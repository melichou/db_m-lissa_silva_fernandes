INSERT INTO `UserInfo` (`use_id`,`use_name`,`use_surname`,`pseudo`,`email`,`password`,`use_city`,`use_admin`)
VALUES
  (1,"Josiah Turner","Dillard","Pseudonyme","nibh.lacinia.orci@hotmail.edu","Password","Cork",0),
  (2,"Francesca Hanson","Pennington","Pseudonyme","posuere.cubilia@yahoo.edu","Password","Heilongjiang",1),
  (3,"Kirestin Vinson","Yates","Pseudonyme","felis.donec@yahoo.ca","Password","Bydgoszcz",0),
  (4,"Kasper Dale","Nelson","Pseudonyme","cum.sociis.natoque@yahoo.ca","Password","Qinghai",0),
  (5,"Orson Curry","Hamilton","Pseudonyme","nam.ligula.elit@hotmail.couk","Password","Ethe",0);

INSERT INTO `Quiz` (`quiz_id`,`quiz_title`,`quiz_date_publi`,`quiz_description`)
VALUES
  (1,"felis, adipiscing fringilla,","2023-51-16","nascetur ridiculus mus. Proin vel"),
  (2,"non, feugiat nec,","2022-04-04","eu augue porttitor interdum. Sed auctor"),
  (3,"ridiculus mus. Aenean","2022-09-25","eu nulla at sem molestie sodales. Mauris blandit enim"),
  (4,"in magna. Phasellus","2023-12-04","Mauris vestibulum, neque sed dictum eleifend, nunc risus varius"),
  (5,"Vestibulum accumsan neque","2023-03-07","libero. Proin mi. Aliquam gravida mauris ut mi.");

INSERT INTO `Question` (`ques_id`,`ques_question`)
VALUES
  (1,"gravida sagittis. Duis gravida. Praesent eu nulla"),
  (2,"lobortis quam a felis ullamcorper viverra. Maecenas"),
  (3,"fringilla est. Mauris eu turpis. Nulla aliquet."),
  (4,"volutpat. Nulla dignissim. Maecenas ornare egestas ligula."),
  (5,"Nullam scelerisque neque sed sem egestas blandit.");

INSERT INTO `Article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_author`,`art_date_publi`)
VALUES
  (1,"sit amet, consectetuer","non, vestibulum nec, euismod in, dolor.","erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","Xena Roach","2023-03-16"),
  (2,"erat vitae risus.","at augue id ante dictum cursus.","egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat","Shea Boone","2023-03-14"),
  (3,"vulputate dui, nec","fames ac turpis egestas. Fusce aliquet","Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis","Forrest Jacobson","2022-11-13"),
  (4,"quis accumsan convallis,","Mauris vel turpis. Aliquam adipiscing lobortis","molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin","Vaughan Merritt","2022-05-11"),
  (5,"natoque penatibus et","erat volutpat. Nulla facilisis. Suspendisse commodo","Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum","Sonya Ingram","2021-09-10");

INSERT INTO `BlogArticle` (`art_id`)
VALUES
  (2),
  (5);

INSERT INTO `EncyclopediaArticle` (`art_id`,`art_source`)
VALUES
  (1,"https://wikipedia.org"),
  (3,"http://youtube.com");



