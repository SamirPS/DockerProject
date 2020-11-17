--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2020-11-15 18:38:01

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
-- TOC entry 200 (class 1259 OID 16394)
-- Name: coefficient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coefficient (
    concours text,
    groupe text,
    modelisation double precision,
    maths double precision,
    physique double precision,
    si double precision,
    informatique double precision,
    francais double precision,
    anglais double precision,
    bonification double precision,
    boursier double precision,
    nonboursier double precision
);


ALTER TABLE public.coefficient OWNER TO postgres;

--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 200
-- Name: TABLE coefficient; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.coefficient IS 'TRIAL';


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.concours; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.concours IS 'TRIAL';


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.groupe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.groupe IS 'TRIAL';


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.modelisation; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.modelisation IS 'TRIAL';


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.maths; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.maths IS 'TRIAL';


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.physique; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.physique IS 'TRIAL';


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.si; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.si IS 'TRIAL';


--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.informatique; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.informatique IS 'TRIAL';


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.francais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.francais IS 'TRIAL';


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.anglais; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.anglais IS 'TRIAL';


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.bonification; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.bonification IS 'TRIAL';


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.boursier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.boursier IS 'TRIAL';


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN coefficient.nonboursier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.coefficient.nonboursier IS 'TRIAL';


--
-- TOC entry 203 (class 1259 OID 16641)
-- Name: ecoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ecoles (
    id integer NOT NULL,
    acronyme text,
    nom text,
    groupe text,
    commune text,
    region text,
    admission text,
    statut text,
    points integer
);


ALTER TABLE public.ecoles OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16639)
-- Name: ecoles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ecoles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ecoles_id_seq OWNER TO postgres;

--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 202
-- Name: ecoles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ecoles_id_seq OWNED BY public.ecoles.id;


--
-- TOC entry 206 (class 1259 OID 16657)
-- Name: ecolespe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ecolespe (
    idecole integer,
    idspe integer,
    alternance text
);


ALTER TABLE public.ecolespe OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16650)
-- Name: specialite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.specialite (
    idspecialite integer NOT NULL,
    nomspe text
);


ALTER TABLE public.specialite OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16648)
-- Name: specialite_idspecialite_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.specialite_idspecialite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.specialite_idspecialite_seq OWNER TO postgres;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 204
-- Name: specialite_idspecialite_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.specialite_idspecialite_seq OWNED BY public.specialite.idspecialite;


--
-- TOC entry 201 (class 1259 OID 16430)
-- Name: sqlite_sequence; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sqlite_sequence (
    name text,
    seq text,
    trial345 character(1)
);


ALTER TABLE public.sqlite_sequence OWNER TO postgres;

--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE sqlite_sequence; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.sqlite_sequence IS 'TRIAL';


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN sqlite_sequence.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sqlite_sequence.name IS 'TRIAL';


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN sqlite_sequence.seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sqlite_sequence.seq IS 'TRIAL';


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 201
-- Name: COLUMN sqlite_sequence.trial345; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.sqlite_sequence.trial345 IS 'TRIAL';


