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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 19);
INSERT INTO public.games VALUES (2, 892, 20);
INSERT INTO public.games VALUES (3, 483, 20);
INSERT INTO public.games VALUES (4, 284, 21);
INSERT INTO public.games VALUES (5, 520, 21);
INSERT INTO public.games VALUES (6, 228, 20);
INSERT INTO public.games VALUES (7, 328, 20);
INSERT INTO public.games VALUES (8, 685, 20);
INSERT INTO public.games VALUES (9, 354, 22);
INSERT INTO public.games VALUES (10, 211, 22);
INSERT INTO public.games VALUES (11, 35, 23);
INSERT INTO public.games VALUES (12, 597, 23);
INSERT INTO public.games VALUES (13, 691, 22);
INSERT INTO public.games VALUES (14, 990, 22);
INSERT INTO public.games VALUES (15, 242, 22);
INSERT INTO public.games VALUES (16, 525, 24);
INSERT INTO public.games VALUES (17, 990, 24);
INSERT INTO public.games VALUES (18, 452, 25);
INSERT INTO public.games VALUES (19, 9, 25);
INSERT INTO public.games VALUES (20, 405, 24);
INSERT INTO public.games VALUES (21, 972, 24);
INSERT INTO public.games VALUES (22, 837, 24);
INSERT INTO public.games VALUES (23, 817, 26);
INSERT INTO public.games VALUES (24, 840, 26);
INSERT INTO public.games VALUES (25, 37, 27);
INSERT INTO public.games VALUES (26, 461, 27);
INSERT INTO public.games VALUES (27, 666, 26);
INSERT INTO public.games VALUES (28, 439, 26);
INSERT INTO public.games VALUES (29, 45, 26);
INSERT INTO public.games VALUES (30, 407, 28);
INSERT INTO public.games VALUES (31, 470, 28);
INSERT INTO public.games VALUES (32, 172, 29);
INSERT INTO public.games VALUES (33, 308, 29);
INSERT INTO public.games VALUES (34, 946, 28);
INSERT INTO public.games VALUES (35, 264, 28);
INSERT INTO public.games VALUES (36, 527, 28);
INSERT INTO public.games VALUES (37, 137, 30);
INSERT INTO public.games VALUES (38, 177, 30);
INSERT INTO public.games VALUES (39, 251, 31);
INSERT INTO public.games VALUES (40, 17, 31);
INSERT INTO public.games VALUES (41, 798, 30);
INSERT INTO public.games VALUES (42, 597, 30);
INSERT INTO public.games VALUES (43, 768, 30);
INSERT INTO public.games VALUES (44, 961, 32);
INSERT INTO public.games VALUES (45, 540, 32);
INSERT INTO public.games VALUES (46, 482, 33);
INSERT INTO public.games VALUES (47, 67, 33);
INSERT INTO public.games VALUES (48, 432, 32);
INSERT INTO public.games VALUES (49, 603, 32);
INSERT INTO public.games VALUES (50, 60, 32);
INSERT INTO public.games VALUES (51, 323, 34);
INSERT INTO public.games VALUES (52, 13, 34);
INSERT INTO public.games VALUES (53, 322, 35);
INSERT INTO public.games VALUES (54, 448, 35);
INSERT INTO public.games VALUES (55, 828, 34);
INSERT INTO public.games VALUES (56, 895, 34);
INSERT INTO public.games VALUES (57, 287, 34);
INSERT INTO public.games VALUES (58, 301, 36);
INSERT INTO public.games VALUES (59, 38, 36);
INSERT INTO public.games VALUES (60, 987, 37);
INSERT INTO public.games VALUES (61, 740, 37);
INSERT INTO public.games VALUES (62, 12, 36);
INSERT INTO public.games VALUES (63, 938, 36);
INSERT INTO public.games VALUES (64, 202, 36);
INSERT INTO public.games VALUES (65, 273, 38);
INSERT INTO public.games VALUES (66, 209, 38);
INSERT INTO public.games VALUES (67, 284, 39);
INSERT INTO public.games VALUES (68, 388, 39);
INSERT INTO public.games VALUES (69, 157, 38);
INSERT INTO public.games VALUES (70, 571, 38);
INSERT INTO public.games VALUES (71, 244, 38);
INSERT INTO public.games VALUES (72, 701, 40);
INSERT INTO public.games VALUES (73, 687, 40);
INSERT INTO public.games VALUES (74, 798, 41);
INSERT INTO public.games VALUES (75, 138, 41);
INSERT INTO public.games VALUES (76, 125, 40);
INSERT INTO public.games VALUES (77, 440, 40);
INSERT INTO public.games VALUES (78, 100, 40);
INSERT INTO public.games VALUES (79, 958, 42);
INSERT INTO public.games VALUES (80, 234, 42);
INSERT INTO public.games VALUES (81, 520, 43);
INSERT INTO public.games VALUES (82, 966, 43);
INSERT INTO public.games VALUES (83, 261, 42);
INSERT INTO public.games VALUES (84, 685, 42);
INSERT INTO public.games VALUES (85, 867, 42);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1668385702437');
INSERT INTO public.users VALUES (2, 'user_1668385702436');
INSERT INTO public.users VALUES (3, 'kk');
INSERT INTO public.users VALUES (4, 'oioi');
INSERT INTO public.users VALUES (5, 'oioij');
INSERT INTO public.users VALUES (6, '4');
INSERT INTO public.users VALUES (7, 'fhfgh');
INSERT INTO public.users VALUES (8, 'gdrgfx');
INSERT INTO public.users VALUES (9, 'sfdfg');
INSERT INTO public.users VALUES (10, 'iu');
INSERT INTO public.users VALUES (11, 'u');
INSERT INTO public.users VALUES (12, 'fsdf');
INSERT INTO public.users VALUES (13, 'eowpoe');
INSERT INTO public.users VALUES (14, 'ew');
INSERT INTO public.users VALUES (15, 'gdofgudf');
INSERT INTO public.users VALUES (16, 'user_1668386597590');
INSERT INTO public.users VALUES (17, 'user_1668386597589');
INSERT INTO public.users VALUES (18, 'sdfffffdgdfgdfgsdfg');
INSERT INTO public.users VALUES (19, 'KHANH');
INSERT INTO public.users VALUES (20, 'user_1668386981089');
INSERT INTO public.users VALUES (21, 'user_1668386981088');
INSERT INTO public.users VALUES (22, 'user_1668387021597');
INSERT INTO public.users VALUES (23, 'user_1668387021596');
INSERT INTO public.users VALUES (24, 'user_1668387124133');
INSERT INTO public.users VALUES (25, 'user_1668387124132');
INSERT INTO public.users VALUES (26, 'user_1668387159951');
INSERT INTO public.users VALUES (27, 'user_1668387159950');
INSERT INTO public.users VALUES (28, 'user_1668387172364');
INSERT INTO public.users VALUES (29, 'user_1668387172363');
INSERT INTO public.users VALUES (30, 'user_1668387182849');
INSERT INTO public.users VALUES (31, 'user_1668387182848');
INSERT INTO public.users VALUES (32, 'user_1668387278579');
INSERT INTO public.users VALUES (33, 'user_1668387278578');
INSERT INTO public.users VALUES (34, 'user_1668387316928');
INSERT INTO public.users VALUES (35, 'user_1668387316927');
INSERT INTO public.users VALUES (36, 'user_1668387374843');
INSERT INTO public.users VALUES (37, 'user_1668387374842');
INSERT INTO public.users VALUES (38, 'user_1668387638864');
INSERT INTO public.users VALUES (39, 'user_1668387638863');
INSERT INTO public.users VALUES (40, 'user_1668387721853');
INSERT INTO public.users VALUES (41, 'user_1668387721852');
INSERT INTO public.users VALUES (42, 'user_1668387918966');
INSERT INTO public.users VALUES (43, 'user_1668387918965');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 85, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

