--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

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
-- Name: p_corp; Type: TABLE; Schema: public; Owner: grape0grape1
--

CREATE TABLE public.p_corp (
    p_corp_id numeric NOT NULL,
    p_user_id numeric NOT NULL,
    name character varying(40) NOT NULL,
    status character(1),
    about character varying(1000),
    description character varying(1000),
    memo character varying(1000),
    motivation character varying(1000),
    url character varying(100),
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.p_corp OWNER TO grape0grape1;

--
-- Name: p_corp_p_corp_id_seq; Type: SEQUENCE; Schema: public; Owner: grape0grape1
--

CREATE SEQUENCE public.p_corp_p_corp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p_corp_p_corp_id_seq OWNER TO grape0grape1;

--
-- Name: p_corp_p_corp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grape0grape1
--

ALTER SEQUENCE public.p_corp_p_corp_id_seq OWNED BY public.p_corp.p_corp_id;


--
-- Name: p_task; Type: TABLE; Schema: public; Owner: grape0grape1
--

CREATE TABLE public.p_task (
    p_task_id numeric(10,0) NOT NULL,
    p_user_id numeric(10,0) NOT NULL,
    title character varying(50) NOT NULL,
    detail character varying(1000),
    deadline timestamp without time zone,
    url character varying(100),
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    p_corp_id numeric(10,0),
    isdone character(1) DEFAULT 'N'::bpchar NOT NULL
);


ALTER TABLE public.p_task OWNER TO grape0grape1;

--
-- Name: p_task_p_task_id_seq; Type: SEQUENCE; Schema: public; Owner: grape0grape1
--

CREATE SEQUENCE public.p_task_p_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p_task_p_task_id_seq OWNER TO grape0grape1;

--
-- Name: p_task_p_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grape0grape1
--

ALTER SEQUENCE public.p_task_p_task_id_seq OWNED BY public.p_task.p_task_id;


--
-- Name: p_user; Type: TABLE; Schema: public; Owner: grape0grape1
--

CREATE TABLE public.p_user (
    p_user_id numeric(10,0) NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    birthday date,
    gender character(1),
    post1 numeric(3,0),
    post2 numeric(4,0),
    prefecture character varying(3),
    city character varying,
    address1 character varying(50),
    address2 character varying(50),
    mail character varying(50),
    phone character varying(12),
    background1 character varying(100),
    background2 character varying(100),
    background3 character varying(100),
    background4 character varying(100),
    background5 character varying(100),
    background6 character varying(100),
    background7 character varying(100),
    background8 character varying(100),
    background9 character varying(100),
    background10 character varying(100),
    licence1 character varying(100),
    licence2 character varying(100),
    licence3 character varying(100),
    licence4 character varying(100),
    licence5 character varying(100),
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    userid numeric(10,0) NOT NULL,
    password numeric(10,0) NOT NULL,
    ispublic character(1) DEFAULT 'N'::bpchar
);


ALTER TABLE public.p_user OWNER TO grape0grape1;

--
-- Name: p_user_p_user_id_seq; Type: SEQUENCE; Schema: public; Owner: grape0grape1
--

CREATE SEQUENCE public.p_user_p_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.p_user_p_user_id_seq OWNER TO grape0grape1;

--
-- Name: p_user_p_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: grape0grape1
--

ALTER SEQUENCE public.p_user_p_user_id_seq OWNED BY public.p_user.p_user_id;


--
-- Name: p_corp p_corp_id; Type: DEFAULT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_corp ALTER COLUMN p_corp_id SET DEFAULT nextval('public.p_corp_p_corp_id_seq'::regclass);


--
-- Name: p_task p_task_id; Type: DEFAULT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_task ALTER COLUMN p_task_id SET DEFAULT nextval('public.p_task_p_task_id_seq'::regclass);


--
-- Name: p_user p_user_id; Type: DEFAULT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_user ALTER COLUMN p_user_id SET DEFAULT nextval('public.p_user_p_user_id_seq'::regclass);


--
-- Data for Name: p_corp; Type: TABLE DATA; Schema: public; Owner: grape0grape1
--

COPY public.p_corp (p_corp_id, p_user_id, name, status, about, description, memo, motivation, url, created) FROM stdin;
\.


--
-- Data for Name: p_task; Type: TABLE DATA; Schema: public; Owner: grape0grape1
--

COPY public.p_task (p_task_id, p_user_id, title, detail, deadline, url, created, p_corp_id, isdone) FROM stdin;
\.


--
-- Data for Name: p_user; Type: TABLE DATA; Schema: public; Owner: grape0grape1
--

COPY public.p_user (p_user_id, firstname, lastname, birthday, gender, post1, post2, prefecture, city, address1, address2, mail, phone, background1, background2, background3, background4, background5, background6, background7, background8, background9, background10, licence1, licence2, licence3, licence4, licence5, created, userid, password, ispublic) FROM stdin;
\.


--
-- Name: p_corp_p_corp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grape0grape1
--

SELECT pg_catalog.setval('public.p_corp_p_corp_id_seq', 1, false);


--
-- Name: p_task_p_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grape0grape1
--

SELECT pg_catalog.setval('public.p_task_p_task_id_seq', 1, false);


--
-- Name: p_user_p_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: grape0grape1
--

SELECT pg_catalog.setval('public.p_user_p_user_id_seq', 1, false);


--
-- Name: p_corp p_corp_pkey; Type: CONSTRAINT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_corp
    ADD CONSTRAINT p_corp_pkey PRIMARY KEY (p_corp_id);


--
-- Name: p_task p_task_pkey; Type: CONSTRAINT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_task
    ADD CONSTRAINT p_task_pkey PRIMARY KEY (p_task_id);


--
-- Name: p_user p_user_pkey; Type: CONSTRAINT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_user
    ADD CONSTRAINT p_user_pkey PRIMARY KEY (p_user_id);


--
-- Name: p_corp p_corp_p_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_corp
    ADD CONSTRAINT p_corp_p_user_id_fkey FOREIGN KEY (p_user_id) REFERENCES public.p_user(p_user_id);


--
-- Name: p_task p_task_p_corp_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_task
    ADD CONSTRAINT p_task_p_corp_id_fkey FOREIGN KEY (p_corp_id) REFERENCES public.p_corp(p_corp_id);


--
-- Name: p_task p_task_p_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: grape0grape1
--

ALTER TABLE ONLY public.p_task
    ADD CONSTRAINT p_task_p_user_id_fkey FOREIGN KEY (p_user_id) REFERENCES public.p_user(p_user_id);


--
-- PostgreSQL database dump complete
--