--
-- TOC entry 2873 (class 2604 OID 16644)
-- Name: ecoles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ecoles ALTER COLUMN id SET DEFAULT nextval('public.ecoles_id_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 16653)
-- Name: specialite idspecialite; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.specialite ALTER COLUMN idspecialite SET DEFAULT nextval('public.specialite_idspecialite_seq'::regclass);


--
-- TOC entry 3005 (class 0 OID 16394)
-- Dependencies: 200
-- Data for Name: coefficient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coefficient (concours, groupe, modelisation, maths, physique, si, informatique, francais, anglais, bonification, boursier, nonboursier) FROM stdin;
CCS	Centrale	5	24	22	15	6	17	11	80	5	110
CCS	MinesPonts	1.5	8	6	4.5	2	5	3	30	0	310
CCS	ArtsetMetier	6.25	22	22	18.75	5	13	13	0	0	111
CCS	SIGMA	1.5	10	10	4.5	4	5	5	0	23	63
CCS	ISMANS	3.75	25	25	11.25	15	10	10	0	15	50
CCS	ESIXNormandie	2.5	10	10	7.5	5	5	5	0	0	50
CCS	MinesTelecom	1.5	8	6	4.5	2	5	3	15	0	185
CCP	CCINP	8	8	10	15	4	9	4	0	0	190
CCP	LoraineINP Nancy	8	8	10	15	4	9	4	15	26	52
CCP	ECAMRennes	8	10	12	12	3	9	4	0	10	40
CCP	EIL	6	10	10	12	5	9	6	0	15	30
CCP	EIVPParis	7	7	9	7	3	8	2	0	15	50
CCP	ENS	4	6	4	8	2	4	2	0	0	0
CCP	ENSAIT	4	10	8	4	4	5	5	0	0	25
CCP	ENSISA	8	8	10	15	4	9	4	20	10	25
CCP	LoraineINP Epinal	2	2	2	2	2	2	2	15	26	52
CCP	ENTPELYON	7	7	7	7	1	8	2	0	0	25
CCP	ESBNantes	2	4	4	5	0	5	5	0	15	30
CCP	ESIGELECRouen	3	4	4	5	2	4	3	0	0	20
CCP	ESIPECreteil	5	10	10	12	5	9	6	0	0	20
CCP	ESIREMDijon	4	4	4	8	4	4	4	20	15	25
CCP	ESTIABidart	4	4	4	4	4	4	4	0	10	20
CCP	ESTPParis	8	10	12	12	3	9	4	0	15	75
CCP	ToulouseINP	2	3	3	8	1	2	2	20	10	25
CCP	ISATNevers	4	8	6	12	4	4	3	0	15	30
CCP	ISEPParis	3	3	3	4	2	3	2	20	20	40
CCP	ISISCastres	6	10	10	12	5	9	6	0	0	30
CCP	3iLIngenieurs	3	5	4	5	5	3	3	30	10	30
CCP	Polytech	2	3	3	4	4	2	2	15	0	85
CCP	Grenoble INP	8	8	10	15	4	9	4	0	20	72
Epita	Concours Epita/Ipsa	0	5	0	5	0	0	5	0	0	85
\.


--
-- TOC entry 3008 (class 0 OID 16641)
-- Dependencies: 203
-- Data for Name: ecoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ecoles (id, acronyme, nom, groupe, commune, region, admission, statut, points) FROM stdin;
1	3IL Limoges	Institut d'ingénierie informatique de Limoges	3iLIngenieurs	Limoges	Nouvelle-Aquitaine	3iLIngenieurs	Consulaire	157
2	3IL Limoges	Institut d'ingénierie informatique de Limoges	3iLIngenieurs	Limoges	Nouvelle-Aquitaine	3iLIngenieurs	Consulaire	157
3	Agro	Bordeaux Sciences Agro	\N	Gradignan	Nouvelle-Aquitaine	\N	Public	173
4	Agrocampus	Agrocampus Ouest Angers	\N	Angers	Pays de la Loire	\N	Public	173
5	Agrocampus	Agrocampus Ouest Rennes	\N	Rennes	Bretagne	\N	Public	173
6	AgroParisTech	AgroParisTech	\N	Paris	Ile-de-France	\N	Public	173
7	AgroSup	AgroSup Dijon	\N	Dijon	Bourgogne-Franche-Comté	\N	Public	173
8	Chimie ParisTech	Chimie ParisTech	\N	Paris	Ile-de-France	\N	Public	173
9	CNAM Alsace	Conservatoire national des arts et métiers Alsace	Concours Cefipa	Illkirch-Graffenstaden	Grand-Est	Concours Cefipa	Public	99999
10	CNAM Amiens	Conservatoire national des arts et métiers Picardie	Concours Cefipa	Amiens	Hauts-de-France	Concours Cefipa	Public	99999
11	CNAM Avignon	Conservatoire national des arts et métiers PACA	Concours Cefipa	Avignon	Provence-Alpes-Côte d'Azur	Concours Cefipa	Public	99999
12	CNAM Chasseneuil	Conservatoire national des arts et métiers Poitou-Charentes - Futuroscope Chasseneuil	Concours Cefipa	Chasseneuil-du-Poitou	Nouvelle-Aquitaine	Concours Cefipa	Public	99999
13	CNAM Evreux	Conservatoire national des arts et métiers Haute-Normandie / ITII Haute-Normandie	Concours Cefipa	Evreux	Normandie	Concours Cefipa	Public	99999
14	CNAM La Roche	Conservatoire national des arts et métiers Pays de la Loire	Concours Cefipa	La-Roche-sur-Yon	Pays de la Loire	Concours Cefipa	Public	99999
15	CNAM Limoges	Conservatoire national des arts et métiers Limoges	Concours Cefipa	Limoges	Nouvelle-Aquitaine	Concours Cefipa	Public	99999
16	CNAM Nancy	Conservatoire national des arts et métiers Lorraine Nancy	Concours Cefipa	Nancy	Grand-Est	Concours Cefipa	Public	99999
17	CNAM Paris	Conservatoire national des arts et métiers Paris / CEFIPA	Concours Cefipa	Paris	Ile-de-France	Concours Cefipa	Public	99999
18	CNAM Reims	Conservatoire national des arts et métiers Champagne-Ardenne / IIT BTP	Concours Cefipa	Reims	Grand-Est	Concours Cefipa	Public	99999
19	CNAM Reims	Conservatoire national des arts et métiers Reims	Concours Cefipa	Reims	Grand-Est	Concours Cefipa	Public	99999
20	CPE Lyon	École supérieure chimie physique électronique de Lyon	CCINP	Villeurbanne	Auvergne-Rhône-Alpes	CCINP	Privé	578
21	CPE Lyon	École supérieure chimie physique électronique de Lyon	CCINP	Villeurbanne	Auvergne-Rhône-Alpes	CCINP	Privé	578
22	EA Salon-de-Provence	École de l'air	\N	Salon-de-Provence	Provence-Alpes-Côte d'Azur	\N	Privé	173
23	EBI Cergy	École de biologie industrielle	\N	Cergy	Ile-de-France	\N	Privé	173
24	ECAM Bourg	École catholique des arts et métiers de Lyon centre Ain Bourg-en-Bresse	\N	Bourge-en-bresse	Auvergne-Rhône-Alpes	\N	Public	173
25	ECAM EPMI	École catholique des arts et métiers / École d'électricité, de production et des méthodes indus.	Concours interne	Cergy	Ile-de-France	Concours interne	Privé	99999
26	ECAM Lyon	École catholique des arts et métiers de Lyon	\N	Lyon	Auvergne-Rhône-Alpes	\N	Privé	173
27	ECAM Rennes	École catholique des arts et métiers de Rennes	ECAMRennes	Rennes	Bretagne	ECAMRennes	Privé	363
28	ECAM Starsbourg	École catholique des arts et métiers de Strasbourg Europe	\N	Schiltigheim	Grand-Est	\N	Privé	173
29	ECE Paris	École centrale d'électronique	Dossier et entretien	Paris	Ile-de-France	Dossier et entretien	Privé	99999
30	Centrale Lille	École centrale de Lille	Centrale	Villeneuve-d'Ascq	Hauts-de-France	Centrale	Public	1342
31	Centrale Lyon	École centrale de Lyon	Centrale	Ecully	Auvergne-Rhône-Alpes	Centrale	Public	1369
32	Centrale Lyon	École centrale de Lyon	Centrale	Ecully	Auvergne-Rhône-Alpes	Centrale	Public	1369
33	Centrale Marseille	École centrale de Marseille	Centrale	Marseille	Provence-Alpes-Côte d'Azur	Centrale	Public	1205
34	Centrale Marseille	École centrale de Marseille	Centrale	Marseille	Provence-Alpes-Côte d'Azur	Centrale	Public	1205
35	Centrale Nantes	École centrale de Nantes	Centrale	Nantes	Pays de la Loire	Centrale	Public	1391
36	Centrale Nantes	École centrale de Nantes	Centrale	Nantes	Pays de la Loire	Centrale	Public	1391
37	Ecole navale	École navale de Brest	\N	Brest	Bretagne	\N	Public	173
38	Centrale Paris	École centrale de Paris	Centrale	Châtenay-Malabry	Ile-de-France	Centrale	Public	\N
39	Centrale Paris	École centrale de Paris	Centrale	Châtenay-Malabry	Ile-de-France	Centrale	Public	\N
40	ECPM Strasbourg	École européenne de chimie, polymères et matériaux	\N	Strasbourg	Grand-Est	\N	Public	173
41	EFREI Villejuif	École française d'électronique et d'informatique	Dossier et entretien	Villejuif	Ile-de-France	Dossier et entretien	Privé	99999
42	EI CESI Angoulême	École d'ingénieurs centre des études supérieures industrielles Angoulême / Sup BTP	Concours Cefipa	La Couronne	Nouvelle-Aquitaine	Concours Cefipa	Privé	99999
43	EI CESI Arras	École d'ingénieurs centre des études supérieures industrielles  Arras	Concours Cefipa	Arras	Hauts-de-France	Concours Cefipa	Privé	99999
44	EI CESI Bordeaux	École d'ingénieurs centre des études supérieures industrielles Bordeaux	Concours Cefipa	Blanquefort	Nouvelle-Aquitaine	Concours Cefipa	Privé	99999
45	EI CESI Écully	École d'ingénieurs centre des études supérieures industrielles Lyon	Concours Cefipa	Ecully	Auvergne-Rhône-Alpes	Concours Cefipa	Privé	99999
46	EI CESI La Réunion	École d'ingénieurs centre des études supérieures industrielles La Réunion / ITC BTP	Concours Cefipa	Saint-Pierre	Outre-mer	Concours Cefipa	Privé	99999
47	EI CESI La Rochelle	École d'ingénieurs centre des études supérieures industrielles La Rochelle / BTP	Concours Cefipa	La Rochelle	Nouvelle-Aquitaine	Concours Cefipa	Privé	99999
48	EI CESI Montpellier	École d'ingénieurs centre des études supérieures industrielles Montpellier/ ITC BTP	Concours Cefipa	Montpellier	Occitanie	Concours Cefipa	Privé	99999
49	EI CESI Nancy	École d'ingénieurs centre des études supérieures industrielles Nancy	Concours Cefipa	Villers-lès-Nancy	Grand-Est	Concours Cefipa	Privé	99999
50	EI CESI Nanterre	École d'ingénieurs centre des études supérieures industrielles Paris Nanterre / CESFA-BTP / CEFIPA	Concours Cefipa	Nanterre	Ile-de-France	Concours Cefipa	Privé	99999
51	EI CESI Nice	École d'ingénieurs centre des études supérieures industrielles Nice	Concours Cefipa	Valbonne	Provence-Alpes-Côte d'Azur	Concours Cefipa	Privé	99999
52	EI CESI Pau	École d'ingénieurs centre des études supérieures industrielles Pau	Concours Cefipa	Assat	Nouvelle-Aquitaine	Concours Cefipa	Privé	99999
53	EI CESI Rouen	École d'ingénieurs centre des études supérieures industrielles Rouen Mont-Saint-Aignan	Concours Cefipa	Mont-Saint-Aignan	Normandie	Concours Cefipa	Privé	99999
54	EI CESI Saint-Nazaire	École d'ingénieurs centre des études supérieures industrielles Saint-Nazaire	Concours Cefipa	Saint-Nazaire	Pays de la Loire	Concours Cefipa	Privé	99999
55	EI CESI Toulouse	École d'ingénieurs centre des études supérieures industrielles Toulouse	Concours Cefipa	Labège	Occitanie	Concours Cefipa	Privé	99999
56	EIDD Paris	École d'ingénieurs Denis Diderot	\N	Paris	Ile-de-France	\N	Public	173
57	EIGSI La Rochelle	École d'ingénieurs en génie des systèmes industriel	Dossier et entretien	La Rochelle	Nouvelle-Aquitaine	Dossier et entretien	Privé	99999
58	EIL Côte d'Opale	École d'ingénieurs du littoral Côte d'Opale	EIL	Longuenesse	Hauts-de-France	EIL	Public	405
59	EISTI Cergy	École internationale des sciences du traitement de l'information	Dossier et entretien	Cergy	Ile-de-France	Dossier et entretien	Privé	99999
60	EIVP Paris	École des ingénieurs de la ville de Paris	EIVPParis	Paris	Ile-de-France	EIVPParis	Public	357
61	ELISA Saint-Quentin	École d'ingénieurs des sciences aérospatiales	Concours interne	Saint-Quentin	Hauts-de-France	Concours interne	Privé	99999
62	EME Bruz	École des métiers de l'environnement	Dossier et entretien	Bruz	Bretagne	Dossier et entretien	Privé	99999
63	ENAC Toulouse	École nationale de l'aviation civile	\N	Toulouse	Occitanie	\N	Public	173
64	ENAC Toulouse	École nationale de l'aviation civile	\N	Toulouse	Occitanie	\N	Public	173
65	ENGEES Strasbourg	École nationale du génie de l'eau et de l'environnement de Strasbourg	CCINP	Strasbourg	Grand-Est	CCINP	Public	578
66	ENGEES Strasbourg	École nationale du génie de l'eau et de l'environnement de Strasbourg	CCINP	Strasbourg	Grand-Est	CCINP	Public	578
67	ENIB	École nationale d'ingénieurs de Brest	Dossier et entretien	Brest	Bretagne	Dossier et entretien	Public	99999
68	ENIM	École nationale d'ingénieurs de Metz	Dossier et entretien	Metz	Grand-Est	Dossier et entretien	Public	99999
69	ENISE	École nationale d'ingénieurs de Saint-Étienne	Dossier et entretien	Saint-Étienne	Auvergne-Rhône-Alpes	Dossier et entretien	Public	99999
70	ENS Cachan Paris-Saclay	Ecole normale supérieure de Cachan	ENS	Gif-sur-Yvette	Ile-de-France	ENS	Public	345
71	ENS Rennes	ENS Rennes	ENS	Rennes	Bretagne	ENS	Public	336
72	ENSAE Malakoff	École nationale de la statistique et de l'administration économique	\N	Malakoff	Ile-de-France	\N	Public	173
73	ENSAI Bruz	École nationale de la statistique et de l'analyse de l'information	\N	Bruz	Bretagne	\N	Public	173
74	ENSAIA Nancy	École nationale supérieure d'agronomie et des industries alimentaires	\N	Vandœuvre-lès-Nancy	Grand-Est	\N	Public	173
75	ENSAIS Nancy	Ecole Nationale Supérieure des Arts et Industries de Strasbourg 	\N	Vandœuvre-lès-Nancy	Grand-Est	\N	Public	173
76	ENSAIT Roubaix	École nationale supérieure des arts et industries textiles	ENSAIT	Roubaix	Hauts-de-France	ENSAIT	Public	\N
77	ENSAIT Roubaix	École nationale supérieure des arts et industries textiles	ENSAIT	Roubaix	Hauts-de-France	ENSAIT	Public	\N
78	ENSAM	Arts et Métiers ParisTech / École nationale supérieure d'arts et métiers	ArtsetMetier	Paris	Ile-de-France	ArtsetMetier	Public	99999
79	ENSAM	Arts et Métiers ParisTech / École nationale supérieure d'arts et métiers (Ingé2000)	Ingé2000	Paris	Ile-de-France	Ingé2000	Public	99999
80	ENSC Lille	École nationale supérieure de chimie Lille	\N	Villeneuve-d'Ascq	Hauts-de-France	\N	Public	173
81	ENSC Montpellier	École nationale supérieure de chimie Montpellier	\N	Montpellier	Occitanie	\N	Public	173
82	ENSC Rennes	École nationale supérieure de chimie Rennes	\N	Rennes	Bretagne	\N	Public	173
83	ENSCMu	École nationale supérieure de chimie de Mulhouse	\N	Mulhouse	Grand-Est	\N	Public	173
84	ENSEA Cergy	École nationale supérieure de l'électronique et de ses applications	ArtsetMetier	Cergy	Ile-de-France	ArtsetMetier	Public	99999
85	ENSEA Cergy	École nationale supérieure de l'électronique et de ses applications	ArtsetMetier	Cergy	Ile-de-France	ArtsetMetier	Public	99999
86	ENSG Nancy	École nationale supérieure de géologie	\N	Vandœuvre-lès-Nancy	Grand-Est	\N	Public	173
87	ENSG Géomatique	École nationale des sciences géographique	MinesTelecom	Champs-sur-Marne	Ile-de-France	MinesTelecom	Public	311
88	ENSI Poitiers	École nationale supérieure d’ingénieurs de Poitiers	CCINP	Poitiers	Nouvelle-Aquitaine	CCINP	Public	578
89	ENSIAME Valenciennes	École nationale supérieure d'ingénieurs en informatique automatique mécanique énergétique électronique	CCINP	Valenciennes	Hauts-de-France	CCINP	Public	578
90	ENSIBS	École nationale supérieure d'ingénieurs Bretagne sud / Réseau Polytech	Dossier et entretien	Lorient	Bretagne	Dossier et entretien	Public	99999
91	ENSIBS	École nationale supérieure d'ingénieurs Bretagne sud / Réseau Polytech	Dossier et entretien	Lorient	Bretagne	Dossier et entretien	Public	99999
92	ENSIC FITI	École nationale supérieure des industries chimiques FITI	\N	Nancy	Grand-Est	\N	Public	173
93	ENSIC FITI	École nationale supérieure des industries chimiques FITI	\N	Nancy	Grand-Est	\N	Public	173
94	ENSI Caen	École nationale supérieure d'ingénieurs de Caen	CCINP	Caen	Normandie	CCINP	Public	578
95	ENSIIE Evry	École nationale supérieure d'informatique pour l'industrie et l'entreprise	MinesTelecom	Évry	Ile-de-France	MinesTelecom	Public	311
96	ENSIIE Evry	École nationale supérieure d'informatique pour l'industrie et l'entreprise	MinesTelecom	Évry	Ile-de-France	MinesTelecom	Public	311
97	ENSIL-ENSCI Limoges	École nationale supérieure d'ingénieurs de Limoges - Ecole Nationale Supérieure de Céramique Industrielle	Dossier et entretien	Limoges	Nouvelle-Aquitaine	Dossier et entretien	Public	99999
98	ENSIM	École nationale supérieure d’ingénieurs du Mans	Dossier et entretien	Le Mans	Pays de la Loire	Dossier et entretien	Public	99999
99	ENSIM	École nationale supérieure d’ingénieurs du Mans	Dossier et entretien	Le Mans	Pays de la Loire	Dossier et entretien	Public	99999
100	ENSISA Mulhouse	École nationale supérieure d'ingénieurs sud Alsace	ENSISA	Mulhouse	Grand-Est	ENSISA	Public	540
101	ENSM Marseille	École nationale supérieure maritime	Dossier et entretien	Marseille	Provence-Alpes-Côte d'Azur	Dossier et entretien	Public	99999
102	ENSMM Besançon	École nationale supérieure de mécanique et des microtechniques de Besançon	CCINP	Besançon	Bourgogne-Franche-Comté	CCINP	Public	578
103	ENSSAT (Lannion)	École nationale supérieure des sciences appliquées et de technologie	MinesTelecom	Lannion	Bretagne	MinesTelecom	Public	311
104	ENSTA Bretagne	École nationale supérieure de techniques avancées Bretagne	MinesTelecom	Brest	Bretagne	MinesTelecom	Public	311
105	ENSTA Brest	École nationale supérieure de techniques avancées Bretagne	MinesTelecom	Brest	Bretagne	MinesTelecom	Public	311
106	ENSTA ParisTech	École nationale supérieure de techniques avancées	MinesPonts	Palaiseau	Ile-de-France	MinesPonts	Public	365
107	ENTPE Lyon	École nationale des travaux publics de l'État	ENTPELYON	Vaulx-en-Velin	Auvergne-Rhône-Alpes	ENTPELYON	Public	416
108	EOST Strasbourg	École et observatoire des sciences de la Terre	\N	Strasbourg	Grand-Est	\N	Public	173
109	EPF Sceaux	École polytechnique féminime	Banque CS	Sceaux	Ile-de-France	Banque CS	Privé	99999
110	EPITA	École pour l'informatique et les techniques avancées	Concours Epita/Ipsa	Le Kremlin-Bicêtre	Ile-de-France	Concours Epita/Ipsa	Privé	99999
111	ESA Angers	École supérieure d'agriculture	\N	Angers	Pays de la Loire	\N	Privé	173
112	ESAIP La Salle Angers	ESAIP Angers, Grasse (école d'Ingénieurs en informatique et prévention des risques)	Dossier et entretien	Saint-Barthélémy-d'Anjou	Pays de la Loire	Dossier et entretien	Privé	99999
113	ESB Nantes	École Supérieure du Bois	ESBNantes	Nantes	Pays de la Loire	ESBNantes	Privé	170
114	ESB Nantes	École Supérieure du Bois	ESBNantes	Nantes	Pays de la Loire	ESBNantes	Privé	170
115	ESBS	École supérieure de biotechnologie de Strasbourg / Réseau Polytech	\N	Illkirch-Graffenstaden	Grand-Est	\N	Public	173
116	ESCOM Compiègne	École Supérieure de Chimie Organique et Minérale	\N	Compiègne	Hauts-de-France	\N	Privé	173
117	ESEO Angers	École supérieure d'électronique de l'Ouest	Dossier et entretien	Angers	Pays de la Loire	Dossier et entretien	Privé	99999
118	ESEO Angers	École supérieure d'électronique de l'Ouest	Dossier et entretien	Angers	Pays de la Loire	Dossier et entretien	Privé	99999
119	ESFF Sèvres	École supérieure de fonderie et de forge	Concours interne	Sèvres	Ile-de-France	Concours interne	Privé	99999
120	ESGT Le Mans	École supérieure des géomètres et topographes	\N	Le Mans	Pays de la Loire	\N	Public	173
121	ESIAB Brest	École supérieure d’ingénieurs en agroalimentaire de Bretagne atlantique Brest / Réseau Polytech	\N	Plouzané	Bretagne	\N	Public	173
122	ESIAB Quimper	École supérieure d’ingénieurs en agroalimentaire de Bretagne atlantique Quimper/ IFRIA Bretagne / Réseau Polytech	Dossier et entretien	Quimper	Bretagne	Dossier et entretien	Public	99999
123	ESIEA Paris	École supérieure d'informatique électronique automatique	\N	Paris	Ile-de-France	\N	Privé	173
124	ESIEE Amiens	École supérieure d'ingénieurs en électrotechnique et électronique Amiens	ArtsetMetier	Amiens	Hauts-de-France	ArtsetMetier	Privé	99999
125	ESIEE Amiens	École supérieure d'ingénieurs en électrotechnique et électronique Amiens	Dossier et entretien	Amiens	Hauts-de-France	Dossier et entretien	Privé	99999
126	ESIEE Noisy	École supérieure d'ingénieurs en électrotechnique et électronique Paris	ArtsetMetier	Noisy-le-Grand	Ile-de-France	ArtsetMetier	Consulaire	99999
127	ESIEE Noisy	École supérieure d'ingénieurs en électrotechnique et électronique Paris	Dossier et entretien	Noisy-le-Grand	Ile-de-France	Dossier et entretien	Consulaire	99999
128	ESIGELEC Rouen	École supérieure d'ingénieurs en génie électrique	ESIGELECRouen	Saint-Étienne-du-Rouvray	Normandie	ESIGELECRouen	Privé	162
129	ESIGETEL Villejuif	École supérieure d'ingénieurs en informatique et génie des télécommunications	Dossier et entretien	Villejuif	Ile-de-France	Dossier et entretien	Privé	99999
130	ESILV Courbevoie	École supérieure d'ingénieurs Léonard-de-Vinci	Dossier et entretien	Courbevoie	Ile-de-France	Dossier et entretien	Privé	99999
131	ESIPE Champs-sur-Marne	École Supérieure d'Ingénieurs Paris-Est Marne-la-Vallée	Dossier et entretien	Champs-sur-Marne	Ile-de-France	Dossier et entretien	Public	99999
132	ESIPE Créteil	École Supérieure d'Ingénieurs Paris-Est Créteil	ESIPECreteil	Créteil	Ile-de-France	ESIPECreteil	Public	528
133	ESIR	École supérieure d'ingénieurs de Rennes / Réseau Polytech	Dossier et entretien	Rennes	Bretagne	Dossier et entretien	Public	99999
134	ESIReims	École supérieure d'ingénieurs de Reims / Réseau Polytech	\N	Reims	Grand-Est	\N	Public	173
135	ESIREM Dijon	École supérieure d'ingénieurs de recherche en matériaux et en infotronique / Réseau Polytech	ESIREMDijon	Dijon	Bourgogne-Franche-Comté	ESIREMDijon	Public	\N
136	ESIROI	École supérieure d'ingénieurs Réunion océan Indien / Réseau Polytech	\N	Saint-Denis	Outre-mer	\N	Public	173
137	ESITC Cachan	École supérieure d'ingénieurs des travaux de la construction Cachan	\N	Cachan	Ile-de-France	\N	Privé	173
138	ESITC Cachan	École supérieure d'ingénieurs des travaux de la construction Cachan 	\N	Cachan	Ile-de-France	\N	Privé	173
139	ESITC Caen	École supérieure d'ingénieurs des travaux de la construction Caen	\N	Epron	Normandie	\N	Privé	173
140	ESITC Caen	École supérieure d'ingénieurs des travaux de la construction Caen	\N	Epron	Normandie	\N	Privé	173
141	ESITC Metz	École supérieure d'ingénieurs des travaux de la construction Metz	Dossier et entretien	Metz	Grand-Est	Dossier et entretien	Privé	99999
142	ESITech	École Supérieure d'Ingénieurs en Technologies innovantes	Dossier et entretien	Saint-Étienne-du-Rouvray	Normandie	Dossier et entretien	Public	99999
143	ESIX Normandie	École Supérieure d’Ingénieurs de l’Université de Caen - dpt Agroalimentaire	ESIXNormandie	Caen	Normandie	ESIXNormandie	Public	286
144	ESIX Normandie	ESIX - dpt Génie des systèmes industriels et systèmes embarqués / Réseau Polytech	ESIXNormandie	Caen	Normandie	ESIXNormandie	Public	286
145	ESIX Normandie	ESIX - dpt Génie des systèmes industriels et systèmes embarqués / Réseau Polytech	ESIXNormandie	Caen	Normandie	ESIXNormandie	Public	286
146	ESME SUDRIA	École spéciale de mécanique et d'électricité	Concours Epita/Ipsa	Paris	Ile-de-France	Concours Epita/Ipsa	Privé	99999
147	ESME SUDRIA	École spéciale de mécanique et d'électricité	Concours Epita/Ipsa	Paris	Ile-de-France	Concours Epita/Ipsa	Privé	99999
148	ESPCI Paris	École supérieure de physique et de chimie industrielles	\N	Paris	Ile-de-France	\N	Public	173
149	ESTACA Paris	École Supérieure des Techniques Aéronautiques et de Construction Automobile	\N	Montigny-le-Bretonneux	Ile-de-France	\N	Privé	173
150	ESTIA Bidart	École supérieure des technologies industrielles avancées	ESTIABidart	Bidart	Nouvelle-Aquitaine	ESTIABidart	Consulaire	202
151	ESTP Paris	École supérieure d'ingénieurs des travaux de la construction	ESTPParis	Cachan	Ile-de-France	ESTPParis	Privé	490
152	ESTP Paris	École supérieure d'ingénieurs des travaux de la construction	ESTPParis	Cachan	Ile-de-France	ESTPParis	Privé	490
153	EXIA CESI Aix	École d'ingénieurs en informatique du CESI Aix-en-Provence	Concours CESI	Aix-en-Provence	Provence-Alpes-Côte d'Azur	Concours CESI	Privé	99999
154	EXIA CESI Arras	École d'ingénieurs en informatique du CESI Arras	Concours CESI	Arras	Hauts-de-France	Concours CESI	Privé	99999
155	EXIA CESI Bordeaux	École d'ingénieurs en informatique du CESI Blanquefort	Concours CESI	Blanquefort	Nouvelle-Aquitaine	Concours CESI	Privé	99999
156	EXIA CESI Lyon	École d'ingénieurs en informatique du CESI Ecully	Concours CESI	Ecully	Auvergne-Rhône-Alpes	Concours CESI	Privé	99999
157	EXIA CESI Labège	École d'ingénieurs en informatique du CESI Labège	Concours CESI	Labège	Occitanie	Concours CESI	Privé	99999
158	EXIA CESI Mont-Saint-Aignan	École d'ingénieurs en informatique du CESI Mont-Saint-Aignan	Concours CESI	Mont-Saint-Aignan	Normandie	Concours CESI	Privé	99999
159	EXIA CESI Nancy	École d'ingénieurs en informatique du CESI Nancy	Concours CESI	Vandœuvre-lès-Nancy	Grand-Est	Concours CESI	Privé	99999
160	EXIA CESI Nanterre	École d'ingénieurs en informatique du CESI Nanterre	Concours CESI	Nanterre	Ile-de-France	Concours CESI	Privé	99999
161	EXIA CESI Nice	École d'ingénieurs en informatique du CESI Nice Sophia-Antipolis	Concours CESI	Valbonne	Provence-Alpes-Côte d'Azur	Concours CESI	Privé	99999
162	EXIA CESI Orléans	École d'ingénieurs en informatique du CESI Orléans	Concours CESI	Orléans	Centre-Val de Loire	Concours CESI	Privé	99999
163	EXIA CESI Pau	École d'ingénieurs en informatique du CESI Pau	Concours CESI	Pau	Nouvelle-Aquitaine	Concours CESI	Privé	99999
164	EXIA CESI Reims	École d'ingénieurs en informatique du CESI Reims	Concours CESI	Reims	Grand-Est	Concours CESI	Privé	99999
165	EXIA CESI Saint-Nazaire	École d'ingénieurs en informatique du CESI Saint-Nazaire	Concours CESI	Saint-Nazaire	Pays de la Loire	Concours CESI	Privé	99999
166	EXIA CESI Starsbourg	École d'ingénieurs en informatique du CESI Strasbourg	Concours CESI	Lingolsheim	Grand-Est	Concours CESI	Privé	99999
167	HEI Lille	Hautes études d'ingénieur	Dossier et entretien	Lille	Hauts-de-France	Dossier et entretien	Privé	99999
168	ICAM Lille	Institut catholique d'arts et métiers	Dossier et entretien	Lille	Hauts-de-France	Dossier et entretien	Privé	99999
169	IG2I Lens	École centrale de Lille / IG2I Lens	Dossier et entretien	Lens	Hauts-de-France	Dossier et entretien	Public	99999
170	IG2I Lens	École centrale de Lille / IG2I Lens 	Dossier et entretien	Lens	Hauts-de-France	Dossier et entretien	Public	99999
171	IMT Atlantique	Mines de Nantes + Télécom Bretagne	MinesPonts	Brest	Bretagne	MinesPonts	Public	365
172	IMT Atlantique	Mines de Nantes + Télécom Bretagne	MinesPonts	Brest	Bretagne	MinesPonts	Public	365
173	IMT Lille Douai (Mines Douai)	Mines de Douai + Télécom Lille	MinesTelecom	Douai	Hauts-de-France	MinesTelecom	Public	311
174	IMT Lille Douai	Mines de Douai + Télécom Lille	MinesTelecom	Douai	Hauts-de-France	MinesTelecom	Public	311
175	IMT Mines Albi-Carmaux	Mines d'Albi-Carmaux	MinesTelecom	Albi	Occitanie	MinesTelecom	Public	311
176	IMT Mines Albi	Mines d'Albi-Carmaux	MinesTelecom	Albi	Occitanie	MinesTelecom	Public	311
177	IMT Mines Alès	Mines d'Alès	MinesTelecom	Alès	Occitanie	MinesTelecom	Public	311
178	IMT Mines Alès	Mines d'Alès	MinesTelecom	Alès	Occitanie	MinesTelecom	Public	311
179	Ingé2000	Ingénieurs 2000	Dossier et entretien	Marne-la-Vallée	Ile-de-France	Dossier et entretien	Privé	99999
180	Loraine INP - ENSGSI Nancy	INP Lorraine / École européenne d'ingénieurs en génie des matériaux	LoraineINP Nancy	Nancy	Grand-Est	LoraineINP Nancy	Public	\N
181	INP-EI Purpan	INP Toulouse / École d'ingénieurs de Purpan	\N	Toulouse	Occitanie	\N	Public	173
182	Toulouse INP - ENIT Tarbes	INP Toulouse / École nationale d'ingénieurs de Tarbes	ToulouseINP	Tarbes	Occitanie	ToulouseINP	Public	\N
183	Toulouse INP - ENIT Tarbes	INP Toulouse / École nationale d'ingénieurs de Tarbes	ToulouseINP	Tarbes	Occitanie	ToulouseINP	Public	\N
184	INP-ENM	INP Toulouse/ École nationale de la météorologie	\N	Toulouse	Occitanie	\N	Public	173
185	INP-ENSAT	INP Toulouse / École nationale supérieure agronomique de Toulouse	\N	Castanet-Tolosan	Occitanie	\N	Public	173
186	INP-ENSAT	INP Toulouse / École nationale supérieure agronomique de Toulouse	\N	Castanet-Tolosan	Occitanie	\N	Public	173
187	INP-ENSC	INP Bordeaux / École nationale supérieure de chimie / Réseau Polytech	Dossier et entretien	Talence	Nouvelle-Aquitaine	Dossier et entretien	Public	99999
188	INP-ENSCBP	INP Bordeaux / École nationale supérieure de chimie, de biologie et de physique	\N	Pessac	Nouvelle-Aquitaine	\N	Public	173
189	Grenoble INP-ENSE3	INP Grenoble / École nationale supérieure de l'énergie, l'eau et l'environnement	CCINP	Grenoble	Auvergne-Rhône-Alpes	CCINP	Public	578
190	INP-ENSEEIHT Toulouse	INP Toulouse / École nationale supérieure d'électrotechnique, électronique, informatique, hydraulique et télécommunications	CCINP	Toulouse	Occitanie	CCINP	Public	578
191	INP-ENSEEIHT	INP Toulouse / École nationale supérieure d'électrotechnique, électronique, informatique, hydraulique et télécommunications	CCINP	Toulouse	Occitanie	CCINP	Public	578
192	INP-ENSEGID	INP Bordeaux / Ensegid	\N	Pessac	Nouvelle-Aquitaine	\N	Public	173
193	Bordeaux INP-ENSEIRB	INP Bordeaux / École nationale supérieure d'électronique, informatique, télécommunications, mathématiques et méca de Bordeaux / Matméca	CCINP	Talence	Nouvelle-Aquitaine	CCINP	Public	578
194	INP-ENSEIRB	INP Bordeaux / École nationale supérieure d'électronique, informatique, télécommunications, mathématiques et méca de Bordeaux / Matméca	CCINP	Talence	Nouvelle-Aquitaine	CCINP	Public	578
195	ENSEM Nancy	INP Lorraine / École nationale supérieure d'électricité et de mécanique	CCINP	Vandœuvre-lès-Nancy	Grand-Est	CCINP	Public	578
196	Loraine INP - ENSGSI Nancy	INP Lorraine / École nationale supérieure en génie des systèmes industriels	Banque CCINP	Nancy	Grand-Est	Banque CCINP	Public	99999
197	ENSGTI Pau	INP Bordeaux / École nationale supérieure en génie des technologies industrielles	CCINP	Pau	Nouvelle-Aquitaine	CCINP	Public	578
198	ENSIACET Toulouse	INP Toulouse/ École nationale supérieure des ingénieurs en arts chimiques et technologiques	CCINP	Toulouse	Occitanie	CCINP	Public	578
199	INP-ENSIACET	INP Toulouse/ École nationale supérieure des ingénieurs en arts chimiques et technologiques	CCINP	Toulouse	Occitanie	CCINP	Public	578
200	INP-ENSIMAG	INP Grenoble / École nationale supérieure d'informatique et de mathématiques appliquées de Grenoble	\N	Saint-Martin-d'Hères	Auvergne-Rhône-Alpes	\N	Public	173
201	INP-ENSTBB	INP Bordeaux  / École nationale supérieure de technologie des biomolécules de Bordeaux / Réseau Polytech	Dossier et entretien	Bordeaux	Nouvelle-Aquitaine	Dossier et entretien	Public	99999
202	Loraine INP - ENSTIB Epinal	INP Lorraine / École nationale supérieure des technologies et industries du bois	LoraineINP Epinal	Épinal	Grand-Est	LoraineINP Epinal	Public	\N
203	INP-ESISAR	INP Grenoble / École nationale supérieure en systèmes avancés et réseaux	Dossier et entretien	Valence	Auvergne-Rhône-Alpes	Dossier et entretien	Public	99999
204	INP-ESISAR	INP Grenoble / École nationale supérieure en systèmes avancés et réseaux	Dossier et entretien	Valence	Auvergne-Rhône-Alpes	Dossier et entretien	Public	99999
205	Grenoble INP - Génie Industriel	INP Grenoble Génie industriel	Grenoble INP	Grenoble	Auvergne-Rhône-Alpes	Grenoble INP	Public	\N
206	Grenoble INP-Pagora	INP Grenoble / École internationale du papier, de la communication imprimée et des biomatériaux	CCINP	Saint-Martin-d'Hères	Auvergne-Rhône-Alpes	CCINP	Public	578
207	Grenoble INP-Phelma	INP Grenoble / École nationale supérieure de physique, électronique, matériaux	CCINP	Grenoble	Auvergne-Rhône-Alpes	CCINP	Public	578
208	INSA CVL	Institut national des sciences appliquées Centre-Val de Loire	Dossier et entretien	Bourges	Centre-Val de Loire	Dossier et entretien	Public	99999
209	INSA Lyon	Institut national des sciences appliquées Lyon	Dossier et entretien	Villeurbanne	Auvergne-Rhône-Alpes	Dossier et entretien	Public	99999
210	INSA Lyon	Institut national des sciences appliquées Lyon	Dossier et entretien	Villeurbanne	Auvergne-Rhône-Alpes	Dossier et entretien	Public	99999
211	INSA Rennes	Institut national des sciences appliquées Rennes	Dossier et entretien	Rennes	Bretagne	Dossier et entretien	Public	99999
212	INSA Rouen	Institut national des sciences appliquées Rouen	Dossier et entretien	Saint-Étienne-du-Rouvray	Normandie	Dossier et entretien	Public	99999
213	INSA Rouen	Institut national des sciences appliquées Rouen	Dossier et entretien	Saint-Étienne-du-Rouvray	Normandie	Dossier et entretien	Public	99999
214	INSA Strasbourg	Institut national des sciences appliquées Strasbourg	Dossier et entretien	Strasbourg	Grand-Est	Dossier et entretien	Public	99999
215	INSA Strasbourg	Institut national des sciences appliquées Strasbourg	Dossier et entretien	Strasbourg	Grand-Est	Dossier et entretien	Public	99999
216	INSA Toulouse	Institut national des sciences appliquées Toulouse	Dossier et entretien	Toulouse	Occitanie	Dossier et entretien	Public	99999
217	INSA Toulouse	Institut national des sciences appliquées Toulouse	Dossier et entretien	Toulouse	Occitanie	Dossier et entretien	Public	99999
218	SupOptique	Institut d'optique théorique et appliquée / SupOptique	Centrale	Palaiseau	Ile-de-France	Centrale	Privé	1300
219	IPSA Ivry	Institut polytechnique des sciences avancées	Concours Epita/Ipsa	Ivry-sur-Seine	Ile-de-France	Concours Epita/Ipsa	Privé	99999
220	ISA BTP	Institut Supérieur Aquitain du Bâtiment et des Travaux Publics	\N	Anglet	Nouvelle-Aquitaine	\N	Public	173
221	ISA Lille	Institut supérieur d'agriculture de Lille	\N	Lille	Hauts-de-France	\N	Privé	173
222	ISAE - SUPAERO Toulouse	Institut supérieur de l'aéronautique et de l'espace / Supaéro Toulouse	MinesPonts	Toulouse	Occitanie	MinesPonts	Public	365
223	ISAE - SUPAERO Toulouse	Institut supérieur de l'aéronautique et de l'espace / Supaéro Toulouse	MinesPonts	Toulouse	Occitanie	MinesPonts	Public	365
224	ENSMA ISEA Poitiers	École nationale supérieure de mécanique et d’aérotechnique	CCINP	Futuroscope	Nouvelle-Aquitaine	CCINP	Public	578
225	ISAE-ISMEP	Institut supérieur de l'aéronautique et de l'espace / Supméca	\N	Paris	Ile-de-France	\N	Public	173
226	ISARA Lyon	Institut supérieur d'agriculture Rhône-Alpes	\N	Lyon	Auvergne-Rhône-Alpes	\N	Privé	173
227	ISAT Nevers	Institut supérieur de l'automobile et des transports / Réseau Polytech	ISATNevers	Nevers	Bourgogne-Franche-Comté	ISATNevers	Public	353
228	ISAT Nevers	Institut supérieur de l'automobile et des transports / Réseau Polytech	ISATNevers	Nevers	Bourgogne-Franche-Comté	ISATNevers	Public	353
229	ISEL Le Havre	Institut supérieur d'études logistiques / Réseau Polytech	\N	Le Havre	Normandie	\N	Public	173
230	ISEN Brest	Institut supérieur de l'électronique et du numérique / Yncréa Ouest	Dossier et entretien	Brest	Bretagne	Dossier et entretien	Privé	99999
231	ISEN Lille	Institut supérieur de l'électronique et du numérique / Yncréa Nord	Dossier et entretien	Lille	Hauts-de-France	Dossier et entretien	Privé	99999
232	ISEN Toulon	Institut supérieur de l'électronique et du numérique / Yncréa Méditerranée	Dossier et entretien	Toulon	Provence-Alpes-Côte d'Azur	Dossier et entretien	Privé	99999
233	ISEP Paris	Institut supérieur d'électronique de Paris	ISEPParis	Paris	Ile-de-France	ISEPParis	Privé	131
234	ISIFC Besançon	Institut supérieur d'ingénieurs de Franche-Comté / Réseau Polytech	Dossier et entretien	Besançon	Bourgogne-Franche-Comté	Dossier et entretien	Public	99999
235	ISIMA Clermont-Ferrand	Institut supérieur d'informatique, de modélisation et de leurs applications	CCINP	Aubière	Auvergne-Rhône-Alpes	CCINP	Public	578
236	ISIS Castres	Ecole d’ingénieurs en Informatique et Systèmes d’Information pour la Santé  / Réseau Polytech	ISISCastres	Castres	Occitanie	ISISCastres	Public	554
237	ISMANS CESI Le Mans	Institut supérieur des matériaux et mécaniques avancés	ISMANS	Le Mans	Pays de la Loire	ISMANS	Consulaire	343
238	Mines Saint-Etienne (ISMIN)	Mines de Saint-Étienne Gardanne	MinesTelecom	Gardanne	Provence-Alpes-Côte d'Azur	MinesTelecom	Public	311
239	ISTIA Angers	Institut des sciences et techniques de l'ingénieur d'Angers	\N	Angers	Pays de la Loire	\N	Public	173
240	ISTOM Cergy	École Supérieure d'Agrodéveloppement	\N	Cergy	Ile-de-France	\N	Privé	173
241	ISTP Saint-Étienne	Institut supérieur des techniques de la performance	Dossier et entretien	Saint-Étienne	Auvergne-Rhône-Alpes	Dossier et entretien	Privé	99999
242	ISTY Vélizy	Institut des sciences et techniques des Yvelines / Réseau Polytech	Ingé2000	Vélizy-Villacoublay	Ile-de-France	Ingé2000	Public	99999
243	ITECH Ecully	Institut textile et chimique	\N	Ecully	Auvergne-Rhône-Alpes	\N	Privé	173
244	ITEEM Lille	École centrale de Lille / ITEEM	\N	Villeneuve-d'Ascq	Hauts-de-France	\N	Public	173
245	Mines de Nancy	Mines de Nancy - Université de Lorraine	MinesPonts	Nancy	Grand-Est	MinesPonts	Public	365
246	Mines Lorraine	Mines de Nancy - Université de Lorraine	MinesPonts	Nancy	Grand-Est	MinesPonts	Public	365
247	Mines Nancy	Mines de Nancy Formation Ingé Matériaux et Gestion Prod	\N	Vandœuvre-lès-Nancy	Grand-Est	\N	Public	173
248	Mines ParisTech	Mines de Paris ParisTech	MinesPonts	Paris	Ile-de-France	MinesPonts	Public	365
249	Mines ParisTech	Mines de Paris ParisTech	MinesPonts	Paris	Ile-de-France	MinesPonts	Public	365
250	Mines de Saint-Etienne	Mines de Saint-Étienne	MinesPonts	Saint-Étienne	Auvergne-Rhône-Alpes	MinesPonts	Public	365
251	Oniris Nantes	Oniris Cursus ingénieur Nantes	\N	Nantes	Pays de la Loire	\N	Public	173
252	Paoli Tech	Paoli Tech Corte	Dossier et entretien	Corte	Corse	Dossier et entretien	Public	99999
253	Polytech Annecy-Chambéry	Polytech Annecy-Chambéry	Polytech	Annecy-le-Vieux	Auvergne-Rhône-Alpes	Polytech	Public	173
254	Polytech Annecy	Polytech Annecy-Chambéry	Polytech	Annecy-le-Vieux	Auvergne-Rhône-Alpes	Polytech	Public	173
255	Polytech Clermont-Ferrand	Polytech Clermont-Ferrand	Polytech	Aubière	Auvergne-Rhône-Alpes	Polytech	Public	173
256	Polytech Grenoble	Polytech Grenoble	Polytech	Grenoble	Auvergne-Rhône-Alpes	Polytech	Public	173
257	Polytech Lille	Polytech Lille	Polytech	Villeneuve-d'Ascq	Hauts-de-France	Polytech	Public	173
258	Polytech Lyon	Polytech Lyon, Roanne	Polytech	Villeurbanne	Auvergne-Rhône-Alpes	Polytech	Public	173
259	Polytech Marseille	Polytech Marseille	Polytech	Marseille	Provence-Alpes-Côte d'Azur	Polytech	Public	173
260	Polytech Montpellier	Polytech Montpellier	Polytech	Montpellier	Occitanie	Polytech	Public	173
261	Polytech Nancy	Polytech Nancy / ESSTIN	Polytech	Vandœuvre-lès-Nancy	Grand-Est	Polytech	Public	173
262	Polytech Nantes	Polytech Nantes	Polytech	Nantes	Pays de la Loire	Polytech	Public	173
263	Polytech Nantes	Polytech Nantes	Polytech	Nantes	Pays de la Loire	Polytech	Public	173
264	Polytech Nice	Polytech Nice-Sophia	Polytech	Biot	Provence-Alpes-Côte d'Azur	Polytech	Public	173
265	Polytech Orléans	Polytech Orléans	Polytech	Orléans	Centre-Val de Loire	Polytech	Public	173
266	Polytech Paris	Polytech Paris-Sud Orsay	Polytech	Orsay	Ile-de-France	Polytech	Public	173
267	Polytech Tours	Polytech Tours	Polytech	Tours	Centre-Val de Loire	Polytech	Public	173
268	Polytech UPMC	Polytech Paris-Université Pierre et Marie Curie (UPMC)	Polytech	Paris	Ile-de-France	Polytech	Public	173
269	Polytechnique Palaiseau	École polytechnique X	MinesPonts	Palaiseau	Ile-de-France	MinesPonts	Public	365
270	Ponts ParisTech	École nationale des ponts et chaussées	MinesPonts	Champs-sur-Marne	Ile-de-France	MinesPonts	Public	365
271	SeaTech Toulon	École d'ingénieurs de l'Université de Toulon (EIUT)	CCINP	Toulon	Provence-Alpes-Côte d'Azur	CCINP	Public	578
272	SIGMA (ex IFMA) Clermont	ex IFMA Institut français de mécanique avancée	SIGMA	Aubière	Auvergne-Rhône-Alpes	SIGMA	Public	401
273	SIGMA (ex IFMA) Clermont	ex IFMA Institut français de mécanique avancée	SIGMA	Aubière	Auvergne-Rhône-Alpes	SIGMA	Public	401
274	Sup Galilée	Sup Galilée Paris 13 Villetaneuse  / Réseau Polytech	\N	Villetaneuse	Ile-de-France	\N	Public	173
275	Sup Galilée	Sup Galilée Paris 13 Villetaneuse  / Réseau Polytech	\N	Villetaneuse	Ile-de-France	\N	Public	173
276	SupAgro	Institut national d'études supérieures agronomiques de Montpellier	\N	Montpellier	Occitanie	\N	Public	173
277	Supélec (Gif, Metz et Rennes)	Centrale-Supélec Gif, Metz et Rennes	Centrale	Gif-sur-Yvette	Ile-de-France	Centrale	Public	1300
278	Supélec (Gif, Metz et Rennes)	Centrale-Supélec Gif, Metz et Rennes	Centrale	Gif-sur-Yvette	Ile-de-France	Centrale	Public	1300
279	SUPMECA Paris	SupMéca Paris Saint-Ouen ex Mécavenir	CCINP	Saint-Ouen	Ile-de-France	CCINP	Public	578
280	SupMéca Paris	SupMéca Paris Saint-Ouen ex Mécavenir	CCINP	Saint-Ouen	Ile-de-France	CCINP	Public	578
281	Télécom Sud Paris (Evry)	Télécom Sud Paris Évry, Palaiseau	MinesTelecom	Évry	Ile-de-France	MinesTelecom	Public	311
282	Télécom Nancy (ESIAL)	Télécom Nancy	MinesTelecom	Villers-lès-Nancy	Grand-Est	MinesTelecom	Public	311
283	Télécom ParisTech	Télécom ParisTech	MinesPonts	Paris	Ile-de-France	MinesPonts	Public	365
284	Télécom Phys	Télécom Physique Strasbourg	MinesTelecom	Illkirch-Graffenstaden	Grand-Est	MinesTelecom	Public	311
285	Télécom Saint-Étienne	Télecom Saint-Étienne	MinesTelecom	Saint-Étienne	Auvergne-Rhône-Alpes	MinesTelecom	Public	311
286	UFR Guadeloupe	UFR de sciences exactes et naturelles Guadeloupe	\N	Pointe-à-Pitre	Outre-mer	\N	Public	173
287	UniLaSalle Beauvais	UniLaSalle-campus de Beauvais	\N	Beauvais	Hauts-de-France	\N	Privé	173
288	UniLaSalle Rouen	UniLaSalle-campus de Rouen	\N	Mont-Saint-Aignan	Normandie	\N	Privé	173
289	UPEM	Université Paris-Est Marne-la-Vallée	\N	Marne-la-Vallée	Ile-de-France	\N	Public	173
290	UpssiTech	UpssiTech École d'ingénieurs Toulouse	Dossier et entretien	Toulouse	Occitanie	Dossier et entretien	Public	99999
291	UTBM	Université de technologie de Belfort-Montbéliard	Dossier et entretien	Belfort	Bourgogne-Franche-Comté	Dossier et entretien	Public	99999
292	UTC	Université de technologie de Compiègne	Dossier et entretien	Compiègne	Hauts-de-France	Dossier et entretien	Public	99999
293	UTT (Troyes)	Université de technologie de Troyes	Centrale	Troyes	Grand-Est	Centrale	Public	1109
294	VetAgro	VetAgro Sup Clermont-Ferrand	\N	Lempdes	Auvergne-Rhône-Alpes	\N	Public	173
\.


--
-- TOC entry 3011 (class 0 OID 16657)
-- Dependencies: 206
-- Data for Name: ecolespe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ecolespe (idecole, idspe, alternance) FROM stdin;
1	8	Non
1	13	Non
2	8	Oui
2	13	Oui
3	2	Oui
3	3	Oui
3	7	Oui
3	11	Oui
3	12	Oui
3	15	Oui
4	2	Oui
4	3	Oui
4	5	Oui
4	11	Oui
5	2	Oui
5	3	Oui
5	5	Oui
5	7	Oui
5	11	Oui
5	13	Oui
5	16	Oui
6	2	Oui
6	3	Oui
6	5	Oui
6	7	Oui
6	11	Oui
6	13	Oui
6	15	Oui
6	16	Oui
7	2	Non
7	3	Non
7	5	Non
7	7	Non
7	11	Non
7	13	Non
8	6	Non
8	9	Non
8	12	Non
8	15	Non
9	13	Oui
10	4	Oui
10	8	Oui
10	11	Oui
10	12	Oui
10	13	Oui
10	17	Oui
10	22	Oui
11	8	Oui
11	12	Oui
12	1	Oui
12	8	Oui
12	12	Oui
12	13	Oui
12	15	Oui
12	16	Oui
12	17	Oui
12	18	Oui
12	19	Oui
13	9	Oui
13	12	Oui
14	8	Oui
14	9	Oui
14	13	Oui
15	4	Oui
15	13	Oui
16	4	Oui
16	9	Oui
16	12	Oui
17	1	Oui
17	8	Oui
17	9	Oui
17	11	Oui
17	12	Oui
17	13	Oui
17	14	Oui
17	16	Oui
17	17	Oui
17	22	Oui
18	4	Oui
18	12	Oui
19	13	Oui
20	5	Non
20	6	Non
20	8	Non
20	11	Non
20	13	Non
20	16	Non
20	18	Non
20	20	Non
21	5	Oui
21	6	Oui
21	8	Oui
21	11	Oui
21	13	Oui
21	16	Oui
21	18	Oui
21	20	Oui
22	1	Non
22	24	Non
23	5	Non
23	6	Non
23	7	Non
23	12	Non
24	2	Oui
24	4	Oui
24	7	Oui
24	12	Oui
24	15	Oui
25	7	Oui
25	8	Oui
25	9	Oui
25	11	Oui
25	12	Oui
25	13	Oui
26	8	Oui
26	9	Oui
26	12	Oui
26	13	Oui
26	15	Oui
26	17	Oui
26	18	Oui
27	7	Oui
27	8	Oui
27	9	Oui
27	12	Oui
27	13	Oui
27	15	Oui
27	17	Oui
28	8	Non
28	9	Non
28	12	Non
28	13	Non
28	15	Non
28	17	Non
29	1	Oui
29	7	Oui
29	8	Oui
29	9	Oui
29	11	Oui
29	13	Oui
29	16	Oui
29	17	Oui
29	18	Oui
29	20	Oui
29	24	Oui
30	4	Non
30	7	Non
30	8	Non
30	9	Non
30	11	Non
30	12	Non
30	13	Non
30	17	Non
30	24	Non
31	1	Non
31	4	Non
31	5	Non
31	7	Non
31	9	Non
31	11	Non
31	12	Non
31	13	Non
31	16	Non
31	17	Non
31	18	Non
31	24	Non
32	1	Oui
32	4	Oui
32	5	Oui
32	7	Oui
32	9	Oui
32	11	Oui
32	12	Oui
32	13	Oui
32	16	Oui
32	17	Oui
32	18	Oui
32	24	Oui
33	1	Non
33	5	Non
33	6	Non
33	7	Non
33	8	Non
33	9	Non
33	11	Non
33	12	Non
33	13	Non
33	16	Non
33	17	Non
33	19	Non
34	1	Oui
34	5	Oui
34	6	Oui
34	7	Oui
34	8	Oui
34	9	Oui
34	11	Oui
34	12	Oui
34	13	Oui
34	16	Oui
34	17	Oui
34	19	Oui
35	4	Non
35	7	Non
35	8	Non
35	9	Non
35	11	Non
35	12	Non
35	13	Non
35	15	Non
35	16	Non
35	17	Non
35	19	Non
35	20	Non
36	4	Oui
36	7	Oui
36	8	Oui
36	9	Oui
36	12	Oui
36	13	Oui
36	15	Oui
36	16	Oui
36	17	Oui
36	19	Oui
36	20	Oui
37	1	Non
37	9	Non
37	13	Non
37	16	Non
37	19	Non
37	24	Non
40	5	Non
40	7	Non
40	9	Non
40	11	Non
40	15	Non
40	19	Non
40	20	Non
41	7	Oui
41	8	Oui
41	9	Oui
41	12	Oui
41	13	Oui
41	16	Oui
41	18	Oui
41	20	Oui
41	24	Oui
42	11	Oui
42	12	Oui
42	22	Oui
43	11	Oui
43	12	Oui
43	22	Oui
44	11	Oui
44	12	Oui
44	22	Oui
45	11	Oui
45	12	Oui
45	22	Oui
46	4	Oui
47	4	Oui
47	9	Oui
48	4	Oui
48	16	Oui
48	19	Oui
49	11	Oui
49	12	Oui
49	22	Oui
50	1	Oui
50	4	Oui
50	7	Oui
50	11	Oui
50	12	Oui
50	22	Oui
51	11	Oui
51	12	Oui
51	22	Oui
52	11	Oui
52	12	Oui
52	22	Oui
53	11	Oui
53	12	Oui
53	22	Oui
54	11	Oui
54	12	Oui
54	22	Oui
55	8	Oui
55	9	Oui
55	13	Oui
55	15	Oui
56	1	Non
56	6	Non
56	8	Non
56	12	Non
56	13	Non
56	15	Non
56	16	Non
56	17	Non
56	19	Non
57	4	Oui
57	8	Oui
57	9	Oui
57	11	Oui
57	12	Oui
57	13	Oui
57	17	Oui
57	24	Oui
58	8	Non
58	9	Non
58	12	Non
58	13	Non
58	16	Non
59	7	Non
59	8	Non
59	12	Non
59	13	Non
59	16	Non
59	18	Non
60	4	Non
60	11	Non
60	24	Non
61	1	Non
61	19	Non
62	9	Non
62	11	Non
63	1	Non
63	8	Non
63	13	Non
63	24	Non
64	1	Oui
64	8	Oui
64	24	Oui
65	2	Non
65	11	Non
66	2	Oui
66	11	Oui
67	8	Non
67	12	Non
67	13	Non
67	15	Non
68	1	Oui
68	8	Oui
68	12	Oui
68	13	Oui
68	15	Oui
68	17	Oui
69	4	Oui
69	12	Oui
69	15	Oui
69	17	Oui
69	19	Oui
70	10	Non
71	10	Non
72	7	Non
72	13	Non
72	16	Non
73	5	Non
73	12	Non
73	13	Non
73	16	Non
73	20	Non
74	2	Non
74	3	Non
74	5	Non
75	2	Oui
75	3	Oui
75	5	Oui
75	11	Oui
75	12	Oui
76	12	Non
76	14	Non
76	15	Non
76	18	Non
76	23	Non
77	12	Oui
77	14	Oui
77	15	Oui
77	18	Oui
77	23	Oui
78	1	Non
78	4	Non
78	7	Non
78	8	Non
78	9	Non
78	11	Non
78	12	Non
78	15	Non
78	17	Non
78	22	Non
78	24	Non
79	1	Oui
79	4	Oui
79	7	Oui
79	8	Oui
79	9	Oui
79	11	Oui
79	12	Oui
79	15	Oui
79	17	Oui
79	22	Oui
79	24	Oui
80	6	Non
80	12	Non
81	2	Oui
81	5	Oui
81	6	Oui
81	9	Oui
81	11	Oui
81	15	Oui
81	20	Oui
82	5	Non
82	6	Non
82	11	Non
83	6	Non
83	11	Non
83	15	Non
83	20	Non
83	22	Non
84	8	Non
84	13	Non
84	14	Non
84	18	Non
84	20	Non
85	8	Oui
85	13	Oui
85	14	Oui
85	18	Oui
85	20	Oui
86	4	Non
86	9	Non
86	11	Non
86	15	Non
86	21	Non
87	4	Non
87	11	Non
87	21	Non
88	4	Non
88	6	Non
88	8	Non
88	9	Non
88	11	Non
88	15	Non
88	21	Non
89	1	Oui
89	8	Oui
89	9	Oui
89	11	Oui
89	12	Oui
89	13	Oui
89	16	Oui
89	17	Oui
90	8	Non
90	12	Non
90	13	Non
90	17	Non
90	18	Non
90	22	Non
91	8	Oui
91	12	Oui
91	13	Oui
91	17	Oui
91	18	Oui
91	22	Oui
92	6	Oui
93	5	Non
93	6	Non
93	11	Non
93	12	Non
93	20	Non
94	6	Oui
94	8	Oui
94	9	Oui
94	12	Oui
94	13	Oui
94	15	Oui
94	17	Oui
94	18	Oui
95	13	Non
95	16	Non
95	18	Non
96	13	Oui
96	16	Oui
96	18	Oui
97	6	Non
97	8	Non
97	11	Non
97	12	Non
97	13	Non
97	15	Non
97	17	Non
97	19	Non
98	8	Non
98	13	Non
98	17	Non
99	8	Oui
99	13	Oui
99	17	Oui
100	8	Oui
100	12	Oui
100	13	Oui
100	15	Oui
100	17	Oui
100	23	Oui
101	12	Non
101	24	Non
102	8	Oui
102	12	Oui
102	13	Oui
102	15	Oui
102	17	Oui
102	18	Oui
102	19	Oui
102	20	Oui
103	8	Oui
103	13	Oui
103	18	Oui
103	19	Oui
104	1	Non
104	4	Non
104	8	Non
104	13	Non
104	17	Non
104	21	Non
105	1	Oui
105	4	Oui
105	8	Oui
105	13	Oui
105	17	Oui
105	21	Oui
106	1	Non
106	8	Non
106	9	Non
106	11	Non
106	12	Non
106	13	Non
106	16	Non
106	24	Non
107	4	Non
107	11	Non
107	24	Non
108	4	Non
108	9	Non
108	15	Non
108	21	Non
109	1	Oui
109	5	Oui
109	7	Oui
109	8	Oui
109	9	Oui
109	11	Oui
109	12	Oui
109	13	Oui
109	15	Oui
109	18	Oui
109	19	Oui
109	20	Oui
110	8	Oui
110	13	Oui
110	16	Oui
110	18	Oui
111	2	Oui
111	3	Oui
111	7	Oui
111	11	Oui
112	7	Oui
112	8	Oui
112	9	Oui
112	11	Oui
112	12	Oui
112	13	Oui
112	16	Oui
112	22	Oui
113	2	Non
113	7	Non
113	12	Non
113	15	Non
114	2	Oui
114	7	Oui
114	12	Oui
114	15	Oui
115	5	Non
115	6	Non
115	11	Non
115	20	Non
116	5	Oui
116	6	Oui
116	9	Oui
116	11	Oui
116	12	Oui
116	15	Oui
117	8	Oui
117	9	Oui
117	13	Oui
117	20	Oui
118	8	Non
118	9	Non
118	13	Non
118	20	Non
119	12	Oui
119	16	Oui
120	4	Non
120	11	Non
120	21	Non
121	3	Non
121	5	Non
121	6	Non
121	7	Non
121	12	Non
121	20	Non
122	3	Oui
122	12	Oui
122	13	Oui
123	8	Oui
123	13	Oui
123	20	Oui
124	8	Non
124	9	Non
124	11	Non
124	12	Non
124	13	Non
124	20	Non
125	8	Oui
125	9	Oui
125	11	Oui
125	12	Oui
125	13	Oui
125	20	Oui
126	5	Non
126	8	Non
126	9	Non
126	11	Non
126	12	Non
126	13	Non
126	17	Non
126	24	Non
127	5	Oui
127	8	Oui
127	9	Oui
127	11	Oui
127	12	Oui
127	13	Oui
127	17	Oui
127	24	Oui
128	7	Oui
128	8	Oui
128	12	Oui
128	13	Oui
128	20	Oui
129	1	Oui
129	7	Oui
129	8	Oui
129	9	Oui
129	12	Oui
129	13	Oui
129	20	Oui
129	24	Oui
130	1	Oui
130	4	Oui
130	7	Oui
130	8	Oui
130	9	Oui
130	13	Oui
130	16	Oui
130	17	Oui
130	24	Oui
131	4	Oui
131	8	Oui
131	13	Oui
131	17	Oui
131	22	Oui
132	5	Oui
132	8	Oui
132	12	Oui
132	13	Oui
132	15	Oui
132	20	Oui
133	4	Non
133	8	Non
133	13	Non
133	15	Non
133	20	Non
134	6	Non
134	9	Non
134	12	Non
134	15	Non
135	6	Non
135	8	Non
135	11	Non
135	12	Non
135	13	Non
135	15	Non
135	19	Non
136	3	Non
136	4	Non
136	9	Non
136	11	Non
136	13	Non
137	4	Non
138	4	Oui
139	4	Non
139	7	Non
139	11	Non
140	4	Oui
140	7	Oui
140	11	Oui
141	4	Non
142	5	Non
142	6	Non
142	8	Non
142	9	Non
142	12	Non
142	14	Non
142	15	Non
142	16	Non
142	19	Non
142	20	Non
142	24	Non
143	3	Oui
143	12	Oui
144	8	Non
144	9	Non
144	12	Non
144	13	Non
144	15	Non
144	17	Non
144	19	Non
145	8	Oui
145	9	Oui
145	12	Oui
145	13	Oui
145	15	Oui
145	17	Oui
145	19	Oui
146	1	Non
146	7	Non
146	8	Non
146	9	Non
146	11	Non
146	12	Non
146	13	Non
147	1	Oui
147	7	Oui
147	8	Oui
147	9	Oui
147	11	Oui
147	12	Oui
147	13	Oui
148	6	Non
148	15	Non
149	1	Non
149	11	Non
149	12	Non
149	17	Non
149	19	Non
150	8	Oui
150	9	Oui
150	12	Oui
150	13	Oui
150	17	Oui
151	4	Non
151	8	Non
151	9	Non
151	11	Non
151	15	Non
151	17	Non
151	21	Non
152	4	Oui
152	8	Oui
152	9	Oui
152	11	Oui
152	15	Oui
152	17	Oui
152	21	Oui
153	13	Non
154	13	Non
155	13	Non
156	13	Non
157	13	Non
158	13	Non
159	13	Non
160	13	Non
161	13	Non
162	13	Non
163	13	Non
164	13	Non
165	13	Non
166	13	Non
167	4	Oui
167	6	Oui
167	7	Oui
167	8	Oui
167	9	Oui
167	12	Oui
167	13	Oui
167	17	Oui
167	18	Oui
167	20	Oui
167	23	Oui
168	8	Oui
168	9	Oui
168	12	Oui
168	13	Oui
168	15	Oui
168	17	Oui
169	8	Non
169	12	Non
169	13	Non
169	18	Non
170	8	Oui
170	12	Oui
170	13	Oui
170	18	Oui
171	7	Non
171	8	Non
171	9	Non
171	11	Non
171	12	Non
171	13	Non
171	16	Non
171	18	Non
171	20	Non
171	22	Non
172	7	Oui
172	8	Oui
172	9	Oui
172	11	Oui
172	12	Oui
172	13	Oui
172	16	Oui
172	18	Oui
172	20	Oui
172	22	Oui
173	1	Non
173	4	Non
173	7	Non
173	8	Non
173	9	Non
173	11	Non
173	12	Non
173	13	Non
173	15	Non
173	17	Non
173	18	Non
173	22	Non
174	1	Oui
174	4	Oui
174	7	Oui
174	8	Oui
174	9	Oui
174	11	Oui
174	12	Oui
174	13	Oui
174	15	Oui
174	17	Oui
174	18	Oui
174	22	Oui
175	1	Non
175	3	Non
175	6	Non
175	8	Non
175	9	Non
175	11	Non
175	12	Non
175	15	Non
175	20	Non
176	1	Oui
176	3	Oui
176	6	Oui
176	8	Oui
176	9	Oui
176	11	Oui
176	12	Oui
176	15	Oui
176	20	Oui
177	4	Non
177	9	Non
177	11	Non
177	12	Non
177	13	Non
177	17	Non
177	21	Non
177	22	Non
178	4	Oui
178	9	Oui
178	11	Oui
178	12	Oui
178	13	Oui
178	17	Oui
178	21	Oui
178	22	Oui
179	8	Oui
179	9	Oui
179	12	Oui
179	13	Oui
179	15	Oui
179	17	Oui
179	22	Oui
180	15	Oui
181	2	Non
181	3	Non
181	7	Non
181	11	Non
182	4	Oui
182	8	Oui
182	12	Oui
182	13	Oui
182	15	Oui
182	17	Oui
182	19	Oui
183	4	Non
183	8	Non
183	12	Non
183	13	Non
183	15	Non
183	17	Non
184	21	Non
185	2	Non
185	3	Non
185	5	Non
185	9	Non
185	11	Non
186	2	Oui
186	3	Oui
186	5	Oui
186	9	Oui
187	8	Non
187	13	Non
187	18	Non
188	1	Non
188	3	Non
188	6	Non
188	7	Non
188	8	Non
188	9	Non
188	11	Non
188	12	Non
188	15	Non
188	16	Non
188	17	Non
188	19	Non
189	4	Oui
189	7	Oui
189	8	Oui
189	9	Oui
189	11	Oui
189	12	Oui
189	17	Oui
189	18	Oui
189	19	Oui
190	8	Non
190	9	Non
190	11	Non
190	12	Non
190	13	Non
190	16	Non
190	19	Non
191	8	Oui
191	9	Oui
191	11	Oui
191	12	Oui
191	16	Oui
191	19	Oui
192	11	Non
192	21	Non
192	22	Non
193	1	Non
193	8	Non
193	9	Non
193	12	Non
193	13	Non
193	15	Non
193	16	Non
193	17	Non
193	18	Non
193	19	Non
194	1	Oui
194	8	Oui
194	9	Oui
194	12	Oui
194	13	Oui
194	15	Oui
194	16	Oui
194	17	Oui
194	18	Oui
194	19	Oui
195	8	Oui
195	9	Oui
195	13	Oui
195	16	Oui
195	17	Oui
195	22	Oui
196	6	Non
196	8	Non
196	11	Non
196	12	Non
196	15	Non
196	17	Non
196	22	Non
197	6	Non
197	9	Non
197	11	Non
197	12	Non
197	13	Non
197	16	Non
198	6	Non
198	9	Non
198	11	Non
198	12	Non
198	15	Non
198	20	Non
198	22	Non
199	6	Oui
199	9	Oui
199	11	Oui
199	12	Oui
199	15	Oui
199	20	Oui
199	22	Oui
200	8	Oui
200	13	Oui
200	16	Oui
200	18	Oui
201	5	Non
201	20	Non
202	4	Oui
202	9	Oui
202	11	Oui
202	12	Oui
202	15	Oui
203	8	Non
203	13	Non
204	8	Oui
204	13	Oui
205	11	Oui
205	12	Oui
205	16	Oui
206	11	Oui
206	12	Oui
206	15	Oui
206	18	Oui
206	19	Oui
207	8	Oui
207	9	Oui
207	13	Oui
207	15	Oui
207	17	Oui
207	18	Oui
208	1	Oui
208	6	Oui
208	7	Oui
208	8	Oui
208	9	Oui
208	11	Oui
208	12	Oui
208	13	Oui
208	14	Oui
208	17	Oui
208	18	Oui
208	22	Oui
208	24	Oui
209	4	Non
209	5	Non
209	8	Non
209	9	Non
209	11	Non
209	12	Non
209	13	Non
209	15	Non
209	16	Non
209	17	Non
209	20	Non
210	4	Oui
210	5	Oui
210	8	Oui
210	9	Oui
210	11	Oui
210	12	Oui
210	13	Oui
210	15	Oui
210	16	Oui
210	17	Oui
211	4	Oui
211	7	Oui
211	8	Oui
211	11	Oui
211	12	Oui
211	13	Oui
211	14	Oui
211	15	Oui
211	16	Oui
211	17	Oui
211	22	Oui
212	1	Non
212	4	Non
212	6	Non
212	8	Non
212	9	Non
212	11	Non
212	12	Non
212	13	Non
212	15	Non
212	16	Non
212	17	Non
212	19	Non
212	22	Non
212	24	Non
213	1	Oui
213	4	Oui
213	6	Oui
213	8	Oui
213	9	Oui
213	11	Oui
213	12	Oui
213	13	Oui
213	15	Oui
213	16	Oui
213	17	Oui
213	19	Oui
213	22	Oui
213	24	Oui
214	4	Non
214	8	Non
214	9	Non
214	11	Non
214	12	Non
214	13	Non
214	15	Non
214	16	Non
214	17	Non
214	21	Non
215	4	Oui
215	8	Oui
215	9	Oui
215	11	Oui
215	12	Oui
215	13	Oui
215	15	Oui
215	16	Oui
215	17	Oui
215	21	Oui
216	4	Non
216	6	Non
216	8	Non
216	9	Non
216	11	Non
216	12	Non
216	13	Non
216	14	Non
216	15	Non
216	16	Non
216	17	Non
216	19	Non
217	4	Oui
217	6	Oui
217	8	Oui
217	9	Oui
217	12	Oui
217	13	Oui
217	14	Oui
217	15	Oui
217	16	Oui
217	17	Oui
217	19	Oui
219	1	Non
219	8	Non
219	9	Non
219	12	Non
219	13	Non
219	17	Non
221	2	Oui
221	3	Oui
221	11	Oui
222	1	Non
222	8	Non
222	9	Non
222	12	Non
222	13	Non
222	17	Non
222	21	Non
222	24	Non
223	1	Oui
223	8	Oui
223	9	Oui
223	12	Oui
223	13	Oui
223	17	Oui
223	21	Oui
223	24	Oui
224	9	Non
224	15	Non
224	17	Non
224	19	Non
225	1	Non
225	12	Non
225	15	Non
225	16	Non
225	17	Non
226	2	Oui
226	3	Oui
226	7	Oui
226	11	Oui
226	12	Oui
227	1	Non
227	7	Non
227	9	Non
227	12	Non
227	17	Non
227	24	Non
228	1	Oui
228	7	Oui
228	9	Oui
228	12	Oui
228	17	Oui
228	24	Oui
229	7	Oui
229	12	Oui
229	13	Oui
229	17	Oui
229	24	Oui
230	7	Oui
230	8	Oui
230	9	Oui
230	12	Oui
230	13	Oui
230	15	Oui
230	20	Oui
230	24	Oui
231	7	Oui
231	8	Oui
231	9	Oui
231	12	Oui
231	13	Oui
231	15	Oui
231	20	Oui
231	24	Oui
232	7	Oui
232	8	Oui
232	9	Oui
232	12	Oui
232	13	Oui
232	15	Oui
232	20	Oui
232	24	Oui
233	8	Oui
233	13	Oui
233	18	Oui
233	20	Oui
234	5	Non
234	8	Non
234	17	Non
234	20	Non
235	8	Non
235	13	Non
235	16	Non
236	5	Oui
236	8	Oui
236	13	Oui
236	20	Oui
237	12	Non
237	15	Non
237	16	Non
237	17	Non
237	19	Non
238	7	Non
238	8	Non
238	9	Non
238	13	Non
238	17	Non
239	4	Non
239	8	Non
239	12	Non
239	13	Non
239	20	Non
239	22	Non
240	2	Non
240	3	Non
240	11	Non
240	12	Non
241	8	Oui
241	9	Oui
242	8	Oui
242	13	Oui
242	17	Oui
242	18	Oui
243	6	Oui
243	15	Oui
243	23	Oui
244	7	Non
244	8	Non
244	9	Non
244	12	Non
244	13	Non
244	15	Non
244	17	Non
244	24	Non
245	5	Oui
245	8	Oui
245	12	Oui
245	13	Oui
245	15	Oui
245	16	Oui
245	17	Oui
245	18	Oui
245	21	Oui
245	24	Oui
246	5	Non
246	8	Non
246	12	Non
246	13	Non
246	15	Non
246	16	Non
246	17	Non
246	18	Non
246	21	Non
246	24	Non
247	15	Non
247	24	Non
248	4	Non
248	6	Non
248	7	Non
248	8	Non
248	9	Non
248	11	Non
248	12	Non
248	13	Non
248	15	Non
248	16	Non
248	17	Non
248	19	Non
248	21	Non
249	4	Oui
249	6	Oui
249	7	Oui
249	8	Oui
249	9	Oui
249	11	Oui
249	12	Oui
249	13	Oui
249	15	Oui
249	16	Oui
249	17	Oui
249	19	Oui
249	21	Oui
250	8	Oui
250	9	Oui
250	11	Oui
250	12	Oui
250	13	Oui
250	15	Oui
250	17	Oui
250	20	Oui
250	24	Oui
251	3	Oui
251	12	Oui
252	4	Non
252	9	Non
252	11	Non
253	4	Non
253	8	Non
253	9	Non
253	11	Non
253	12	Non
253	13	Non
253	15	Non
253	17	Non
254	4	Oui
254	8	Oui
254	9	Oui
254	11	Oui
254	12	Oui
254	13	Oui
254	15	Oui
254	17	Oui
255	3	Oui
255	4	Oui
255	5	Oui
255	6	Oui
255	11	Oui
255	12	Oui
255	13	Oui
255	15	Oui
255	16	Oui
255	19	Oui
256	4	Oui
256	8	Oui
256	11	Oui
256	12	Oui
256	13	Oui
256	15	Oui
256	18	Oui
256	20	Oui
256	21	Oui
256	22	Oui
257	3	Oui
257	4	Oui
257	5	Oui
257	7	Oui
257	8	Oui
257	11	Oui
257	12	Oui
257	13	Oui
257	14	Oui
257	15	Oui
257	17	Oui
257	19	Oui
257	21	Oui
258	7	Oui
258	8	Oui
258	12	Oui
258	13	Oui
258	15	Oui
258	16	Oui
258	17	Oui
258	19	Oui
258	20	Oui
259	1	Non
259	4	Non
259	5	Non
259	6	Non
259	8	Non
259	9	Non
259	11	Non
259	12	Non
259	13	Non
259	15	Non
259	17	Non
259	18	Non
259	19	Non
259	20	Non
259	22	Non
260	3	Oui
260	5	Oui
260	6	Oui
260	7	Oui
260	8	Oui
260	9	Oui
260	11	Oui
260	13	Oui
260	15	Oui
260	17	Oui
260	19	Oui
260	20	Oui
260	21	Oui
261	7	Oui
261	8	Oui
261	9	Oui
261	12	Oui
261	13	Oui
261	15	Oui
261	19	Oui
261	22	Oui
262	4	Non
262	5	Non
262	8	Non
262	9	Non
262	11	Non
262	12	Non
262	13	Non
262	15	Non
262	19	Non
263	4	Oui
263	5	Oui
263	8	Oui
263	9	Oui
263	11	Oui
263	12	Oui
263	13	Oui
263	15	Oui
263	19	Oui
264	4	Oui
264	5	Oui
264	7	Oui
264	8	Oui
264	9	Oui
264	11	Oui
264	13	Oui
264	16	Oui
264	18	Oui
264	20	Oui
264	21	Oui
265	1	Oui
265	4	Oui
265	6	Oui
265	8	Oui
265	9	Oui
265	11	Oui
265	12	Oui
265	13	Oui
265	15	Oui
265	16	Oui
265	17	Oui
265	19	Oui
265	20	Oui
266	8	Oui
266	9	Oui
266	11	Oui
266	12	Oui
266	13	Oui
266	15	Oui
266	19	Oui
267	5	Oui
267	8	Oui
267	9	Oui
267	11	Oui
267	12	Oui
267	13	Oui
267	15	Oui
267	17	Oui
267	24	Oui
268	1	Oui
268	3	Oui
268	4	Oui
268	6	Oui
268	8	Oui
268	9	Oui
268	12	Oui
268	13	Oui
268	15	Oui
268	16	Oui
268	17	Oui
268	20	Oui
268	21	Oui
268	24	Oui
269	5	Non
269	6	Non
269	7	Non
269	9	Non
269	11	Non
269	12	Non
269	13	Non
269	15	Non
269	16	Non
269	19	Non
269	24	Non
270	4	Non
270	7	Non
270	11	Non
270	12	Non
270	13	Non
270	15	Non
270	16	Non
270	17	Non
270	24	Non
271	1	Oui
271	4	Oui
271	8	Oui
271	9	Oui
271	12	Oui
271	13	Oui
271	15	Oui
271	16	Oui
271	18	Oui
271	19	Oui
271	21	Oui
272	8	Non
272	12	Non
272	15	Non
272	17	Non
273	6	Oui
273	8	Oui
273	12	Oui
273	15	Oui
273	17	Oui
274	4	Non
274	6	Non
274	9	Non
274	13	Non
274	16	Non
275	4	Oui
275	9	Oui
275	13	Oui
275	16	Oui
276	2	Oui
276	3	Oui
276	5	Oui
276	6	Oui
276	11	Oui
276	12	Oui
276	13	Oui
279	8	Non
279	12	Non
279	15	Non
279	17	Non
280	8	Oui
280	12	Oui
280	15	Oui
280	17	Oui
281	7	Oui
281	12	Oui
281	13	Oui
281	16	Oui
281	18	Oui
281	19	Oui
282	8	Oui
282	12	Oui
282	13	Oui
283	1	Non
283	8	Non
283	13	Non
283	16	Non
283	18	Non
284	8	Oui
284	12	Oui
284	13	Oui
284	15	Oui
284	16	Oui
284	17	Oui
284	18	Oui
284	19	Oui
284	20	Oui
284	22	Oui
285	8	Oui
285	12	Oui
285	13	Oui
285	18	Oui
285	19	Oui
286	9	Non
286	11	Non
286	12	Non
286	15	Non
286	22	Non
287	2	Oui
287	3	Oui
287	5	Oui
287	7	Oui
287	9	Oui
287	11	Oui
287	15	Oui
287	20	Oui
287	21	Oui
288	2	Oui
288	3	Oui
288	7	Oui
288	11	Oui
289	4	Oui
289	8	Oui
289	12	Oui
289	13	Oui
289	17	Oui
289	18	Oui
290	4	Non
290	8	Non
290	12	Non
290	13	Non
290	16	Non
290	21	Non
291	4	Oui
291	7	Oui
291	8	Oui
291	9	Oui
291	12	Oui
291	13	Oui
291	15	Oui
291	16	Oui
291	17	Oui
291	18	Oui
291	19	Oui
291	24	Oui
292	3	Oui
292	4	Oui
292	5	Oui
292	6	Oui
292	8	Oui
292	9	Oui
292	11	Oui
292	12	Oui
292	13	Oui
292	15	Oui
292	16	Oui
292	17	Oui
292	18	Oui
292	19	Oui
292	20	Oui
292	22	Oui
293	7	Oui
293	8	Oui
293	11	Oui
293	12	Oui
293	13	Oui
293	15	Oui
293	17	Oui
293	18	Oui
293	22	Oui
293	24	Oui
294	2	Oui
294	3	Oui
294	5	Oui
259	27	Oui
259	27	Non
\.


--
-- TOC entry 3010 (class 0 OID 16650)
-- Dependencies: 205
-- Data for Name: specialite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.specialite (idspecialite, nomspe) FROM stdin;
1	Aéronautique - Automobile - Ferroviaire - Naval - Spatial
2	Agriculture - Agronomie
3	Agroalimentaire
4	Bâtiment - Travaux publics - Génie civil
5	Biologie - Biochimie
6	Chimie - Génie des procédés
7	Commerce - Economie - Gestion - Finance
8	Electronique - Electrotechnique - Automatismes - Robotique
9	Energie
10	Enseignement
11	Environnement - Développement durable - Aménagement territoire
12	Fonction production
13	Informatique - Télécommunication
14	Instrumentation
15	Matériaux
16	Mathématiques - Modélisation
17	Mécanique
18	Multimédia - Infocom - Design industriel
19	Physique
20	Santé
21	Sciences de la Terre - Sciences de l'Univers
22	Sécurité - Prévention
23	Textile - Habillement
24	Transport - Logistique
27	Samir
\.


--
-- TOC entry 3006 (class 0 OID 16430)
-- Dependencies: 201
-- Data for Name: sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sqlite_sequence (name, seq, trial345) FROM stdin;
Ecole	1	T
EcoleS	294	T
Specialite	24	T
\.


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 202
-- Name: ecoles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ecoles_id_seq', 294, true);


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 204
-- Name: specialite_idspecialite_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.specialite_idspecialite_seq', 27, true);


-- Completed on 2020-11-15 18:38:01

--
-- PostgreSQL database dump complete
--

