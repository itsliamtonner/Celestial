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
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life boolean,
    galaxy_types text
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
    distance_from_earth numeric,
    parent character varying(30),
    size integer
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
    age_in_millions_of_years integer,
    has_life boolean,
    no_ppl integer
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
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life boolean,
    distance_from_earth boolean NOT NULL
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
-- Name: universe_joins; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_joins (
    universe_joins_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer,
    planet_id integer,
    moon_id integer,
    name character varying(30)
);


ALTER TABLE public.universe_joins OWNER TO freecodecamp;

--
-- Name: universe_joins_join_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_joins_join_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_joins_join_id_seq OWNER TO freecodecamp;

--
-- Name: universe_joins_join_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_joins_join_id_seq OWNED BY public.universe_joins.universe_joins_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe_joins universe_joins_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins ALTER COLUMN universe_joins_id SET DEFAULT nextval('public.universe_joins_join_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Butterly', 5, false, 'Virgo');
INSERT INTO public.galaxy VALUES (2, 'Cartwheel', 1, false, 'Ursa Major');
INSERT INTO public.galaxy VALUES (3, 'Cosmos', 7, true, 'Sextans');
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 7, true, ' Sagittarius');
INSERT INTO public.galaxy VALUES (5, 'Mayall', 5, false, 'Ursa Major');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 200, false, 'Virgo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M1', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'm2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'm3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'm4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'm5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'm6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'm2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'm3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'm4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'm5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'm6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'm2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'm4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'm5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'm6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'm2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'm3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'm4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'm5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'm6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'm2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'm3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'm4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'm5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'm6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'm2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'm3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'm4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'm5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'm6', 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 100, true, NULL);
INSERT INTO public.planet VALUES (2, 'P1 ', 134200, true, NULL);
INSERT INTO public.planet VALUES (3, 'P2 ', 0, false, NULL);
INSERT INTO public.planet VALUES (4, 'P3', 2121, true, NULL);
INSERT INTO public.planet VALUES (5, 'P4 ', 43240, false, NULL);
INSERT INTO public.planet VALUES (6, 'P5', 4352121, false, NULL);
INSERT INTO public.planet VALUES (7, 'P6 ', 40, true, NULL);
INSERT INTO public.planet VALUES (8, 'P7', 431, true, NULL);
INSERT INTO public.planet VALUES (9, 'P8', 12, true, NULL);
INSERT INTO public.planet VALUES (10, 'P9', 322, false, NULL);
INSERT INTO public.planet VALUES (11, 'P10 ', 140, true, NULL);
INSERT INTO public.planet VALUES (12, 'P11', 431, true, NULL);
INSERT INTO public.planet VALUES (13, 'P12', 12, true, NULL);
INSERT INTO public.planet VALUES (14, 'P13', 322, false, NULL);
INSERT INTO public.planet VALUES (15, 'P6 ', 40, true, NULL);
INSERT INTO public.planet VALUES (16, 'P7', 431, true, NULL);
INSERT INTO public.planet VALUES (17, 'P8', 12, true, NULL);
INSERT INTO public.planet VALUES (18, 'P9', 322, false, NULL);
INSERT INTO public.planet VALUES (19, 'P6 ', 40, true, NULL);
INSERT INTO public.planet VALUES (20, 'P7', 431, true, NULL);
INSERT INTO public.planet VALUES (21, 'P8', 12, true, NULL);
INSERT INTO public.planet VALUES (22, 'P9', 322, false, NULL);
INSERT INTO public.planet VALUES (23, 'P6 ', 40, true, NULL);
INSERT INTO public.planet VALUES (24, 'P7', 431, true, NULL);
INSERT INTO public.planet VALUES (25, 'P8', 12, true, NULL);
INSERT INTO public.planet VALUES (26, 'P9', 322, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Spica - Virgo', 1, false, false);
INSERT INTO public.star VALUES (2, '21 vir - Virgo', 1, false, false);
INSERT INTO public.star VALUES (3, '50 SGR', 1, false, false);
INSERT INTO public.star VALUES (4, '0 SGR', 1, false, false);
INSERT INTO public.star VALUES (5, '200 SGR', 1, false, false);
INSERT INTO public.star VALUES (6, '2R', 1, false, false);


--
-- Data for Name: universe_joins; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_joins VALUES (1, 1, 2, NULL, NULL, NULL);
INSERT INTO public.universe_joins VALUES (2, 2, 3, NULL, NULL, NULL);
INSERT INTO public.universe_joins VALUES (3, 3, 4, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 31, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_joins_join_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_joins_join_id_seq', 3, true);


--
-- Name: universe_joins fsfsgcc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins
    ADD CONSTRAINT fsfsgcc UNIQUE (universe_joins_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon uc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uc UNIQUE (moon_id);


--
-- Name: universe_joins universe_joins_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins
    ADD CONSTRAINT universe_joins_pkey PRIMARY KEY (universe_joins_id);


--
-- Name: planet upcc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT upcc UNIQUE (planet_id);


--
-- Name: galaxy upgcc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT upgcc UNIQUE (galaxy_id);


--
-- Name: star upssgcc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT upssgcc UNIQUE (star_id);


--
-- Name: universe_joins universe_joins_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins
    ADD CONSTRAINT universe_joins_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: universe_joins universe_joins_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins
    ADD CONSTRAINT universe_joins_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: universe_joins universe_joins_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins
    ADD CONSTRAINT universe_joins_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: universe_joins universe_joins_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_joins
    ADD CONSTRAINT universe_joins_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

