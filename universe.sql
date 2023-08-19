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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(16) NOT NULL,
    height integer,
    weight integer,
    has_life boolean NOT NULL,
    want_to_visit boolean,
    color text,
    hub_table_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: hub_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hub_table (
    hub_table_id integer NOT NULL,
    name character varying(16) NOT NULL,
    galaxy_id numeric
);


ALTER TABLE public.hub_table OWNER TO freecodecamp;

--
-- Name: hub_table_hub_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.hub_table_hub_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hub_table_hub_table_id_seq OWNER TO freecodecamp;

--
-- Name: hub_table_hub_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.hub_table_hub_table_id_seq OWNED BY public.hub_table.hub_table_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(16) NOT NULL,
    height integer,
    weight integer,
    has_life boolean NOT NULL,
    want_to_visit boolean,
    color text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(16) NOT NULL,
    height integer,
    weight integer,
    has_life boolean NOT NULL,
    want_to_visit boolean,
    color text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(16) NOT NULL,
    height integer,
    weight integer,
    has_life boolean NOT NULL,
    want_to_visit boolean,
    color text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: hub_table hub_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hub_table ALTER COLUMN hub_table_id SET DEFAULT nextval('public.hub_table_hub_table_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'IC 1101', 120000000, 250000000, true, true, 'white', 1);
INSERT INTO public.galaxy VALUES (2, 'Hercules A', 2000000, 30040200, false, false, 'pink', 2);
INSERT INTO public.galaxy VALUES (3, 'A2261-BCG', 123727918, 128937239, false, true, 'yellow', 3);
INSERT INTO public.galaxy VALUES (4, 'ESO 306-17', 5723291, 1237236, true, true, 'purple', 4);
INSERT INTO public.galaxy VALUES (5, 'Comet Galaxy', 1239237, 2138262, false, true, 'blue', 5);
INSERT INTO public.galaxy VALUES (6, 'Condor Galaxy', 271265, 272362, true, true, 'white', 6);


--
-- Data for Name: hub_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hub_table VALUES (1, 'first', 1);
INSERT INTO public.hub_table VALUES (2, 'second', 2);
INSERT INTO public.hub_table VALUES (3, 'third', 3);
INSERT INTO public.hub_table VALUES (4, 'fourth', 4);
INSERT INTO public.hub_table VALUES (5, 'fifth', 5);
INSERT INTO public.hub_table VALUES (6, 'sixth', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 52000021, 2330000, false, true, 'gray', 8);
INSERT INTO public.moon VALUES (2, 'Titan', 920000, 8700200, false, false, 'yellow', 3);
INSERT INTO public.moon VALUES (3, 'Callisto', 123727, 1289372, false, false, 'orange', 6);
INSERT INTO public.moon VALUES (4, 'lo', 5723291, 1237236, false, false, 'white', 1);
INSERT INTO public.moon VALUES (5, 'The Moon', 1239237, 2138262, false, false, 'gray', 11);
INSERT INTO public.moon VALUES (6, 'Europa', 271265123, 27236232, false, false, 'white', 7);
INSERT INTO public.moon VALUES (7, 'Triton', 52000021, 2330000, false, false, 'white', 1);
INSERT INTO public.moon VALUES (8, 'Titania', 920000, 8700200, false, false, 'gray', 9);
INSERT INTO public.moon VALUES (9, 'Rhea', 123727, 1289372, false, false, 'green', 2);
INSERT INTO public.moon VALUES (10, 'Oberon', 5723291, 1237236, false, false, 'white', 4);
INSERT INTO public.moon VALUES (11, 'Lapetus', 1239237, 2138262, false, false, 'Brown', 12);
INSERT INTO public.moon VALUES (12, 'Charon', 271265123, 27236232, false, false, 'white', 5);
INSERT INTO public.moon VALUES (13, 'Umbriel', 52000021, 2330000, false, true, 'blue', 2);
INSERT INTO public.moon VALUES (14, 'Ariel', 920000, 8700200, false, false, 'yellow', 6);
INSERT INTO public.moon VALUES (15, 'Dione', 123727, 1289372, false, false, 'orange', 9);
INSERT INTO public.moon VALUES (16, 'Tethys', 5723291, 1237236, false, false, 'white', 1);
INSERT INTO public.moon VALUES (17, 'Dysnomia', 1239237, 2138262, false, false, 'red', 8);
INSERT INTO public.moon VALUES (18, 'Enceladus', 271265123, 27236232, false, false, 'white', 3);
INSERT INTO public.moon VALUES (19, 'Miranda', 52000021, 2330000, false, false, 'Brown', 7);
INSERT INTO public.moon VALUES (20, 'Proteus', 920000, 8700200, false, false, 'Purple', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Kepler-186f', 52000021, 2330000, false, false, 'blue', 1);
INSERT INTO public.planet VALUES (2, 'HD 209458 b', 920000, 8700200, false, false, 'yellow', 3);
INSERT INTO public.planet VALUES (3, 'Kepler-11', 123727, 1289372, false, false, 'orange', 6);
INSERT INTO public.planet VALUES (4, 'Kepler-16b', 5723291, 1237236, false, false, 'white', 2);
INSERT INTO public.planet VALUES (5, '51 Pegasi b', 1239237, 2138262, false, false, 'red', 5);
INSERT INTO public.planet VALUES (6, 'CoRoT 7b', 271265123, 27236232, false, false, 'white', 4);
INSERT INTO public.planet VALUES (7, 'Kepler-22b', 52000021, 2330000, false, false, 'orange', 3);
INSERT INTO public.planet VALUES (8, 'Kepler-10b', 920000, 8700200, false, false, 'red', 6);
INSERT INTO public.planet VALUES (9, 'Kepler-444', 123727, 1289372, false, false, 'orange', 1);
INSERT INTO public.planet VALUES (10, '55 Cancri e', 5723291, 1237236, false, false, 'white', 5);
INSERT INTO public.planet VALUES (11, 'HD 189733 b', 1239237, 2138262, false, false, 'red', 2);
INSERT INTO public.planet VALUES (12, 'PSR B1257+12', 271265123, 27236232, false, false, 'white', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UY Scuti', 52000021, 2330000, false, false, 'orange', 1);
INSERT INTO public.star VALUES (2, 'VY Canis Majoris', 920000, 8700200, false, false, 'red', 2);
INSERT INTO public.star VALUES (3, 'RW Cephei', 123727, 1289372, false, false, 'orange', 3);
INSERT INTO public.star VALUES (4, 'V354 Cephei', 5723291, 1237236, false, false, 'white', 4);
INSERT INTO public.star VALUES (5, 'KY Cygni', 1239237, 2138262, false, false, 'red', 5);
INSERT INTO public.star VALUES (6, 'Mu Cephei', 271265123, 27236232, false, false, 'white', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: hub_table_hub_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.hub_table_hub_table_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 32, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: hub_table hub_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hub_table
    ADD CONSTRAINT hub_table_name_key UNIQUE (name);


--
-- Name: hub_table hub_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hub_table
    ADD CONSTRAINT hub_table_pkey PRIMARY KEY (hub_table_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy hub_table_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT hub_table_id FOREIGN KEY (hub_table_id) REFERENCES public.hub_table(hub_table_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

