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
-- Name: disk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.disk (
    disk_id integer NOT NULL,
    name character varying(60) NOT NULL,
    disks_planet text NOT NULL,
    disk_diameter numeric
);


ALTER TABLE public.disk OWNER TO freecodecamp;

--
-- Name: disk_disk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.disk_disk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disk_disk_id_seq OWNER TO freecodecamp;

--
-- Name: disk_disk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.disk_disk_id_seq OWNED BY public.disk.disk_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type text NOT NULL,
    galaxy_dimensions integer,
    year_discovered integer,
    distance numeric,
    has_blackhole boolean,
    is_expanding boolean
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
    name character varying(60) NOT NULL,
    moon_label text NOT NULL,
    moon_magnitute numeric,
    moon_diameter numeric,
    moon_mass numeric,
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
    name character varying(60) NOT NULL,
    planet_type text,
    planet_mass numeric,
    planet_diameter integer,
    planet_density integer,
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
    name character varying(60) NOT NULL,
    star_type text NOT NULL,
    star_year_discov integer,
    star_mass integer,
    star_radius numeric,
    star_color character varying(50),
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
-- Name: disk disk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.disk ALTER COLUMN disk_id SET DEFAULT nextval('public.disk_disk_id_seq'::regclass);


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
-- Data for Name: disk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.disk VALUES (1, 'red', 'Saturn', 15898);
INSERT INTO public.disk VALUES (2, 'blue', 'Neptun', 1589878);
INSERT INTO public.disk VALUES (3, 'grey', 'Moon', 8789);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'WLM', 'Irr', 11000, 1909, 3.1, true, false);
INSERT INTO public.galaxy VALUES (2, 'IC 10', 'Irr2', 4600, 1889, 2.15, true, true);
INSERT INTO public.galaxy VALUES (3, 'Cetus Dwarf', 'E4', 3700, 1999, 2.54, false, false);
INSERT INTO public.galaxy VALUES (4, 'NGC 147', 'E5', 9400, 1829, 2.15, false, true);
INSERT INTO public.galaxy VALUES (5, 'Andromeda III', 'E', 3200, 1970, 2.48, false, true);
INSERT INTO public.galaxy VALUES (6, 'NGC 185', 'E3', 9100, 1787, 2.15, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', 'XVI', 10.5, 43, 3.6, NULL);
INSERT INTO public.moon VALUES (2, 'Adrastea', 'XV', 12, 16.4, 0.2, NULL);
INSERT INTO public.moon VALUES (3, 'Amalthea', 'V', 7.1, 167, 208, NULL);
INSERT INTO public.moon VALUES (4, 'Thebe', 'XIV', 9, 98.6, 43, NULL);
INSERT INTO public.moon VALUES (5, 'Io', 'I', 1.7, 3643, 8931900, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 'II', -1.4, 3121.6, 4799800, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'III', -2.1, 5268.2, 1481900, NULL);
INSERT INTO public.moon VALUES (8, 'Callisto', 'IV', -1.2, 4820.6, 10759000, NULL);
INSERT INTO public.moon VALUES (9, 'Themisto', 'XVIII', 12.9, 9, 0.038, NULL);
INSERT INTO public.moon VALUES (10, 'Leda', 'XIII', 12.7, 21.5, 0.52, NULL);
INSERT INTO public.moon VALUES (11, 'Ersa', 'LXXI', 15.9, 3, 0.0014, NULL);
INSERT INTO public.moon VALUES (12, 'Himalia', 'VI', 7.9, 139.6, 420, NULL);
INSERT INTO public.moon VALUES (13, 'Pandia', 'LXV', 16.2, 3, 0.0014, NULL);
INSERT INTO public.moon VALUES (14, 'Lysithea', 'X', 11.2, 42.2, 3.9, NULL);
INSERT INTO public.moon VALUES (15, 'Elara', 'VII', 9.6, 79.9, 27, NULL);
INSERT INTO public.moon VALUES (16, 'Dia', 'LIII', 16.3, 4, 0.0034, NULL);
INSERT INTO public.moon VALUES (17, 'Carpo', 'XLVI', 16.1, 3, 0.0014, NULL);
INSERT INTO public.moon VALUES (18, 'Valetudo', 'LXII', 17, 1, 0.000052, NULL);
INSERT INTO public.moon VALUES (19, 'Euporie', 'XXXIV', 16.3, 2, 0.00042, NULL);
INSERT INTO public.moon VALUES (20, 'Eupheme', 'LX', 16.6, 2, 0.0042, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'ME', 0.33, 4879, 5429, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 'VE', 4.87, 12104, 5243, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 'EA', 5.97, 12756, 5514, NULL);
INSERT INTO public.planet VALUES (4, 'Moon', 'MON', 0.073, 3475, 3340, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'JU', 1898, 142984, 1326, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'SA', 568, 120536, 687, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'UR', 86.8, 51118, 1270, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 'NEP', 102, 49528, 1638, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 'PL', 0.0130, 2376, 1850, NULL);
INSERT INTO public.planet VALUES (10, 'Mars', 'MA', 0.642, 6792, 3934, NULL);
INSERT INTO public.planet VALUES (11, 'Vulkan', 'VU', 568, 1236, 8596, NULL);
INSERT INTO public.planet VALUES (12, 'Astor', 'AST', 856, 1256, 568998, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '10 Lacetra', 'O', 1875, 60, 15, 'Blue', NULL);
INSERT INTO public.star VALUES (2, 'Rigel', 'B', 1856, 18, 7, 'White', NULL);
INSERT INTO public.star VALUES (3, 'Sirius', 'A1', 1589, 3, 2.5, 'Blue', NULL);
INSERT INTO public.star VALUES (4, 'Vega', 'A', 1856, 3, 2.5, 'Blue', NULL);
INSERT INTO public.star VALUES (5, 'Canopus', 'F1', 1990, 2, 1.3, 'Blue to White', NULL);
INSERT INTO public.star VALUES (6, 'Procyon', 'F', 1989, 2, 1.3, 'white to blue', NULL);


--
-- Name: disk_disk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.disk_disk_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: disk disk_disks_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.disk
    ADD CONSTRAINT disk_disks_planet_key UNIQUE (disks_planet);


--
-- Name: disk disk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.disk
    ADD CONSTRAINT disk_pkey PRIMARY KEY (disk_id);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_label_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_label_key UNIQUE (moon_label);


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
-- Name: planet planet_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_key UNIQUE (planet_type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_type_key UNIQUE (star_type);


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

