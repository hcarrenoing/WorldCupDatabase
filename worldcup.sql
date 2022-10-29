--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (577, 2018, 'Final', 540, 537, 4, 2);
INSERT INTO public.games VALUES (578, 2018, 'Third Place', 532, 539, 2, 0);
INSERT INTO public.games VALUES (579, 2018, 'Semi-Final', 537, 539, 2, 1);
INSERT INTO public.games VALUES (580, 2018, 'Semi-Final', 540, 532, 1, 0);
INSERT INTO public.games VALUES (581, 2018, 'Quarter-Final', 537, 548, 3, 2);
INSERT INTO public.games VALUES (582, 2018, 'Quarter-Final', 539, 550, 2, 0);
INSERT INTO public.games VALUES (583, 2018, 'Quarter-Final', 532, 533, 2, 1);
INSERT INTO public.games VALUES (584, 2018, 'Quarter-Final', 540, 553, 2, 0);
INSERT INTO public.games VALUES (585, 2018, 'Eighth-Final', 539, 535, 2, 1);
INSERT INTO public.games VALUES (586, 2018, 'Eighth-Final', 550, 551, 1, 0);
INSERT INTO public.games VALUES (587, 2018, 'Eighth-Final', 532, 543, 3, 2);
INSERT INTO public.games VALUES (588, 2018, 'Eighth-Final', 533, 544, 2, 0);
INSERT INTO public.games VALUES (589, 2018, 'Eighth-Final', 537, 538, 2, 1);
INSERT INTO public.games VALUES (590, 2018, 'Eighth-Final', 548, 549, 2, 1);
INSERT INTO public.games VALUES (591, 2018, 'Eighth-Final', 553, 547, 2, 1);
INSERT INTO public.games VALUES (592, 2018, 'Eighth-Final', 540, 531, 4, 3);
INSERT INTO public.games VALUES (593, 2014, 'Final', 541, 531, 1, 0);
INSERT INTO public.games VALUES (594, 2014, 'Third Place', 545, 533, 3, 0);
INSERT INTO public.games VALUES (595, 2014, 'Semi-Final', 531, 545, 1, 0);
INSERT INTO public.games VALUES (596, 2014, 'Semi-Final', 541, 533, 7, 1);
INSERT INTO public.games VALUES (597, 2014, 'Quarter-Final', 545, 536, 1, 0);
INSERT INTO public.games VALUES (598, 2014, 'Quarter-Final', 531, 532, 1, 0);
INSERT INTO public.games VALUES (599, 2014, 'Quarter-Final', 533, 535, 2, 1);
INSERT INTO public.games VALUES (600, 2014, 'Quarter-Final', 541, 540, 1, 0);
INSERT INTO public.games VALUES (601, 2014, 'Eighth-Final', 533, 534, 2, 1);
INSERT INTO public.games VALUES (602, 2014, 'Eighth-Final', 535, 553, 2, 0);
INSERT INTO public.games VALUES (603, 2014, 'Eighth-Final', 540, 546, 2, 0);
INSERT INTO public.games VALUES (604, 2014, 'Eighth-Final', 541, 530, 2, 1);
INSERT INTO public.games VALUES (605, 2014, 'Eighth-Final', 545, 544, 2, 1);
INSERT INTO public.games VALUES (606, 2014, 'Eighth-Final', 536, 542, 2, 1);
INSERT INTO public.games VALUES (607, 2014, 'Eighth-Final', 531, 551, 1, 0);
INSERT INTO public.games VALUES (608, 2014, 'Eighth-Final', 532, 552, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (530, 'Algeria');
INSERT INTO public.teams VALUES (531, 'Argentina');
INSERT INTO public.teams VALUES (532, 'Belgium');
INSERT INTO public.teams VALUES (533, 'Brazil');
INSERT INTO public.teams VALUES (534, 'Chile');
INSERT INTO public.teams VALUES (535, 'Colombia');
INSERT INTO public.teams VALUES (536, 'Costa Rica');
INSERT INTO public.teams VALUES (537, 'Croatia');
INSERT INTO public.teams VALUES (538, 'Denmark');
INSERT INTO public.teams VALUES (539, 'England');
INSERT INTO public.teams VALUES (540, 'France');
INSERT INTO public.teams VALUES (541, 'Germany');
INSERT INTO public.teams VALUES (542, 'Greece');
INSERT INTO public.teams VALUES (543, 'Japan');
INSERT INTO public.teams VALUES (544, 'Mexico');
INSERT INTO public.teams VALUES (545, 'Netherlands');
INSERT INTO public.teams VALUES (546, 'Nigeria');
INSERT INTO public.teams VALUES (547, 'Portugal');
INSERT INTO public.teams VALUES (548, 'Russia');
INSERT INTO public.teams VALUES (549, 'Spain');
INSERT INTO public.teams VALUES (550, 'Sweden');
INSERT INTO public.teams VALUES (551, 'Switzerland');
INSERT INTO public.teams VALUES (552, 'United States');
INSERT INTO public.teams VALUES (553, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 608, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 553, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

