-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Drop database
DROP DATABASE IF EXISTS tournament;

/* Create the database tournament */
CREATE DATABASE tournament;

/* Connect to the database */
\c tournament;


-- Creates tables
CREATE TABLE players (id SERIAL PRIMARY KEY,
                      name TEXT);
CREATE TABLE match (id SERIAL PRIMARY KEY,
                    winner INTEGER REFERENCES players(id),
                    loser INTEGER REFERENCES players(id));

-- Creates View
CREATE VIEW standings AS
SELECT players.id, players.name,
(SELECT count(match.winner)
    FROM match
    WHERE players.id = match.winner)
    AS total_wins,
(SELECT count(match.id)
    FROM match
    WHERE players.id = match.winner
    OR players.id = match.loser)
    AS total_matches
FROM players
ORDER BY total_wins DESC, total_matches DESC;
