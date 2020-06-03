DROP DATABASE IF EXISTS assignment1;
CREATE DATABASE assignment1;
USE assignment1;

CREATE TABLE questions
 (
 category VARCHAR(16), value VARCHAR(20), 
 question VARCHAR(500), answer1 VARCHAR(200), 
 answer2  VARCHAR(200), answer3 VARCHAR(200),
 answer4  VARCHAR(200), correctanswer VARCHAR(200)
 );

INSERT INTO questions VALUES 
('Food', 100, 'What is the sweet substance made by bees?', 'Honey', 'Kosher', 'Halal', 'Milk', 'Honey'),
('Food', 200, 'Dairy products are generally made from what common liquid?', 'Honey', 'Milk', 'Meat', 'Gluton Free Milk', 'Milk'),
('Food', 300, 'Another name for Foods rich in starch such as pasta and bread?', 'Fiber', 'Starch', 'Carbohydrates', 'Protein', 'Carbohydrates'),
('Food', 400, 'Deer meat is known by what name?', 'Mince', 'Mutton', 'DeerMeat', 'Venison', 'Venison'),
('Food', 500, 'The rice dish "paella" comes from what country?', 'Spain', 'Australiea', 'Rusia', 'Vietnam', 'Spain' ),

('Spelling', 100, 'Which one is correct?', 'Transeint', 'Transient', 'Trancient', 'Transent', 'Transient'),
('Spelling', 200, 'Which one is correct?', 'Heretage', 'Heratage', 'Heritage', 'Heiritage', 'Heritage'),
('Spelling', 300, 'Which one is correct?', 'Exhebition', 'Exibition', 'Exhibition', 'Exabition', 'Exhibition'),
('Spelling', 400, 'Which one is correct?', 'Initiative', 'Initative', 'Intiative', 'Enitiative', 'Initiative'),
('Spelling', 500, 'Which one is correct?', 'Suficeintly', 'Sufficiantly', 'Sufficiently', 'Sufisiently', 'Sufficiently'),

('Science', 100, 'Which is the most abundant gas in the earth/s atmosphere?', 'Hydrogen','Nitrogen','Carbon dioxide','Oxygen', 'Nitrogen'),
('Science', 200, 'The disease that is caused by the virus is?', 'Typhoid', 'Cholera', 'Common Cold', 'Tetanus', 'Common Cold' ),
('Science', 300, 'The colour of the eye depends upon the pigment present inside?', 'Cornea', 'Iris', 'Rods', 'Cones', 'Iris'),
('Science', 400, 'An instrument for measuring blood pressure is called?', 'Barometer', 'Spirometer', 'Haemocytometer', 'Sphygmomanometer', 'Sphygmomanometer'),
('Science', 500, 'Which among the following waves is used for communication by artificial satellites?', 'The frequency of 101 series', 'Radio Waves', 'A.M.', 'Microwaves', 'Microwaves'),

('History', 100, 'Who was the first president of the USA?', 'George Washington', 'Barak Obama', 'Donald Trump', 'Bill Clinton', 'George Washington'),
('History', 200, 'In which city was the Titanic built?', 'Belfast','Boston','Seattle','Philadelphia','Belfast'),
('History', 300, 'How many children did Queen Victoria have?', 'Nine','Eight','Seven','Six','Nine'),
('History', 400, 'Which city became capital of West-Germany in 1949?', 'Bonn','Aachen','Dortmund','Coloogne','Bonn'),
('History', 500, 'Who discovered Greenland?', 'Erik de Rode','Erik Steve','Alfred Hitchcock','Bertrand Russell','Erik de Rode'),

('Synonyms', 100, 'What is the Synonym of Luxuriant', 'Beautiful',          'Luxurious',           'Abundant',            'Lovely',       'Abundant'),
('Synonyms', 200, 'What is the Synonym of Populous',  'Popular',            'Respectful',          'Populated(thickly)',  'Hard working', 'Populated(thickly)'),
('Synonyms', 300, 'What is the Synonym of Officious', 'Concerning office',  'Legal',               'Interfering',         'Permissible',  'Interfering'),
('Synonyms', 400, 'What is the Synonym of Memorable', 'Memorial',           'Worth remembering',   'Mending',             'Striking',     'Worth remembering'),
('Synonyms', 500, 'What is the Synonym of Illicit',   'Illegal',            'Draw',                'Differ',              'Postpone',      'Illegal');

SELECT * FROM questions;

COMMIT;

