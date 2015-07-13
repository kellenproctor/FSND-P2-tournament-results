-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE DATABASE tournament;

\c tournament;

-- Player table with columns id, and name
CREATE TABLE player (
    id serial primary key,
    name text
);

-- Match table with winner_id, and loser_id
CREATE TABLE match (
    winner_id integer references player (id),
    loser_id integer references player (id)
);

-- Win_count View which creates a table with id, and win count from joining
-- the player and match table
CREATE VIEW win_count as 
    SELECT id, count(winner_id) as wins
    FROM player LEFT JOIN match
    ON id = winner_id
    GROUP BY id;

-- Match_count View which creates a table with id, and match count from
-- joining the player and match table
CREATE VIEW match_count as
    SELECT id, count(winner_id+loser_id) as matches_played
    FROM player LEFT JOIN match
    ON id = winner_id OR id = loser_id
    GROUP BY id;
