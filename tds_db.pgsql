--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: tds_link_statistics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tds_link_statistics (
    id integer NOT NULL,
    linkid integer NOT NULL,
    clicks integer,
    unique_clicks integer
);


ALTER TABLE public.tds_link_statistics OWNER TO postgres;

--
-- Name: tds_link_statistics_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_link_statistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_link_statistics_id_seq OWNER TO postgres;

--
-- Name: tds_link_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_link_statistics_id_seq OWNED BY public.tds_link_statistics.id;


--
-- Name: tds_link_statistics_linkid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_link_statistics_linkid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_link_statistics_linkid_seq OWNER TO postgres;

--
-- Name: tds_link_statistics_linkid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_link_statistics_linkid_seq OWNED BY public.tds_link_statistics.linkid;


--
-- Name: tds_redirected_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tds_redirected_links (
    id integer NOT NULL,
    link character varying(50)
);


ALTER TABLE public.tds_redirected_links OWNER TO postgres;

--
-- Name: tds_redirected_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_redirected_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_redirected_links_id_seq OWNER TO postgres;

--
-- Name: tds_redirected_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_redirected_links_id_seq OWNED BY public.tds_redirected_links.id;


--
-- Name: tds_site_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tds_site_link (
    id integer NOT NULL,
    link text NOT NULL
);


ALTER TABLE public.tds_site_link OWNER TO postgres;

--
-- Name: tds_site_linkpref; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tds_site_linkpref (
    id integer NOT NULL,
    landing_page character varying(50) NOT NULL,
    country character varying(2) NOT NULL,
    weight double precision NOT NULL,
    link_id integer
);


ALTER TABLE public.tds_site_linkpref OWNER TO postgres;

--
-- Name: tds_site_linkpref_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_site_linkpref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_site_linkpref_id_seq OWNER TO postgres;

--
-- Name: tds_site_linkpref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_site_linkpref_id_seq OWNED BY public.tds_site_linkpref.id;


--
-- Name: tds_site_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_site_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_site_links_id_seq OWNER TO postgres;

--
-- Name: tds_site_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_site_links_id_seq OWNED BY public.tds_site_link.id;


--
-- Name: tds_site_linkstat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tds_site_linkstat (
    id integer NOT NULL,
    total_clicks integer NOT NULL,
    unique_clicks integer NOT NULL,
    last_ip character varying(50) NOT NULL,
    countries integer NOT NULL,
    link_id integer
);


ALTER TABLE public.tds_site_linkstat OWNER TO postgres;

--
-- Name: tds_site_linkstat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_site_linkstat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_site_linkstat_id_seq OWNER TO postgres;

--
-- Name: tds_site_linkstat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_site_linkstat_id_seq OWNED BY public.tds_site_linkstat.id;


--
-- Name: tds_site_userstat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tds_site_userstat (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    ip_address character varying(50) NOT NULL,
    country character varying(2) NOT NULL,
    link_id integer
);


ALTER TABLE public.tds_site_userstat OWNER TO postgres;

--
-- Name: tds_site_userstat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tds_site_userstat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tds_site_userstat_id_seq OWNER TO postgres;

--
-- Name: tds_site_userstat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tds_site_userstat_id_seq OWNED BY public.tds_site_userstat.id;


