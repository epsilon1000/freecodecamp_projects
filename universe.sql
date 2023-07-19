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
    name character varying(40),
    number_of_quasars integer,
    number_of_nebula integer,
    number_of_asteroids numeric(24,21) NOT NULL,
    has_life boolean NOT NULL,
    unique_characteristic text,
    has_binary_system boolean
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
-- Name: mix; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mix (
    mix_id integer NOT NULL,
    name character varying(30) NOT NULL,
    numero1 integer NOT NULL,
    numero2 integer NOT NULL,
    deci numeric(3,1),
    bool1 boolean,
    bool2 boolean,
    curious text
);


ALTER TABLE public.mix OWNER TO freecodecamp;

--
-- Name: mix_mix_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mix_mix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mix_mix_id_seq OWNER TO freecodecamp;

--
-- Name: mix_mix_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mix_mix_id_seq OWNED BY public.mix.mix_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    mass integer,
    age integer,
    distance_to_star numeric(24,21) NOT NULL,
    has__stupid_name boolean NOT NULL,
    unique_characteristic text,
    man_has_landed boolean,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    mass integer,
    age integer,
    distance_to_star numeric(24,21) NOT NULL,
    has_life boolean NOT NULL,
    unique_characteristic text,
    spherical boolean,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    number_of_spots integer,
    age integer,
    distance_center_galaxy numeric(24,21) NOT NULL,
    has_life boolean NOT NULL,
    unique_characteristic text,
    dying boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: mix mix_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mix ALTER COLUMN mix_id SET DEFAULT nextval('public.mix_mix_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 5246, 1214, 335.325000000000000000000, true, 'stinks', true);
INSERT INTO public.galaxy VALUES (2, 'Black EYE', 358, 0, 852.852000000000000000000, true, 'stonks', false);
INSERT INTO public.galaxy VALUES (4, 'Carwheel', 88, 14, 124.852000000000000000000, true, 'stanks', false);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 569, 454541, 125.822000000000000000000, false, 'stenks', false);
INSERT INTO public.galaxy VALUES (8, 'Comet', 1111, 4545551, 123.876000000000000000000, false, 'pomodoro sauce', false);
INSERT INTO public.galaxy VALUES (9, 'Eye of Sauron', 666, 1488, 888.777000000000000000000, true, 'kick it', false);


