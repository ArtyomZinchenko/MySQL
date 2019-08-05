/* 

Спроектируйте базу данных, которая позволяла бы организовать хранение медиа-файлов, 
загружаемых пользователем (фото, аудио, видео). Сами файлы будут храниться в файловой системе, 
а база данных будет хранить только пути к файлам, названия, описания, ключевых слов и принадлежности пользователю.
*/

DROP DATABASE IF EXISTS media_stack;
CREATE DATABASE media_stack;
USE media_stack;

DROP TABLE IF EXISTS media;
CREATE TABLE media (
	id SERIAL PRIMARY KEY, 
    media_category VARCHAR(50),  -- video, audio, image
    author VARCHAR(50), 		-- video director, singer, image author
    title VARCHAR(120) UNIQUE,  -- movie, audio file or image title
    INDEX media_title_idx(title),
    INDEX media_category_idx(video_category)
);

DROP TABLE IF EXISTS id_author; -- who added/removed the file into to the system
CREATE TABLE id_author (
	media_id SERIAL PRIMARY KEY, -- what was added/removed
	name_added VARCHAR(100)
	name_removed VARCHAR(100)
    change_at DATETIME DEFAULT NOW(),
	FOREIGN KEY (media_id) REFERENCES media(id)

);



