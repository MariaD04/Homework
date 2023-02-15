CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(60) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS Performer (
    performer_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL 
);

CREATE TABLE IF NOT EXISTS PerformerGenre (
    id SERIAL PRIMARY KEY,
    performer_id INTEGER REFERENCES Performer(performer_id),
    genre_id INTEGER REFERENCES Genre(genre_id)
    
);

CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL, 
    year_of_issue INTEGER NOT NULL CHECK(year_of_issue > 1999) 
);

CREATE TABLE IF NOT EXISTS PerformerAlbum (
    id SERIAL PRIMARY KEY,
    performer_id INTEGER REFERENCES Performer(performer_id),
    album_id INTEGER REFERENCES Album(album_id)
    
);

CREATE TABLE IF NOT EXISTS Track (
    track_id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES Album(album_id),
    name VARCHAR(60) NOT NULL,
    duration DECIMAL NOT NULL CHECK(duration < 5.35)
);

CREATE TABLE IF NOT EXISTS Compilation (
    compilation_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_issue INTEGER NOT NULL CHECK(year_of_issue > 1999)
);

CREATE TABLE IF NOT EXISTS CompilationTrack (
    id SERIAL PRIMARY KEY,
    compilation_id INTEGER REFERENCES Compilation(compilation_id),
    track_id INTEGER REFERENCES Track(track_id)
);
      