--
-- Data for Name: mix; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mix VALUES (1, 'uno', 1, 1, 1.1, true, true, 'el primero');
INSERT INTO public.mix VALUES (2, 'dos', 2, 2, 2.2, true, false, 'el segundo');
INSERT INTO public.mix VALUES (3, 'tres', 3, 3, 3.3, false, false, 'el tercero');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Dysnomia', 800, 12354, 231.123000000000000000000, true, 'smells like cheese', true, 1);
INSERT INTO public.moon VALUES (2, 'Xianglu', 801, 12355, 232.232000000000000000000, true, 'smells like water', true, 1);
INSERT INTO public.moon VALUES (3, 'Jilmare', 802, 12356, 232.233000000000000000000, false, 'smells like poison', true, 1);
INSERT INTO public.moon VALUES (4, 'weywot', 803, 12357, 232.234000000000000000000, true, 'smells like foi grass', false, 2);
INSERT INTO public.moon VALUES (5, 'namaka', 804, 12358, 232.235000000000000000000, true, 'smells like foi grasspu', true, 2);
INSERT INTO public.moon VALUES (6, 'Hiiaka', 805, 12359, 232.236000000000000000000, false, 'smells like foi grasspuoiiiu', true, 2);
INSERT INTO public.moon VALUES (7, 'Actaea', 806, 12360, 232.237000000000000000000, true, 'bongo', true, 3);
INSERT INTO public.moon VALUES (8, 'Styx', 807, 12361, 232.238000000000000000000, false, 'mongo', true, 3);
INSERT INTO public.moon VALUES (9, 'kerberos', 808, 12362, 232.239000000000000000000, true, 'pongo', true, 4);
INSERT INTO public.moon VALUES (10, 'Hydra', 809, 12363, 232.240000000000000000000, true, 'congo', false, 4);
INSERT INTO public.moon VALUES (12, 'Nix', 810, 12364, 232.241000000000000000000, false, 'songo', true, 5);
INSERT INTO public.moon VALUES (13, 'charon', 811, 12365, 232.242000000000000000000, true, 'aaa', true, 6);
INSERT INTO public.moon VALUES (14, 'vanth', 812, 12366, 232.243000000000000000000, false, 'aab', false, 6);
INSERT INTO public.moon VALUES (15, 'hippocamp', 813, 12367, 232.244000000000000000000, false, 'aac', false, 7);
INSERT INTO public.moon VALUES (16, 'Neso', 814, 12368, 232.245000000000000000000, true, 'aad', false, 7);
INSERT INTO public.moon VALUES (17, 'laomedeia', 815, 12369, 232.246000000000000000000, true, 'aae', true, 8);
INSERT INTO public.moon VALUES (18, 'Sao', 816, 12370, 232.247000000000000000000, false, 'aaf', true, 8);
INSERT INTO public.moon VALUES (21, 'psamathe', 817, 12371, 232.247000000000000000000, true, 'aag', true, 8);
INSERT INTO public.moon VALUES (22, 'proteus', 832, 12379, 232.249000000000000000000, true, 'aah', true, 11);
INSERT INTO public.moon VALUES (23, 'proteus', 1488, 969, 232.666000000000000000000, true, 'math attath', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Santamasa', 1500, 2006, 213.123000000000000000000, false, 'botso', true, 1);
INSERT INTO public.planet VALUES (2, 'Gliese', 8, 2009, 3.149000000000000000000, false, 'botsa', true, 1);
INSERT INTO public.planet VALUES (3, 'Tau bootis b', 8389, 1996, 3.312000000000000000000, false, 'botsi', true, 2);
INSERT INTO public.planet VALUES (4, 'COROT-7c', 26, 2009, 3.698000000000000000000, false, 'planA', true, 2);
INSERT INTO public.planet VALUES (5, 'Dimidium', 0, 1995, 4.231000000000000000000, false, 'planB', true, 4);
INSERT INTO public.planet VALUES (6, 'Saffar', 1266, 1996, 4.617000000000000000000, false, 'Planc', true, 4);
INSERT INTO public.planet VALUES (7, 'HD 38529 b', 782, 2000, 14.310000000000000000000, false, 'A', true, 7);
INSERT INTO public.planet VALUES (8, 'Galileo', 782, 1996, 14.651000000000000000000, false, 'B', true, 7);
INSERT INTO public.planet VALUES (9, 'Brahe', 214, 2002, 44.364000000000000000000, false, '1', true, 8);
INSERT INTO public.planet VALUES (10, 'Samh', 6673, 1999, 237.746000000000000000000, false, '2', false, 8);
INSERT INTO public.planet VALUES (11, 'Harriot', 190, 2005, 259.805000000000000000000, true, 'white', true, 10);
INSERT INTO public.planet VALUES (12, 'Epsilon Reticuli b', 4500, 2000, 415.241000000000000000000, false, 'black', true, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Absolutno', 6, 88888888, 85.123500000000000000000, false, 'caliente', false, 1);
INSERT INTO public.star VALUES (2, 'Belel', 5656, 48712164, 85.123600000000000000000, false, 'hot', false, 2);
INSERT INTO public.star VALUES (4, 'Ceibo', 84621, 4555164, 99.543600000000000000000, false, 'quente', false, 4);
INSERT INTO public.star VALUES (7, 'Diya', 52466, 88972164, 123.560000000000000000000, false, 'quema', true, 6);
INSERT INTO public.star VALUES (8, 'Electra', 5454226, 97216444, 145.568000000000000000000, false, 'quema mucho', true, 8);
INSERT INTO public.star VALUES (10, 'Fang', 221399, 56328, 889.768000000000000000000, false, 'quema mas', true, 9);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: mix_mix_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mix_mix_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_characteristic_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_characteristic_key UNIQUE (unique_characteristic);


--
-- Name: mix mix_curious_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mix
    ADD CONSTRAINT mix_curious_key UNIQUE (curious);


--
-- Name: mix mix_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mix
    ADD CONSTRAINT mix_pkey PRIMARY KEY (mix_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_characteristic_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_characteristic_key UNIQUE (unique_characteristic);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_characteristic_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_characteristic_key UNIQUE (unique_characteristic);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_characteristic_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_characteristic_key UNIQUE (unique_characteristic);


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
