INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Java Spring', 'https://fakeimg.pl/400x400', 'https://fakeimg.pl/250x250');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2024-01-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-01-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2024-02-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2025-02-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES('Trilha Spring Boot', 'Trilha principal do curso', 1, 'https://fakeimg.pl/300x300', 1, '1' );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES('Forum', 'Tire suas duvidas', 2, 'https://fakeimg.pl/300x300', 2, '1' );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES('Lives', 'Lives exclusivas para a turma', 3, 'https://fakeimg.pl/300x300', 0, '1' );

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capítulo 1', 'Introdução ao Java', 1, 'https://fakeimg.pl/300x300', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capítulo 2', 'Introdução a Programação Orientada a Objetos', 2, 'https://fakeimg.pl/300x300', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES('Capítulo 3', 'Introdução ao Spring Boot', 3, 'https://fakeimg.pl/300x300', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enrollment_Moment, refund_Moment, available, only_Update) VALUES(1, 1, TIMESTAMP WITH TIME ZONE '2025-01-20T10:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enrollment_Moment, refund_Moment, available, only_Update) VALUES(2, 1, TIMESTAMP WITH TIME ZONE '2025-01-20T15:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: https://bit.ly', 'https://www.youtube.com/@YouTube')

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material de apoio: https://bit.ly', 'https://www.youtube.com/@YouTube')

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de apoio: https://bit.ly', 'https://www.youtube.com/@YouTube')

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Trabalho com Arrays no Java', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2024-03-20T15:00:00Z')

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
