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
    description text,
    speed_kps integer,
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL
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
    water boolean DEFAULT false NOT NULL,
    planet_id integer NOT NULL,
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
    diameter numeric(7,1),
    gaseous boolean NOT NULL,
    inhabitable boolean DEFAULT false,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    size integer NOT NULL,
    color character varying(30) NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL
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
-- Name: travel; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.travel (
    travel_id integer NOT NULL,
    human_visit boolean DEFAULT false NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.travel OWNER TO freecodecamp;

--
-- Name: travel_travel_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.travel_travel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.travel_travel_id_seq OWNER TO freecodecamp;

--
-- Name: travel_travel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.travel_travel_id_seq OWNED BY public.travel.travel_id;


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
-- Name: travel travel_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel ALTER COLUMN travel_id SET DEFAULT nextval('public.travel_travel_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Milky Way', 'Barred spiral galaxy');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Andromeda', 'Barred spiral galaxy');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'NGC 4622', 'Barred spiral galaxy');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Bear Paw', 'blue compact dwarf');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Blinking', 'Grand design spiral galaxy');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Condor', 'Barred spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Europa', true, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Io', false, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Kallichore', false, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Amalthea', true, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Lysithea', false, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Euporie', false, 5, NULL);
INSERT INTO public.moon VALUES (12, 'Adrastea', true, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Carme', false, 5, NULL);
INSERT INTO public.moon VALUES (14, 'Titan', true, 6, NULL);
INSERT INTO public.moon VALUES (15, 'Enceladus', true, 6, NULL);
INSERT INTO public.moon VALUES (16, 'Mimas', true, 6, NULL);
INSERT INTO public.moon VALUES (17, 'Dione', true, 6, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', true, 7, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', true, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Triton', true, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, false, false, 1, 'Mercury');
INSERT INTO public.planet VALUES (2, NULL, false, false, 1, 'Venus');
INSERT INTO public.planet VALUES (3, NULL, false, true, 1, 'Earth');
INSERT INTO public.planet VALUES (4, NULL, false, false, 1, 'Mars');
INSERT INTO public.planet VALUES (5, NULL, true, false, 1, 'Jupiter');
INSERT INTO public.planet VALUES (6, NULL, true, false, 1, 'Saturn');
INSERT INTO public.planet VALUES (7, NULL, true, false, 1, 'Uranus');
INSERT INTO public.planet VALUES (8, NULL, true, false, 1, 'Neptune');
INSERT INTO public.planet VALUES (9, NULL, false, false, 1, 'Pluto');
INSERT INTO public.planet VALUES (10, NULL, true, false, 6, 'Upsilon Andromedae b');
INSERT INTO public.planet VALUES (11, NULL, true, false, 6, 'Upsilon Andromedae c');
INSERT INTO public.planet VALUES (12, NULL, true, false, 6, 'Upsilon Andromedae d');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 865000, 'Yellow', 1, 'Sun');
INSERT INTO public.star VALUES (2, 1476700000, 'Yellow', 1, 'UY Scuti');
INSERT INTO public.star VALUES (3, 1327000000, 'Red', 1, 'RW Cephei');
INSERT INTO public.star VALUES (4, 1300000000, 'Red', 1, 'KY Cygni');
INSERT INTO public.star VALUES (5, 430000000, 'Yellow', 1, 'Antares');
INSERT INTO public.star VALUES (6, 880000, 'White', 2, 'Upsilon Andromedae');


--
-- Data for Name: travel; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.travel VALUES (1, true, 'Moon');
INSERT INTO public.travel VALUES (2, false, 'Mars');
INSERT INTO public.travel VALUES (3, false, 'Sun');
INSERT INTO public.travel VALUES (4, false, 'Jupiter');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: travel_travel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.travel_travel_id_seq', 4, true);


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
-- Name: travel travel_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel
    ADD CONSTRAINT travel_name_key UNIQUE (name);


--
-- Name: travel travel_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.travel
    ADD CONSTRAINT travel_pkey PRIMARY KEY (travel_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

