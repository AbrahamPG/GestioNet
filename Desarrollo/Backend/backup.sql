--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

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


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

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
    first_name character varying(150) NOT NULL,
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
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

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


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

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


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

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


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

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
-- Name: productos_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos_products (
    id bigint NOT NULL,
    nombre character varying(20) NOT NULL,
    category character varying(12) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    image character varying(500),
    CONSTRAINT productos_products_stock_check CHECK ((stock >= 0))
);


ALTER TABLE public.productos_products OWNER TO postgres;

--
-- Name: productos_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.productos_products ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.productos_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: usuarios_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios_user (
    id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    nickname character varying(12) NOT NULL,
    password character varying(12) NOT NULL,
    age smallint NOT NULL,
    is_active boolean NOT NULL,
    CONSTRAINT usuarios_user_age_check CHECK ((age >= 0))
);


ALTER TABLE public.usuarios_user OWNER TO postgres;

--
-- Name: usuarios_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_user_id_seq OWNER TO postgres;

--
-- Name: usuarios_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_user_id_seq OWNED BY public.usuarios_user.id;


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
-- Name: usuarios_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user ALTER COLUMN id SET DEFAULT nextval('public.usuarios_user_id_seq'::regclass);


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
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add products	8	add_products
30	Can change products	8	change_products
31	Can delete products	8	delete_products
32	Can view products	8	view_products
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$870000$i7EoG5V0iZxxY2jAq6XmEV$UEvgYO7hhOR5qoniQtDeeInMz6mZd3qobdACCdlPeGg=	2025-02-28 23:55:22.986092-05	t	admin			adaliz@gmail.com	t	t	2025-02-13 19:52:15.926582-05
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
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	usuarios	user
8	productos	products
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-02-12 20:58:05.872887-05
2	auth	0001_initial	2025-02-12 20:58:06.000218-05
3	admin	0001_initial	2025-02-12 20:58:06.03145-05
4	admin	0002_logentry_remove_auto_add	2025-02-12 20:58:06.03944-05
5	admin	0003_logentry_add_action_flag_choices	2025-02-12 20:58:06.04845-05
6	contenttypes	0002_remove_content_type_name	2025-02-12 20:58:06.066441-05
7	auth	0002_alter_permission_name_max_length	2025-02-12 20:58:06.075442-05
8	auth	0003_alter_user_email_max_length	2025-02-12 20:58:06.084444-05
9	auth	0004_alter_user_username_opts	2025-02-12 20:58:06.092443-05
10	auth	0005_alter_user_last_login_null	2025-02-12 20:58:06.102446-05
11	auth	0006_require_contenttypes_0002	2025-02-12 20:58:06.105443-05
12	auth	0007_alter_validators_add_error_messages	2025-02-12 20:58:06.118446-05
13	auth	0008_alter_user_username_max_length	2025-02-12 20:58:06.145445-05
14	auth	0009_alter_user_last_name_max_length	2025-02-12 20:58:06.15244-05
15	auth	0010_alter_group_name_max_length	2025-02-12 20:58:06.163439-05
16	auth	0011_update_proxy_permissions	2025-02-12 20:58:06.170439-05
17	auth	0012_alter_user_first_name_max_length	2025-02-12 20:58:06.178439-05
18	sessions	0001_initial	2025-02-12 20:58:06.201441-05
19	usuarios	0001_initial	2025-02-13 19:50:24.80064-05
20	productos	0001_initial	2025-02-13 21:39:43.174841-05
21	productos	0002_rename_categoria_products_category_and_more	2025-02-13 21:39:43.183847-05
22	productos	0003_alter_products_nombre_alter_products_price	2025-02-18 17:55:55.507398-05
23	productos	0004_products_image	2025-02-27 00:54:23.263621-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
3z1dppfuzl0n105noxlahq4qjs6r6go6	.eJxVjDsOwjAQRO_iGln4E8dLSZ8zWLveBQeQI8VJhbg7iZQCqpHmvZm3SrguJa1N5jSyuiijTr8dYX5K3QE_sN4nnae6zCPpXdEHbXqYWF7Xw_07KNjKtu6cAxQ8e2c9uig9ecfRbuGBMTCDGKTAyMARgTqwhH02Prt8C9aqzxfneDhe:1tlfjS:saB3ViY6XbqD9RZZDxErtfrdfga5U7nxvfY9PKrX5h0	2025-03-07 21:59:10.414479-05
zct5mzoz7ft22p5mwgu4252y3iu2juyf	.eJxVjDsOwjAQRO_iGln4E8dLSZ8zWLveBQeQI8VJhbg7iZQCqpHmvZm3SrguJa1N5jSyuiijTr8dYX5K3QE_sN4nnae6zCPpXdEHbXqYWF7Xw_07KNjKtu6cAxQ8e2c9uig9ecfRbuGBMTCDGKTAyMARgTqwhH02Prt8C9aqzxfneDhe:1tmiiD:TZX0_0q1-sCCWeLJgnhLQeSwVNcLaVllpWjvZjDvILg	2025-03-10 19:22:13.803974-05
ub4n2wpuf8q17sz8tulvuzfwctpkfz4h	.eJxVjDsOwjAQRO_iGln4E8dLSZ8zWLveBQeQI8VJhbg7iZQCqpHmvZm3SrguJa1N5jSyuiijTr8dYX5K3QE_sN4nnae6zCPpXdEHbXqYWF7Xw_07KNjKtu6cAxQ8e2c9uig9ecfRbuGBMTCDGKTAyMARgTqwhH02Prt8C9aqzxfneDhe:1toEsk:OTsyBm-o_wSB5zDCEVO-Ri8xeHGzmq785HtZM0kMaxw	2025-03-14 23:55:22.990093-05
\.


