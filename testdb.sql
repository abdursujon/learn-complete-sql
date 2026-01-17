--
-- PostgreSQL database dump
--

\restrict pWLvTXj2UGpllUovGX1bcnYHOTobNXwKLucaM1s70pA4561L2ZcBHr3tM6K59c6

-- Dumped from database version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.11 (Ubuntu 16.11-0ubuntu0.24.04.1)

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
-- Name: countries; Type: TABLE; Schema: public; Owner: sujon
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    countryname character varying(255),
    capital character varying(255),
    continent character varying(255),
    lang character varying(255),
    faithid integer
);


ALTER TABLE public.countries OWNER TO sujon;

--
-- Name: faith; Type: TABLE; Schema: public; Owner: sujon
--

CREATE TABLE public.faith (
    faithid integer NOT NULL,
    religion character varying(255)
);


ALTER TABLE public.faith OWNER TO sujon;

--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: sujon
--

COPY public.countries (id, countryname, capital, continent, lang, faithid) FROM stdin;
4	China	Begin	Asia	Chinese	5
1	UK	London	Europe	English	1
5	Bangladesh	Dhaka	Asia	Bengali	2
2	France	Paris	Europe	French	3
3	Japan	Tokyo	Asia	Japanese	4
\.


--
-- Data for Name: faith; Type: TABLE DATA; Schema: public; Owner: sujon
--

COPY public.faith (faithid, religion) FROM stdin;
1	Islam
2	Christian
3	Jewish
4	Hindu
5	No Religion
\.


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: sujon
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: faith faith_pkey; Type: CONSTRAINT; Schema: public; Owner: sujon
--

ALTER TABLE ONLY public.faith
    ADD CONSTRAINT faith_pkey PRIMARY KEY (faithid);


--
-- Name: faith faith_religion_key; Type: CONSTRAINT; Schema: public; Owner: sujon
--

ALTER TABLE ONLY public.faith
    ADD CONSTRAINT faith_religion_key UNIQUE (religion);


--
-- Name: countries unique_country_name; Type: CONSTRAINT; Schema: public; Owner: sujon
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT unique_country_name UNIQUE (countryname);


--
-- Name: countries fk_countries_religion; Type: FK CONSTRAINT; Schema: public; Owner: sujon
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT fk_countries_religion FOREIGN KEY (faithid) REFERENCES public.faith(faithid);


--
-- PostgreSQL database dump complete
--

\unrestrict pWLvTXj2UGpllUovGX1bcnYHOTobNXwKLucaM1s70pA4561L2ZcBHr3tM6K59c6

