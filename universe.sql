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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_types character varying(10),
    age_in_billions_of_years numeric(5,2),
    distance_from_earth_in_ly integer,
    diameter_in_ly integer
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
    name character varying(20) NOT NULL,
    planet_id integer,
    distance_from_its_planet character varying(40),
    how_many_moons_does_its_planet_have integer
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
    name character varying(20) NOT NULL,
    diameter_in_km integer NOT NULL,
    planet_types character varying(30),
    distance_from_earth character varying(30),
    age_of_years character varying(30),
    star_id integer,
    has_life boolean,
    is_spherical boolean
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    facts text,
    types character varying(50)
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (10001, 'X', 1101, 100001, 101, 1);
INSERT INTO public.description VALUES (10002, 'Y', 1102, 100005, 401, 4);
INSERT INTO public.description VALUES (10003, 'Z', 1104, 100002, 601, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 13.61, 0, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 10.01, 2500000, 220000);
INSERT INTO public.galaxy VALUES (3, 'Cigar', 'irregular', NULL, 11500000, 37000);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'spiral', 13.51, 20870000, 170000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'spiral', 13.25, 29350000, 50000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'spiral', 4.00, 30000000, 60000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1101, 'Moon', 100001, '385000 kilometers', 1);
INSERT INTO public.moon VALUES (1102, 'Phobos', 100005, '9377 kilometers', 2);
INSERT INTO public.moon VALUES (1103, 'Deimos', 100005, '23436 kilometers', 2);
INSERT INTO public.moon VALUES (1104, 'Io', 100002, '422000 kilometers', 95);
INSERT INTO public.moon VALUES (1105, 'Europa', 100002, '671000 kilometers', 95);
INSERT INTO public.moon VALUES (1106, 'Ganymede', 100002, '1.07 million kilometers', 95);
INSERT INTO public.moon VALUES (1107, 'Callisto', 100002, '1883000 kilometers', 95);
INSERT INTO public.moon VALUES (1108, 'Titan', 100003, '1.2 million kilometers', 146);
INSERT INTO public.moon VALUES (1109, 'Enceladus', 100003, '238000 kilometers', 146);
INSERT INTO public.moon VALUES (1110, 'Hyperion', 100003, '1500000 kilometers', 146);
INSERT INTO public.moon VALUES (1111, 'Miranda', 100008, '129800 kilometers', 27);
INSERT INTO public.moon VALUES (1112, 'Ariel', 100008, '190900 kilometers', 27);
INSERT INTO public.moon VALUES (1113, 'Despina', 100007, '27700 kilometers', 14);
INSERT INTO public.moon VALUES (1114, 'Galatea', 100007, '37200 kilometers', 14);
INSERT INTO public.moon VALUES (1115, 'Halimede', 100007, '37200 kilometers', 14);
INSERT INTO public.moon VALUES (1116, 'Charon', 100009, '19640 kilometers', 5);
INSERT INTO public.moon VALUES (1117, 'Styx', 100009, '42656 kilometers', 5);
INSERT INTO public.moon VALUES (1118, 'Kerberos', 100009, '60000 kilometers', 5);
INSERT INTO public.moon VALUES (1119, 'Dysnomia', 100010, '37300 kilometers', 1);
INSERT INTO public.moon VALUES (1120, 'Amalthea', 100010, '181400 kilometers', 95);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (100001, 'Earth', 12756, 'terrestrial', '0', '4.54 billion years', 101, true, true);
INSERT INTO public.planet VALUES (100002, 'Jupiter', 139820, 'gas giants', '370.08 million mi', '4.603 billion years', 601, false, true);
INSERT INTO public.planet VALUES (100006, 'Mercury', 4879, 'terrestrial', '48 million mi', '4.503 billion years', 201, false, true);
INSERT INTO public.planet VALUES (100003, 'Saturn', 116460, 'gas giants', '869.3 million mi', '4.503 billion years', 401, false, true);
INSERT INTO public.planet VALUES (100004, 'Venus', 12104, 'terrestrial', '71.359 million mi', '4.503 billion years', 401, false, true);
INSERT INTO public.planet VALUES (100005, 'Mars', 6779, 'terrestrial', '237.32 million mi', '4.603 billion years', 401, false, true);
INSERT INTO public.planet VALUES (100007, 'Neptune', 49244, 'ice giants', '2.713 billion mi', '4.503 billion years', 301, false, true);
INSERT INTO public.planet VALUES (100008, 'Uranus', 50724, 'ice giants', '1.7329 billion mi', '4.503 billion years', 301, false, true);
INSERT INTO public.planet VALUES (100009, 'Pluto', 2376, 'dwarf', '3.2604 billion mi', '4.6 billion years', 501, false, true);
INSERT INTO public.planet VALUES (100010, 'Eris', 2326, 'dwarf', '14176165159 kilometers', '4.503 billion years', 501, false, true);
INSERT INTO public.planet VALUES (100011, '90377 Sedna', 995, 'dwarf', '12371739931 kilometers', NULL, 501, false, true);
INSERT INTO public.planet VALUES (100012, 'Kepler-22b', 30581, 'super-Earth', '640 light years', NULL, 501, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (101, 'Sirius', 1, 'Sirius is the brightest star in the night sky.', 'A0 or A1');
INSERT INTO public.star VALUES (201, 'Alpheratz', 2, 'The brightest star in the Andromeda constellation.', 'B8IVpMnHg');
INSERT INTO public.star VALUES (301, 'Buna', 2, 'Buna spectral type of G0 which means its colour and type is yellow star', 'G-class');
INSERT INTO public.star VALUES (401, 'Mizar', 4, 'Mizar is a second-magnitude star in the handle of the Big Dipper asterism in the constellation of Ursa Major.', 'A1V');
INSERT INTO public.star VALUES (501, 'Alkaid', 4, 'Alkaid is a brilliant blue-white main sequence star with a surface temperature near 20000K.', 'B3V');
INSERT INTO public.star VALUES (601, 'RW Cephei', 1, 'It is among the largest stars known with a radius of almost 1000 times that of the Sun, nearly as large as the orbit of Jupiter.', 'K-type');


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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

