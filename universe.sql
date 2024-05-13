--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    starsnumber integer,
    blackholesnumber integer,
    width_diameter numeric(3,1) NOT NULL,
    description text,
    has_life boolean,
    visited_by_humans boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    water_sources integer,
    heliumminesnumber integer,
    width_diameter numeric(3,1) NOT NULL,
    description text,
    exist_water boolean,
    visited_by_humans boolean,
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
    name character varying(30) NOT NULL,
    water_sources integer,
    moonsnumber integer,
    width_diameter numeric(3,1) NOT NULL,
    description text,
    is_habitable boolean,
    visited_by_humans boolean,
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
-- Name: specie; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.specie (
    specie_id integer NOT NULL,
    name character varying(30) NOT NULL,
    arms_number integer NOT NULL,
    legs_number integer NOT NULL
);


ALTER TABLE public.specie OWNER TO freecodecamp;

--
-- Name: specie_specie_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.specie_specie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specie_specie_id_seq OWNER TO freecodecamp;

--
-- Name: specie_specie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.specie_specie_id_seq OWNED BY public.specie.specie_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planetsnumber integer,
    moonsnumber integer,
    width_diameter numeric(3,1) NOT NULL,
    description text,
    habitable_planet boolean,
    visited_by_humans boolean,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: specie specie_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie ALTER COLUMN specie_id SET DEFAULT nextval('public.specie_specie_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ga', 1000, 10, 1.0, 'ga is beautiful', true, true);
INSERT INTO public.galaxy VALUES (2, 'gb', 2000, 100, 1.0, 'gb is scary', false, false);
INSERT INTO public.galaxy VALUES (3, 'gc', 3000, 10, 1.0, 'gc is dark', false, true);
INSERT INTO public.galaxy VALUES (4, 'gd', 1000, 10, 1.0, 'gd is beautiful', true, true);
INSERT INTO public.galaxy VALUES (5, 'ge', 2000, 100, 1.0, 'ge is scary', false, false);
INSERT INTO public.galaxy VALUES (6, 'gf', 3000, 10, 1.0, 'gf is dark', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ma', 5, 100, 1.0, 'ma is beautiful', true, true, 2);
INSERT INTO public.moon VALUES (2, 'mb', 8, 90, 1.0, 'mb is scary', true, false, 2);
INSERT INTO public.moon VALUES (3, 'mc', 0, 80, 1.0, 'mc is dark', false, true, 1);
INSERT INTO public.moon VALUES (4, 'md', 0, 100, 1.0, 'md is beautiful', false, true, 1);
INSERT INTO public.moon VALUES (5, 'me', 0, 90, 1.0, 'me is scary', false, false, 1);
INSERT INTO public.moon VALUES (6, 'mf', 0, 80, 1.0, 'mf is dark', false, true, 1);
INSERT INTO public.moon VALUES (7, 'mg', 0, 100, 1.0, 'mg is beautiful', false, true, 1);
INSERT INTO public.moon VALUES (8, 'mh', 0, 90, 1.0, 'mh is scary', false, false, 1);
INSERT INTO public.moon VALUES (9, 'mi', 0, 80, 1.0, 'mi is dark', false, true, 1);
INSERT INTO public.moon VALUES (10, 'mj', 0, 100, 1.0, 'mj is beautiful', false, true, 1);
INSERT INTO public.moon VALUES (11, 'mk', 5, 100, 1.0, 'mk is beautiful', true, true, 2);
INSERT INTO public.moon VALUES (12, 'ml', 8, 90, 1.0, 'ml is scary', true, false, 2);
INSERT INTO public.moon VALUES (13, 'mm', 0, 80, 1.0, 'mm is dark', false, true, 1);
INSERT INTO public.moon VALUES (14, 'mn', 0, 100, 1.0, 'mn is beautiful', false, true, 1);
INSERT INTO public.moon VALUES (15, 'ms', 0, 90, 1.0, 'ms is scary', false, false, 1);
INSERT INTO public.moon VALUES (16, 'mt', 0, 80, 1.0, 'mt is dark', false, true, 1);
INSERT INTO public.moon VALUES (17, 'mv', 0, 100, 1.0, 'mv is beautiful', false, true, 1);
INSERT INTO public.moon VALUES (18, 'mo', 0, 90, 1.0, 'mo is scary', false, false, 1);
INSERT INTO public.moon VALUES (19, 'mq', 0, 80, 1.0, 'mq is dark', false, true, 1);
INSERT INTO public.moon VALUES (20, 'mr', 0, 100, 1.0, 'mr is beautiful', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pa', 1000, 10, 1.0, 'pa is a gas giant', false, true, 1);
INSERT INTO public.planet VALUES (2, 'pb', 2000, 100, 1.0, 'pb is a rocky planet', true, false, 2);
INSERT INTO public.planet VALUES (3, 'pc', 3000, 10, 1.0, 'pc is a rocky planet', true, true, 2);
INSERT INTO public.planet VALUES (4, 'pd', 1000, 10, 1.0, 'pd is a gas giant', false, true, 3);
INSERT INTO public.planet VALUES (5, 'pe', 2000, 100, 1.0, 'pe is a rocky planet', true, false, 4);
INSERT INTO public.planet VALUES (6, 'pf', 3000, 10, 1.0, 'pf is a rocky planet', true, true, 5);
INSERT INTO public.planet VALUES (7, 'pg', 1000, 10, 1.0, 'pg is a gas giant', false, true, 5);
INSERT INTO public.planet VALUES (8, 'ph', 2000, 100, 1.0, 'ph is a rocky planet', true, false, 5);
INSERT INTO public.planet VALUES (9, 'pi', 3000, 10, 1.0, 'pi is a rocky planet', true, true, 6);
INSERT INTO public.planet VALUES (10, 'pj', 1000, 10, 1.0, 'pj is a gas giant', false, true, 6);
INSERT INTO public.planet VALUES (11, 'pk', 2000, 100, 1.0, 'pk is a rocky planet', true, false, 6);
INSERT INTO public.planet VALUES (12, 'pl', 3000, 10, 1.0, 'pl is a rocky planet', true, true, 6);


--
-- Data for Name: specie; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.specie VALUES (1, 's1', 2, 2);
INSERT INTO public.specie VALUES (2, 's2', 4, 2);
INSERT INTO public.specie VALUES (3, 's3', 0, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sa', 1000, 10, 1.0, 'sa is red', true, true, 1);
INSERT INTO public.star VALUES (2, 'sb', 2000, 100, 1.0, 'sb is red', false, false, 1);
INSERT INTO public.star VALUES (3, 'sc', 3000, 10, 1.0, 'sc is yellow', false, true, 2);
INSERT INTO public.star VALUES (4, 'sd', 1000, 10, 1.0, 'sd is red', true, true, 2);
INSERT INTO public.star VALUES (5, 'se', 2000, 100, 1.0, 'se is red', false, false, 3);
INSERT INTO public.star VALUES (6, 'sf', 3000, 10, 1.0, 'sf is yellow', false, true, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: specie_specie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.specie_specie_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: specie specie_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_name_key UNIQUE (name);


--
-- Name: specie specie_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.specie
    ADD CONSTRAINT specie_pkey PRIMARY KEY (specie_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