--
-- Name: users_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_profile (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_profile OWNER TO postgres;

--
-- Name: users_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_profile_id_seq OWNER TO postgres;

--
-- Name: users_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: tds_link_statistics id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_link_statistics ALTER COLUMN id SET DEFAULT nextval('public.tds_link_statistics_id_seq'::regclass);


--
-- Name: tds_link_statistics linkid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_link_statistics ALTER COLUMN linkid SET DEFAULT nextval('public.tds_link_statistics_linkid_seq'::regclass);


--
-- Name: tds_redirected_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_redirected_links ALTER COLUMN id SET DEFAULT nextval('public.tds_redirected_links_id_seq'::regclass);


--
-- Name: tds_site_link id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_link ALTER COLUMN id SET DEFAULT nextval('public.tds_site_links_id_seq'::regclass);


--
-- Name: tds_site_linkpref id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_linkpref ALTER COLUMN id SET DEFAULT nextval('public.tds_site_linkpref_id_seq'::regclass);


--
-- Name: tds_site_linkstat id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_linkstat ALTER COLUMN id SET DEFAULT nextval('public.tds_site_linkstat_id_seq'::regclass);


--
-- Name: tds_site_userstat id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_userstat ALTER COLUMN id SET DEFAULT nextval('public.tds_site_userstat_id_seq'::regclass);


--
-- Name: users_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add links	1	add_links
2	Can change links	1	change_links
3	Can delete links	1	delete_links
4	Can view links	1	view_links
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
29	Can add profile	8	add_profile
30	Can change profile	8	change_profile
31	Can delete profile	8	delete_profile
32	Can view profile	8	view_profile
33	Can add link	1	add_link
34	Can change link	1	change_link
35	Can delete link	1	delete_link
36	Can view link	1	view_link
37	Can add link prefs	9	add_linkprefs
38	Can change link prefs	9	change_linkprefs
39	Can delete link prefs	9	delete_linkprefs
40	Can view link prefs	9	view_linkprefs
41	Can add link pref	10	add_linkpref
42	Can change link pref	10	change_linkpref
43	Can delete link pref	10	delete_linkpref
44	Can view link pref	10	view_linkpref
45	Can add link stat	11	add_linkstat
46	Can change link stat	11	change_linkstat
47	Can delete link stat	11	delete_linkstat
48	Can view link stat	11	view_linkstat
49	Can add user stat	12	add_userstat
50	Can change user stat	12	change_userstat
51	Can delete user stat	12	delete_userstat
52	Can view user stat	12	view_userstat
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$150000$z8ewcXI2XeyI$gi3Ohe3eDtNjaP7/EiAelU+op7B/ptcbU2YRo36DNc0=	\N	f	user2			n2@gmail.com	f	t	2019-08-31 13:26:51.197218+02
2	pbkdf2_sha256$150000$Tdmi2uFAt7Lb$hBt8FQ81eNezYpaESSR0Ld22jv8QUb+S4xTeRk46xOs=	2019-08-31 14:16:57.415687+02	f	user1				f	t	2019-08-31 13:22:13.249627+02
4	pbkdf2_sha256$150000$pxOkPjMt2XgE$hmQtullMMDDa3CpbU8ca2nby/dZE16EetM5SOpcr0EE=	2019-08-31 16:06:17.681251+02	f	user3			radio@ht.com	f	t	2019-08-31 16:05:45.791117+02
5	pbkdf2_sha256$150000$qsTeFXMSLGh0$UCVn7KWg6+thmIVSkpjwSINhwBIe/CsljXwWM4H2RZk=	\N	f	testuser			test@mail.com	f	t	2019-09-01 23:54:36.091936+02
6	pbkdf2_sha256$150000$uektRejsOFfN$aEBpWOEQKNcVXSL4Tig5edvt+fmkbiHynKGAmEXUKOs=	2019-09-07 12:27:35.310902+02	f	userjana			jana@mail.com	f	t	2019-09-07 12:24:42.181199+02
7	pbkdf2_sha256$150000$TN0pNYt1ic0y$fvHiAHYlG6gWzcHIIExT2oK9TP/0WG8OvMWDLbdVjwY=	2019-09-10 23:52:42.676424+02	f	kori			ks@gmail.com	f	t	2019-09-10 23:52:37.481423+02
1	pbkdf2_sha256$150000$jaVvt49UhLo9$D2PqiE+7VEZuV/RG1d1fRPE9TxDtqDVl8F8lNPoHtbc=	2019-09-12 19:37:02.870694+02	t	jana			jana_milutinovic@yahoo.com	t	t	2019-08-31 12:32:16.502678+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-08-31 12:36:11.063095+02	2	https://mind.now/234rs	2	[{"changed": {"fields": ["link"]}}]	1	1
2	2019-08-31 16:03:44.570101+02	1	jana Profile	1	[{"added": {}}]	8	1
3	2019-08-31 16:58:55.119895+02	4	https://mind.now/qwerty	3		1	1
4	2019-08-31 16:58:55.128891+02	3	https://mind.now/qwerty	3		1	1
5	2019-08-31 21:47:06.122673+02	22	asdfqwersads	3		1	1
6	2019-08-31 21:47:06.133683+02	21	http://mind.now/123456	3		1	1
7	2019-08-31 21:47:06.136673+02	20	http://mind.now/123456	3		1	1
8	2019-08-31 21:47:06.140673+02	19	http://mind.now/123456	3		1	1
9	2019-08-31 21:47:06.143673+02	18	http://mind.now/asdewq	3		1	1
10	2019-08-31 21:47:06.14667+02	16	http://mind.now/123456	3		1	1
11	2019-08-31 21:47:06.150675+02	15	http://mind.now/123456	3		1	1
12	2019-08-31 21:47:06.153672+02	14	http://mind.now/123456	3		1	1
13	2019-08-31 21:47:06.157671+02	13	http://mind.now/jana	3		1	1
14	2019-08-31 21:47:06.160668+02	12	http://mind.now/123asd	3		1	1
15	2019-08-31 21:47:06.162667+02	11	http://mind.now/asd	3		1	1
16	2019-08-31 21:47:06.165669+02	9	http://mind.now/12asdd	3		1	1
17	2019-08-31 21:47:06.168679+02	8	https://minnow.com	3		1	1
18	2019-08-31 21:47:06.171672+02	7	sdasdad	3		1	1
19	2019-09-07 12:29:40.820157+02	15	LinkPref object (15)	1	[{"added": {}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	users	profile
1	tds_site	link
9	tds_site	linkprefs
10	tds_site	linkpref
11	tds_site	linkstat
12	tds_site	userstat
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-08-29 10:03:24.956815+02
2	auth	0001_initial	2019-08-29 10:03:25.719834+02
3	admin	0001_initial	2019-08-29 10:03:26.79445+02
4	admin	0002_logentry_remove_auto_add	2019-08-29 10:03:26.925462+02
5	admin	0003_logentry_add_action_flag_choices	2019-08-29 10:03:26.962459+02
6	contenttypes	0002_remove_content_type_name	2019-08-29 10:03:27.118456+02
7	auth	0002_alter_permission_name_max_length	2019-08-29 10:03:27.138462+02
8	auth	0003_alter_user_email_max_length	2019-08-29 10:03:27.174454+02
9	auth	0004_alter_user_username_opts	2019-08-29 10:03:27.208462+02
10	auth	0005_alter_user_last_login_null	2019-08-29 10:03:27.245556+02
11	auth	0006_require_contenttypes_0002	2019-08-29 10:03:27.252459+02
12	auth	0007_alter_validators_add_error_messages	2019-08-29 10:03:27.292457+02
13	auth	0008_alter_user_username_max_length	2019-08-29 10:03:27.441463+02
14	auth	0009_alter_user_last_name_max_length	2019-08-29 10:03:27.473458+02
15	auth	0010_alter_group_name_max_length	2019-08-29 10:03:27.503457+02
16	auth	0011_update_proxy_permissions	2019-08-29 10:03:27.532456+02
17	sessions	0001_initial	2019-08-29 10:03:27.643455+02
18	tds_site	0001_initial	2019-08-29 10:03:27.894463+02
19	users	0001_initial	2019-08-31 15:59:48.578983+02
20	tds_site	0002_auto_20190831_1611	2019-08-31 16:11:36.211207+02
21	tds_site	0003_auto_20190901_1155	2019-09-01 11:55:31.728506+02
22	tds_site	0004_auto_20190901_2041	2019-09-01 20:41:54.129742+02
23	tds_site	0005_auto_20190902_0001	2019-09-02 00:01:11.009515+02
24	tds_site	0006_auto_20190903_2239	2019-09-03 22:40:00.2623+02
25	tds_site	0007_auto_20190908_1258	2019-09-08 12:58:26.515538+02
26	tds_site	0008_auto_20190911_2207	2019-09-11 22:07:15.786897+02
27	tds_site	0009_linkstat_userstat	2019-09-12 17:05:05.804655+02
28	tds_site	0010_auto_20190912_1709	2019-09-12 17:09:56.835887+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
onx0zrwzwdb7pt4f01l9j5kdr6vgwbah	Y2VhMDUxZDY0YjU0NzEwOTVhYjMzZGNlODc0MGY4YzdkYmQzNTc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZGRiNmUzOTNlZjVhMTk0OWU2MjY3Yjc0MDcwODc0NDZiMWMzMjAwIn0=	2019-09-17 22:21:21.117799+02
ty9cqdut09yprgx2pwkplqxpp1b7m19q	Y2VhMDUxZDY0YjU0NzEwOTVhYjMzZGNlODc0MGY4YzdkYmQzNTc2MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZGRiNmUzOTNlZjVhMTk0OWU2MjY3Yjc0MDcwODc0NDZiMWMzMjAwIn0=	2019-09-26 19:37:02.884698+02
\.


--
-- Data for Name: tds_link_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tds_link_statistics (id, linkid, clicks, unique_clicks) FROM stdin;
\.


--
-- Data for Name: tds_redirected_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tds_redirected_links (id, link) FROM stdin;
\.


--
-- Data for Name: tds_site_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tds_site_link (id, link) FROM stdin;
6	https://mind.now/jana
1	https://mind.now/abc1
2	https://mind.now/234bg
10	http://mind.now/123
27	http://mind.now/ok1
30	http://mind.now/bgacr
31	http://mind.now/tds01
32	http://mind.now/tds02
33	http://mind.now/tds03
34	http://mind.now/test1
\.


--
-- Data for Name: tds_site_linkpref; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tds_site_linkpref (id, landing_page, country, weight, link_id) FROM stdin;
9	https://mind.now/ok2	RS	3	27
35	https://mind.now/123RS	RS	0.400000000000000022	10
36	https://mind.now/123RS	RS	0.400000000000000022	2
41	https://mind.now/janaRU	RU	0.900000000000000022	30
42	https://mind.now/jana2	TU	0.400000000000000022	30
8	https://mind.now/jan5	RS	5	1
49	https://mind.now/tdsRS	RS	0.5	33
37	https://mind.now/jana2	RS	0.5	6
43	https://mind.now/janaCR	SE	0.5	6
44	https://mind.now/janaCRO	CR	0.130000000000000004	6
45	https://mind.now/jana2	SE	1.10000000000000009	6
46	https://mind.now/janaZI	AO	0.119999999999999996	6
47	https://mind.now/janaZI	AL	1.12999999999999989	6
21	https://mind.now/janaRS	DZ	1.55000000000000004	6
40	https://mind.now/janaUK	AF	1.62000000000000011	6
51	https://mind.now/jana2	BS	1.55000000000000004	6
48	https://mind.now/janaKI	KI	1.1399999999999999	6
38	https://mind.now/jaM	RS	1	6
\.


--
-- Data for Name: tds_site_linkstat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tds_site_linkstat (id, total_clicks, unique_clicks, last_ip, countries, link_id) FROM stdin;
2	1	1	127.0.0.1	1	6
\.


--
-- Data for Name: tds_site_userstat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tds_site_userstat (id, "timestamp", ip_address, country, link_id) FROM stdin;
\.


--
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profile (id, user_id) FROM stdin;
1	1
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: tds_link_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_link_statistics_id_seq', 1, false);


--
-- Name: tds_link_statistics_linkid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_link_statistics_linkid_seq', 1, false);


--
-- Name: tds_redirected_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_redirected_links_id_seq', 1, false);


--
-- Name: tds_site_linkpref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_site_linkpref_id_seq', 51, true);


--
-- Name: tds_site_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_site_links_id_seq', 34, true);


--
-- Name: tds_site_linkstat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_site_linkstat_id_seq', 2, true);


--
-- Name: tds_site_userstat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tds_site_userstat_id_seq', 1, false);


--
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tds_link_statistics tds_link_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_link_statistics
    ADD CONSTRAINT tds_link_statistics_pkey PRIMARY KEY (id, linkid);


--
-- Name: tds_redirected_links tds_redirected_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_redirected_links
    ADD CONSTRAINT tds_redirected_links_pkey PRIMARY KEY (id);


--
-- Name: tds_site_link tds_site_link_link_7bc41fe5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_link
    ADD CONSTRAINT tds_site_link_link_7bc41fe5_uniq UNIQUE (link);


--
-- Name: tds_site_linkpref tds_site_linkpref_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_linkpref
    ADD CONSTRAINT tds_site_linkpref_pkey PRIMARY KEY (id);


--
-- Name: tds_site_link tds_site_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_link
    ADD CONSTRAINT tds_site_links_pkey PRIMARY KEY (id);


--
-- Name: tds_site_linkstat tds_site_linkstat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_linkstat
    ADD CONSTRAINT tds_site_linkstat_pkey PRIMARY KEY (id);


--
-- Name: tds_site_userstat tds_site_userstat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_userstat
    ADD CONSTRAINT tds_site_userstat_pkey PRIMARY KEY (id);


--
-- Name: users_profile users_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);


--
-- Name: users_profile users_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: tds_site_linkpref_link_id_id_66e64a74; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tds_site_linkpref_link_id_id_66e64a74 ON public.tds_site_linkpref USING btree (link_id);


--
-- Name: tds_site_linkstat_link_id_b2de1b07; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tds_site_linkstat_link_id_b2de1b07 ON public.tds_site_linkstat USING btree (link_id);


--
-- Name: tds_site_userstat_link_id_6768367c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tds_site_userstat_link_id_6768367c ON public.tds_site_userstat USING btree (link_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tds_link_statistics tds_link_statistics_linkid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_link_statistics
    ADD CONSTRAINT tds_link_statistics_linkid_fkey FOREIGN KEY (linkid) REFERENCES public.tds_redirected_links(id);


--
-- Name: tds_site_linkpref tds_site_linkpref_link_id_04d977b2_fk_tds_site_link_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_linkpref
    ADD CONSTRAINT tds_site_linkpref_link_id_04d977b2_fk_tds_site_link_id FOREIGN KEY (link_id) REFERENCES public.tds_site_link(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tds_site_linkstat tds_site_linkstat_link_id_b2de1b07_fk_tds_site_link_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_linkstat
    ADD CONSTRAINT tds_site_linkstat_link_id_b2de1b07_fk_tds_site_link_id FOREIGN KEY (link_id) REFERENCES public.tds_site_link(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tds_site_userstat tds_site_userstat_link_id_6768367c_fk_tds_site_linkpref_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tds_site_userstat
    ADD CONSTRAINT tds_site_userstat_link_id_6768367c_fk_tds_site_linkpref_id FOREIGN KEY (link_id) REFERENCES public.tds_site_linkpref(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_profile users_profile_user_id_2112e78d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