--
-- Data for Name: productos_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos_products (id, nombre, category, price, stock, image) FROM stdin;
21	cebolla china	verduras	2.50	15	https://www.campestre.com.pe/wp-content/uploads/2021/08/CEBOLLA-CHINA.jpg
22	perejil	verduras	3.00	15	https://media.istockphoto.com/id/471676157/es/foto/cilantro.jpg?s=612x612&w=0&k=20&c=qwfk2eVqQ5gJDisZZuKow2tbgieLE4mkB_xW98VTaFI=
1	Tomate	Verduras	3.00	6	https://media.istockphoto.com/id/451806421/es/foto/roma-tomates-sobre-un-fondo-blanco.jpg?s=612x612&w=is&k=20&c=PMoVjR1s4Si3I5h325R9JrrbLtFKLnIeQLH0igrji4Y=
2	Lechuga	Verduras	2.00	10	https://media.istockphoto.com/id/469159458/es/foto/lechuga-aislado-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=QYsDCjPm9EgWH5QehNfjMtq68EF2Ub8nIZx-mQyuuEc=
6	zapallo	Verduras	2.00	10	https://vivanda.vtexassets.com/arquivos/ids/178024/20017639.jpg?v=636905875673230000
4	culantro	Verduras	1.00	15	https://img.freepik.com/fotos-premium/imagen-ultra-alta-definicion-cilantro-sobre-fondo-blanco_899449-62253.jpg
5	berenjena	Verduras	1.00	10	https://media.istockphoto.com/id/105493281/es/foto/dos-grandes-eggplants-aislado-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=N1jjXktECzIvKdIcL63alY3fXsQ0f4_KmSdgywZalc0=
7	zapallo italiano	Verduras	1.00	10	https://lh3.googleusercontent.com/proxy/eHgGvol_uIuyos4_rv5WglaU7UyMp69NEQVAojSfIB5ls5ykH2WzVaZounWYI6AY8K9lcMhg7TaUbCnIffnSBs28ixfh-Etj6jUmTg7YA7cclsp414QjcmNHr8262WU7M7EKt9w
8	rocoto	verduras	3.00	15	https://media.istockphoto.com/id/181442307/es/foto/peruano-rocoto-sobre-un-fondo-blanco.jpg?s=612x612&w=0&k=20&c=FwIENgnGWJTVUFRXu1paidC4bq3IvTA0wNlz5U-ZdHE=
9	pimiento	verduras	10.00	15	https://img.freepik.com/fotos-premium/pimientos-aislado-sobre-fondo-blanco_167862-1448.jpg
10	pepino	verduras	1.00	15	https://img.freepik.com/fotos-premium/pepino-aislado-sobre-fondo-blanco_127657-4988.jpg
11	zanahoria	verduras	1.00	15	https://img.freepik.com/fotos-premium/zanahoria-aislada-sobre-fondo-blanco-ia-generativa_126712-5994.jpg
12	brocoli	verduras	2.00	15	https://media.istockphoto.com/id/479452642/es/foto/fresca-de-br%C3%A9col.jpg?s=612x612&w=0&k=20&c=q-Inl6JT_T0ZDc0aVxBqPDpw9lQQcUc_XoyRTBJmxzQ=
13	limon	verduras	2.50	15	https://media.istockphoto.com/id/931938236/es/foto/lima-aislado-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=LohRThJKksF7FjWyn9mTxPKxpXpvv4y_EJSGlzo681Y=
14	lechuga americana	verduras	1.00	15	https://img.freepik.com/fotos-premium/lechuga-iceberg-verde-aislado-sobre-fondo-blanco_610539-108.jpg
15	lechuga organica	verduras	1.50	15	https://media.istockphoto.com/id/469159458/es/foto/lechuga-aislado-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=QYsDCjPm9EgWH5QehNfjMtq68EF2Ub8nIZx-mQyuuEc=
16	lechuga de seda	verduras	1.50	15	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0S8xqzwu2uHsor_-1GfBGrGBJuC6xWBIhtA&s
17	camote morado	verduras	1.50	15	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2-CdQrGqf5SrT4wZnVs0igp6SfEPxypaFcw&s
18	camote amarillo	verduras	1.50	15	https://static.wixstatic.com/media/8d70e9_07373f028dfc40ad8dd94b0d4849afc4~mv2.png/v1/fit/w_500,h_500,q_90/file.png
19	caihua	verduras	0.30	15	https://www.shutterstock.com/image-photo/caigua-edible-organic-vegetable-cyclanthera-600nw-2297058619.jpg
20	caihua chilena	verduras	1.00	15	https://tumercadoperu.com/wp-content/uploads/2021/06/CAGUA-CHILENA.jpg
23	culantro	verduras	3.00	15	https://img.freepik.com/fotos-premium/imagen-ultra-alta-definicion-cilantro-sobre-fondo-blanco_899449-62253.jpg
24	hierba buena	verduras	3.00	15	https://thumbs.dreamstime.com/b/hierbabuena-fresca-aislada-en-el-fondo-blanco-109230074.jpg
25	maiz morado	verduras	2.00	15	https://img.freepik.com/fotos-premium/maiz-morado-aislado-sobre-fondo-blanco_403166-941.jpg
26	manzana de agua	verduras	1.50	15	https://www.fruteriaelvergel.com/WebRoot/StoreES2/Shops/64945569/57C0/67BC/6818/2BC8/BD76/C0A8/2AB9/F8A3/1016-manzana-reineta-verde-el-vergel-cantabro.jpg
27	maracuya	verduras	3.00	15	https://img.freepik.com/fotos-premium/maracuya-amarillo-aislado-sobre-fondo-blanco_253984-6179.jpg
28	albahaca	verduras	5.00	15	https://previews.123rf.com/images/dole/dole1210/dole121000006/15705615-ocimum-basilicum-albahaca-paquete-tallo-p%C3%BArpura-aislado-sobre-fondo-blanco.jpg
29	manzanilla	verduras	5.00	15	https://previews.123rf.com/images/ksena32/ksena321205/ksena32120500374/13800346-manzanilla-m%C3%A9dica-en-el-fondo-blanco.jpg
30	oregano	verduras	4.00	15	https://media.istockphoto.com/id/1175048891/es/foto/mejorana.jpg?s=612x612&w=0&k=20&c=jXOA7xUnK7PXE_EMu7vfE5l1eyHBwWYBMEbndL1SiPk=
31	alverja	verduras	3.50	15	https://www.shutterstock.com/image-photo/green-pea-pod-peas-white-260nw-338068160.jpg
32	vainita	verduras	3.00	15	https://www.shutterstock.com/image-photo/green-french-beans-260nw-160384502.jpg
33	frejol blanco	legumbres	3.00	15	https://media.istockphoto.com/id/1830961775/es/foto/frijoles-en-vainas-con-hojas.jpg?s=612x612&w=0&k=20&c=wYv2TMIIcYM_KofCGROEEgGWh4pZ0xfvwWjUiHrth0U=
34	habas	legumbres	1.50	15	https://media.istockphoto.com/id/1002064788/es/foto/habas-en-fondo-blanco.jpg?s=612x612&w=0&k=20&c=eT09vWRYXC5kLVU1gA3aCiJf-rKjOkll0blQMXyqrdY=
35	frejol chino	comida chino	3.00	15	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPGLmzFAQQjh6CCjmM-t6aV-jpcUpixPf-fw&s
36	col china	comida china	3.00	15	https://media.istockphoto.com/id/1359064587/es/foto/col-china-fresca-aislada-sobre-fondo-blanco.jpg?s=612x612&w=0&k=20&c=kLayER8Ab1b2lzJky04kD9qQ0Em-2mJJYOLY8q707fQ=
37	tallarines chifa	comida china	3.50	15	https://wongfood.vtexassets.com/arquivos/ids/538023-800-auto?v=637854682936000000&width=800&height=auto&aspect=true
39	holantao	comida china	4.00	15	https://grillomarket.com/wp-content/uploads/2024/09/holantao-caajmarca-.png
41	papa yungay	tuberculos	1.50	15	https://tumercadoperu.com/wp-content/uploads/2020/11/3.png
42	papa amarilla	tuberculos	3.00	15	https://tumercadoperu.com/wp-content/uploads/2020/11/10.png
45	tomate	verduras	2.00	15	https://www.shutterstock.com/image-photo/italian-san-marzano-plum-roma-260nw-2027241710.jpg
38	masa wantan	comida china	3.50	15	https://www.miamarket.pe/assets/uploads/d835e0c324371c60e09de921a21653b2.jpg
40	papa unica	tuberculos	1.20	15	https://tumercadoperu.com/wp-content/uploads/2022/10/unica.jpg
43	papa canchan	tuberculos	1.50	15	https://www.sierralta.pe/wp-content/uploads/2020/09/Papa-canchan.jpg
44	papa huayro	tuberculos	3.00	15	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTLZhkg9IQ6AEmFNm3AKi3z8IzH5LIwphaeQ&s
3	espinaca	Verduras	5.00	20	https://media.istockphoto.com/id/1453790590/es/foto/pila-de-hojas-frescas-de-espinaca-verde-beb%C3%A9-aisladas-sobre-fondo-blanco-cerrar-plano-laico.jpg?s=612x612&w=0&k=20&c=4OeiUJEZ65M89bXZ417bxqSFqqBJbM9Y7ro8A5WlIxM=
\.


--
-- Data for Name: usuarios_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios_user (id, first_name, last_name, nickname, password, age, is_active) FROM stdin;
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

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: productos_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_products_id_seq', 45, true);


--
-- Name: usuarios_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_user_id_seq', 1, false);


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
-- Name: productos_products productos_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos_products
    ADD CONSTRAINT productos_products_pkey PRIMARY KEY (id);


--
-- Name: usuarios_user usuarios_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios_user
    ADD CONSTRAINT usuarios_user_pkey PRIMARY KEY (id);


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
-- PostgreSQL database dump complete
--

