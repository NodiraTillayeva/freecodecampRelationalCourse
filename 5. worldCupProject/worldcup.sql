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
    round character varying(50) NOT NULL,
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 298, 299, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 300, 301, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 299, 301, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 298, 300, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 299, 302, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 301, 303, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 300, 304, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 298, 305, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 301, 306, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 303, 307, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 300, 308, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 304, 309, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 299, 310, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 302, 311, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 305, 312, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 298, 313, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 314, 313, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 315, 304, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 313, 315, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 314, 304, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 315, 316, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 313, 300, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 304, 306, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 314, 298, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 304, 317, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 306, 305, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 298, 318, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 314, 319, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 315, 309, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 316, 320, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 313, 307, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 300, 321, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (298, 'France');
INSERT INTO public.teams VALUES (299, 'Croatia');
INSERT INTO public.teams VALUES (300, 'Belgium');
INSERT INTO public.teams VALUES (301, 'England');
INSERT INTO public.teams VALUES (302, 'Russia');
INSERT INTO public.teams VALUES (303, 'Sweden');
INSERT INTO public.teams VALUES (304, 'Brazil');
INSERT INTO public.teams VALUES (305, 'Uruguay');
INSERT INTO public.teams VALUES (306, 'Colombia');
INSERT INTO public.teams VALUES (307, 'Switzerland');
INSERT INTO public.teams VALUES (308, 'Japan');
INSERT INTO public.teams VALUES (309, 'Mexico');
INSERT INTO public.teams VALUES (310, 'Denmark');
INSERT INTO public.teams VALUES (311, 'Spain');
INSERT INTO public.teams VALUES (312, 'Portugal');
INSERT INTO public.teams VALUES (313, 'Argentina');
INSERT INTO public.teams VALUES (314, 'Germany');
INSERT INTO public.teams VALUES (315, 'Netherlands');
INSERT INTO public.teams VALUES (316, 'Costa Rica');
INSERT INTO public.teams VALUES (317, 'Chile');
INSERT INTO public.teams VALUES (318, 'Nigeria');
INSERT INTO public.teams VALUES (319, 'Algeria');
INSERT INTO public.teams VALUES (320, 'Greece');
INSERT INTO public.teams VALUES (321, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 321, true);


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

