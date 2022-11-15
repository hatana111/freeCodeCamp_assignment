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
    name character varying(50),
    age_byear numeric(3,1),
    exist boolean,
    radius_klightyear integer NOT NULL
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
    full_date date NOT NULL,
    satellites_id integer
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
    name character varying(20),
    star_id integer,
    trait text NOT NULL,
    sat_id integer
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
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    satellites_id integer NOT NULL,
    name character varying(30) NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: satellites_sat_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellites_sat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellites_sat_id_seq OWNER TO freecodecamp;

--
-- Name: satellites_sat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellites_sat_id_seq OWNED BY public.satellites.satellites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    dist2earth_lightyear numeric(3,2),
    is_starwars boolean
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
-- Name: satellites satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites ALTER COLUMN satellites_id SET DEFAULT nextval('public.satellites_sat_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.8, true, 100);
INSERT INTO public.galaxy VALUES (2, 'Butterfly', 10.1, true, 250);
INSERT INTO public.galaxy VALUES (3, 'Cockroach', 9.3, false, 410);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 12.4, false, 320);
INSERT INTO public.galaxy VALUES (5, 'Cinderella', 11.4, true, 50);
INSERT INTO public.galaxy VALUES (6, 'Fireworks', 11.4, false, 390);
INSERT INTO public.galaxy VALUES (7, 'Needle', 8.2, true, 550);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Blue Moon', 3, '2022-02-02', 1);
INSERT INTO public.moon VALUES (3, 'Pink Moon', 2, '2022-03-24', 1);
INSERT INTO public.moon VALUES (5, 'Wolf Moon', 5, '2022-05-09', 1);
INSERT INTO public.moon VALUES (7, 'Green Moon', 7, '2022-05-28', 1);
INSERT INTO public.moon VALUES (9, 'Shore Moon', 9, '2022-06-23', 1);
INSERT INTO public.moon VALUES (14, 'Rice Moon', 13, '2022-09-10', 1);
INSERT INTO public.moon VALUES (16, 'Dale Moon', 15, '2022-09-30', 1);
INSERT INTO public.moon VALUES (2, 'Blood Moon', 1, '2022-03-14', 2);
INSERT INTO public.moon VALUES (4, 'Corn Moon', 4, '2022-04-29', 2);
INSERT INTO public.moon VALUES (6, 'Eel Moon', 6, '2022-05-17', 2);
INSERT INTO public.moon VALUES (8, 'Orange Moon', 8, '2022-06-13', 2);
INSERT INTO public.moon VALUES (10, 'Shorne Moon', 9, '2022-07-03', 2);
INSERT INTO public.moon VALUES (12, 'Shield Moon', 11, '2022-08-14', 2);
INSERT INTO public.moon VALUES (13, 'Tofu Moon', 12, '2022-08-30', 3);
INSERT INTO public.moon VALUES (15, 'Purple Moon', 14, '2022-09-15', 3);
INSERT INTO public.moon VALUES (17, 'Vampire Moon', 16, '2022-10-05', 3);
INSERT INTO public.moon VALUES (19, 'Ola Moon', 18, '2022-11-01', 3);
INSERT INTO public.moon VALUES (18, 'Ramen Moon', 17, '2022-10-15', 4);
INSERT INTO public.moon VALUES (20, 'Popa Moon', 19, '2022-11-11', 4);
INSERT INTO public.moon VALUES (21, 'Kaki Moon', 20, '2022-12-11', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mars', 2, 'Is being diged up', NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 3, 'Thanks Im still safe from human', NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 3, 'Im the wisest guy', NULL);
INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Hooman is destroying me', NULL);
INSERT INTO public.planet VALUES (5, 'Mercury', 4, 'The sun is melting me', NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 5, 'Hooman do not talk enough about me', NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 4, 'C mon Hooma Im your dream place', NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 4, 'Where you can watch star wars', NULL);
INSERT INTO public.planet VALUES (9, 'Odysee', 7, 'Where you would understand the meaning of kindness', NULL);
INSERT INTO public.planet VALUES (10, 'Optopia', 7, 'Where you realize you didnt know what narcissist is', NULL);
INSERT INTO public.planet VALUES (11, 'Satanious', 1, 'Im lonely here', NULL);
INSERT INTO public.planet VALUES (12, 'Jeanitza', 5, 'The earth is so lucky with wonderful Humen', NULL);
INSERT INTO public.planet VALUES (13, 'Herousa', 6, 'There is one men and one woman here', NULL);
INSERT INTO public.planet VALUES (14, 'Antopia', 2, 'I miss my old planet', NULL);
INSERT INTO public.planet VALUES (15, 'Europya', 2, 'The earth people dont know what beautiful is', NULL);
INSERT INTO public.planet VALUES (16, 'Xiela', 1, 'Where you understand what green planet is', NULL);
INSERT INTO public.planet VALUES (17, 'Icean', 3, 'The hometown of Frozen', NULL);
INSERT INTO public.planet VALUES (18, 'Dogiean', 4, 'Cats are the only animal here', NULL);
INSERT INTO public.planet VALUES (19, 'Mathxera', 4, 'Math from hjuman is not allowed on my planet', NULL);
INSERT INTO public.planet VALUES (20, 'Romeo', 7, 'Shakepear was here after death', NULL);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES (1, 'Landsat', 1);
INSERT INTO public.satellites VALUES (2, 'Spot', 2);
INSERT INTO public.satellites VALUES (3, 'Sentinel', 3);
INSERT INTO public.satellites VALUES (4, 'MODIS', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aries', 1, 4.32, true);
INSERT INTO public.star VALUES (2, 'Leo', 2, 3.43, true);
INSERT INTO public.star VALUES (3, 'Wolf', 2, 4.54, false);
INSERT INTO public.star VALUES (4, 'Carpicon', 3, 8.75, false);
INSERT INTO public.star VALUES (5, 'Buffalo', 3, 8.99, true);
INSERT INTO public.star VALUES (6, 'Crow', 4, 9.32, true);
INSERT INTO public.star VALUES (7, 'Adele', 4, 7.49, true);
INSERT INTO public.star VALUES (8, 'Taylor', 5, 6.52, false);
INSERT INTO public.star VALUES (9, 'Ediran', 5, 7.33, false);
INSERT INTO public.star VALUES (10, 'Horse', 6, 1.83, true);
INSERT INTO public.star VALUES (11, 'Lemon', 6, 3.83, true);
INSERT INTO public.star VALUES (12, 'Cancer', 7, 6.66, false);
INSERT INTO public.star VALUES (13, 'Libra', 7, 5.88, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: satellites_sat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellites_sat_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


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
-- Name: moon moon_full_date_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_full_date_key UNIQUE (full_date);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


--
-- Name: satellites satellites_satellites_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_satellites_id_key UNIQUE (satellites_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_sat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_sat_id_fkey FOREIGN KEY (satellites_id) REFERENCES public.satellites(satellites_id);


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

