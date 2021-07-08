--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: kategori_rs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategori_rs (
    id numeric,
    nama character varying(255),
    status boolean
);


ALTER TABLE public.kategori_rs OWNER TO postgres;

--
-- Name: lab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lab (
    id numeric NOT NULL,
    nama character varying(255),
    rs_id numeric,
    status boolean
);


ALTER TABLE public.lab OWNER TO postgres;

--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Name: rumah_sakit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rumah_sakit (
    id numeric,
    nama character varying(255),
    provinsi character varying(255),
    kota character varying(255),
    kecamatan character varying(255),
    alamat character varying(255),
    kategori_id numeric,
    status boolean
);


ALTER TABLE public.rumah_sakit OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id numeric NOT NULL,
    username character varying(50),
    password character varying(100),
    "roleId" integer,
    name character varying(255)
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public."user".id;


--
-- Name: vendor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendor (
    id numeric NOT NULL,
    nama character varying(255),
    provinsi character varying(255),
    kota character varying(255),
    rs_id numeric,
    status boolean
);


ALTER TABLE public.vendor OWNER TO postgres;

--
-- Name: wilayah_kabupaten; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wilayah_kabupaten (
    id numeric NOT NULL,
    provinsi_id numeric NOT NULL,
    nama character varying(30) NOT NULL,
    status boolean
);


ALTER TABLE public.wilayah_kabupaten OWNER TO postgres;

--
-- Name: wilayah_kecamatan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wilayah_kecamatan (
    id numeric NOT NULL,
    kabupaten_id numeric NOT NULL,
    nama character varying(30) NOT NULL,
    status boolean
);


ALTER TABLE public.wilayah_kecamatan OWNER TO postgres;

--
-- Name: wilayah_provinsi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wilayah_provinsi (
    id numeric NOT NULL,
    nama character varying(30) NOT NULL,
    status boolean
);


ALTER TABLE public.wilayah_provinsi OWNER TO postgres;

--
-- Name: wilayah_provinsis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wilayah_provinsis (
    id integer NOT NULL,
    nama character varying(255),
    status boolean
);


ALTER TABLE public.wilayah_provinsis OWNER TO postgres;

--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: kategori_rs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kategori_rs (id, nama, status) FROM stdin;
\.


--
-- Data for Name: lab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lab (id, nama, rs_id, status) FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, name) FROM stdin;
1	superadmin
2	admin
3	vendor
4	rs
5	lab
\.


--
-- Data for Name: rumah_sakit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rumah_sakit (id, nama, provinsi, kota, kecamatan, alamat, kategori_id, status) FROM stdin;
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, username, password, "roleId", name) FROM stdin;
3	vendor	1234567890	3	\N
4	rs	1234567890	4	\N
5	lab	1234567890	5	\N
2	admin	1234567890	2	\N
1	superadmin	1234567890	1	\N
\.


--
-- Data for Name: vendor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendor (id, nama, provinsi, kota, rs_id, status) FROM stdin;
\.


--
-- Data for Name: wilayah_kabupaten; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wilayah_kabupaten (id, provinsi_id, nama, status) FROM stdin;
1101	11	Kab. Simeulue	\N
1102	11	Kab. Aceh Singkil	\N
1103	11	Kab. Aceh Selatan	\N
1104	11	Kab. Aceh Tenggara	\N
1105	11	Kab. Aceh Timur	\N
1106	11	Kab. Aceh Tengah	\N
1107	11	Kab. Aceh Barat	\N
1108	11	Kab. Aceh Besar	\N
1109	11	Kab. Pidie	\N
1110	11	Kab. Bireuen	\N
1111	11	Kab. Aceh Utara	\N
1112	11	Kab. Aceh Barat Daya	\N
1113	11	Kab. Gayo Lues	\N
1114	11	Kab. Aceh Tamiang	\N
1115	11	Kab. Nagan Raya	\N
1116	11	Kab. Aceh Jaya	\N
1117	11	Kab. Bener Meriah	\N
1118	11	Kab. Pidie Jaya	\N
1171	11	Kota Banda Aceh	\N
1172	11	Kota Sabang	\N
1173	11	Kota Langsa	\N
1174	11	Kota Lhokseumawe	\N
1175	11	Kota Subulussalam	\N
1201	12	Kab. Nias	\N
1202	12	Kab. Mandailing Natal	\N
1203	12	Kab. Tapanuli Selatan	\N
1204	12	Kab. Tapanuli Tengah	\N
1205	12	Kab. Tapanuli Utara	\N
1206	12	Kab. Toba Samosir	\N
1207	12	Kab. Labuhan Batu	\N
1208	12	Kab. Asahan	\N
1209	12	Kab. Simalungun	\N
1210	12	Kab. Dairi	\N
1211	12	Kab. Karo	\N
1212	12	Kab. Deli Serdang	\N
1213	12	Kab. Langkat	\N
1214	12	Kab. Nias Selatan	\N
1215	12	Kab. Humbang Hasundutan	\N
1216	12	Kab. Pakpak Bharat	\N
1217	12	Kab. Samosir	\N
1218	12	Kab. Serdang Bedagai	\N
1219	12	Kab. Batu Bara	\N
1220	12	Kab. Padang Lawas Utara	\N
1221	12	Kab. Padang Lawas	\N
1222	12	Kab. Labuhan Batu Selatan	\N
1223	12	Kab. Labuhan Batu Utara	\N
1224	12	Kab. Nias Utara	\N
1225	12	Kab. Nias Barat	\N
1271	12	Kota Sibolga	\N
1272	12	Kota Tanjung Balai	\N
1273	12	Kota Pematang Siantar	\N
1274	12	Kota Tebing Tinggi	\N
1275	12	Kota Medan	\N
1276	12	Kota Binjai	\N
1277	12	Kota Padangsidimpuan	\N
1278	12	Kota Gunungsitoli	\N
1301	13	Kab. Kepulauan Mentawai	\N
1302	13	Kab. Pesisir Selatan	\N
1303	13	Kab. Solok	\N
1304	13	Kab. Sijunjung	\N
1305	13	Kab. Tanah Datar	\N
1306	13	Kab. Padang Pariaman	\N
1307	13	Kab. Agam	\N
1308	13	Kab. Lima Puluh Kota	\N
1309	13	Kab. Pasaman	\N
1310	13	Kab. Solok Selatan	\N
1311	13	Kab. Dharmasraya	\N
1312	13	Kab. Pasaman Barat	\N
1371	13	Kota Padang	\N
1372	13	Kota Solok	\N
1373	13	Kota Sawah Lunto	\N
1374	13	Kota Padang Panjang	\N
1375	13	Kota Bukittinggi	\N
1376	13	Kota Payakumbuh	\N
1377	13	Kota Pariaman	\N
1401	14	Kab. Kuantan Singingi	\N
1402	14	Kab. Indragiri Hulu	\N
1403	14	Kab. Indragiri Hilir	\N
1404	14	Kab. Pelalawan	\N
1405	14	Kab. S I A K	\N
1406	14	Kab. Kampar	\N
1407	14	Kab. Rokan Hulu	\N
1408	14	Kab. Bengkalis	\N
1409	14	Kab. Rokan Hilir	\N
1410	14	Kab. Kepulauan Meranti	\N
1471	14	Kota Pekanbaru	\N
1473	14	Kota D U M A I	\N
1501	15	Kab. Kerinci	\N
1502	15	Kab. Merangin	\N
1503	15	Kab. Sarolangun	\N
1504	15	Kab. Batang Hari	\N
1505	15	Kab. Muaro Jambi	\N
1506	15	Kab. Tanjung Jabung Timur	\N
1507	15	Kab. Tanjung Jabung Barat	\N
1508	15	Kab. Tebo	\N
1509	15	Kab. Bungo	\N
1571	15	Kota Jambi	\N
1572	15	Kota Sungai Penuh	\N
1601	16	Kab. Ogan Komering Ulu	\N
1602	16	Kab. Ogan Komering Ilir	\N
1603	16	Kab. Muara Enim	\N
1604	16	Kab. Lahat	\N
1605	16	Kab. Musi Rawas	\N
1606	16	Kab. Musi Banyuasin	\N
1607	16	Kab. Banyu Asin	\N
1608	16	Kab. Ogan Komering Ulu Selatan	\N
1609	16	Kab. Ogan Komering Ulu Timur	\N
1610	16	Kab. Ogan Ilir	\N
1611	16	Kab. Empat Lawang	\N
1671	16	Kota Palembang	\N
1672	16	Kota Prabumulih	\N
1673	16	Kota Pagar Alam	\N
1674	16	Kota Lubuklinggau	\N
1701	17	Kab. Bengkulu Selatan	\N
1702	17	Kab. Rejang Lebong	\N
1703	17	Kab. Bengkulu Utara	\N
1704	17	Kab. Kaur	\N
1705	17	Kab. Seluma	\N
1706	17	Kab. Mukomuko	\N
1707	17	Kab. Lebong	\N
1708	17	Kab. Kepahiang	\N
1709	17	Kab. Bengkulu Tengah	\N
1771	17	Kota Bengkulu	\N
1801	18	Kab. Lampung Barat	\N
1802	18	Kab. Tanggamus	\N
1803	18	Kab. Lampung Selatan	\N
1804	18	Kab. Lampung Timur	\N
1805	18	Kab. Lampung Tengah	\N
1806	18	Kab. Lampung Utara	\N
1807	18	Kab. Way Kanan	\N
1808	18	Kab. Tulangbawang	\N
1809	18	Kab. Pesawaran	\N
1810	18	Kab. Pringsewu	\N
1811	18	Kab. Mesuji	\N
1812	18	Kab. Tulang Bawang Barat	\N
1813	18	Kab. Pesisir Barat	\N
1871	18	Kota Bandar Lampung	\N
1872	18	Kota Metro	\N
1901	19	Kab. Bangka	\N
1902	19	Kab. Belitung	\N
1903	19	Kab. Bangka Barat	\N
1904	19	Kab. Bangka Tengah	\N
1905	19	Kab. Bangka Selatan	\N
1906	19	Kab. Belitung Timur	\N
1971	19	Kota Pangkal Pinang	\N
2101	21	Kab. Karimun	\N
2102	21	Kab. Bintan	\N
2103	21	Kab. Natuna	\N
2104	21	Kab. Lingga	\N
2105	21	Kab. Kepulauan Anambas	\N
2171	21	Kota B A T A M	\N
2172	21	Kota Tanjung Pinang	\N
3101	31	Kab. Kepulauan Seribu	\N
3171	31	Kota Jakarta Selatan	\N
3172	31	Kota Jakarta Timur	\N
3173	31	Kota Jakarta Pusat	\N
3174	31	Kota Jakarta Barat	\N
3175	31	Kota Jakarta Utara	\N
3201	32	Kab. Bogor	\N
3202	32	Kab. Sukabumi	\N
3203	32	Kab. Cianjur	\N
3204	32	Kab. Bandung	\N
3205	32	Kab. Garut	\N
3206	32	Kab. Tasikmalaya	\N
3207	32	Kab. Ciamis	\N
3208	32	Kab. Kuningan	\N
3209	32	Kab. Cirebon	\N
3210	32	Kab. Majalengka	\N
3211	32	Kab. Sumedang	\N
3212	32	Kab. Indramayu	\N
3213	32	Kab. Subang	\N
3214	32	Kab. Purwakarta	\N
3215	32	Kab. Karawang	\N
3216	32	Kab. Bekasi	\N
3217	32	Kab. Bandung Barat	\N
3218	32	Kab. Pangandaran	\N
3271	32	Kota Bogor	\N
3272	32	Kota Sukabumi	\N
3273	32	Kota Bandung	\N
3274	32	Kota Cirebon	\N
3275	32	Kota Bekasi	\N
3276	32	Kota Depok	\N
3277	32	Kota Cimahi	\N
3278	32	Kota Tasikmalaya	\N
3279	32	Kota Banjar	\N
3301	33	Kab. Cilacap	\N
3302	33	Kab. Banyumas	\N
3303	33	Kab. Purbalingga	\N
3304	33	Kab. Banjarnegara	\N
3305	33	Kab. Kebumen	\N
3306	33	Kab. Purworejo	\N
3307	33	Kab. Wonosobo	\N
3308	33	Kab. Magelang	\N
3309	33	Kab. Boyolali	\N
3310	33	Kab. Klaten	\N
3311	33	Kab. Sukoharjo	\N
3312	33	Kab. Wonogiri	\N
3313	33	Kab. Karanganyar	\N
3314	33	Kab. Sragen	\N
3315	33	Kab. Grobogan	\N
3316	33	Kab. Blora	\N
3317	33	Kab. Rembang	\N
3318	33	Kab. Pati	\N
3319	33	Kab. Kudus	\N
3320	33	Kab. Jepara	\N
3321	33	Kab. Demak	\N
3322	33	Kab. Semarang	\N
3323	33	Kab. Temanggung	\N
3324	33	Kab. Kendal	\N
3325	33	Kab. Batang	\N
3326	33	Kab. Pekalongan	\N
3327	33	Kab. Pemalang	\N
3328	33	Kab. Tegal	\N
3329	33	Kab. Brebes	\N
3371	33	Kota Magelang	\N
3372	33	Kota Surakarta	\N
3373	33	Kota Salatiga	\N
3374	33	Kota Semarang	\N
3375	33	Kota Pekalongan	\N
3376	33	Kota Tegal	\N
3401	34	Kab. Kulon Progo	\N
3402	34	Kab. Bantul	\N
3403	34	Kab. Gunung Kidul	\N
3404	34	Kab. Sleman	\N
3471	34	Kota Yogyakarta	\N
3501	35	Kab. Pacitan	\N
3502	35	Kab. Ponorogo	\N
3503	35	Kab. Trenggalek	\N
3504	35	Kab. Tulungagung	\N
3505	35	Kab. Blitar	\N
3506	35	Kab. Kediri	\N
3507	35	Kab. Malang	\N
3508	35	Kab. Lumajang	\N
3509	35	Kab. Jember	\N
3510	35	Kab. Banyuwangi	\N
3511	35	Kab. Bondowoso	\N
3512	35	Kab. Situbondo	\N
3513	35	Kab. Probolinggo	\N
3514	35	Kab. Pasuruan	\N
3515	35	Kab. Sidoarjo	\N
3516	35	Kab. Mojokerto	\N
3517	35	Kab. Jombang	\N
3518	35	Kab. Nganjuk	\N
3519	35	Kab. Madiun	\N
3520	35	Kab. Magetan	\N
3521	35	Kab. Ngawi	\N
3522	35	Kab. Bojonegoro	\N
3523	35	Kab. Tuban	\N
3524	35	Kab. Lamongan	\N
3525	35	Kab. Gresik	\N
3526	35	Kab. Bangkalan	\N
3527	35	Kab. Sampang	\N
3528	35	Kab. Pamekasan	\N
3529	35	Kab. Sumenep	\N
3571	35	Kota Kediri	\N
3572	35	Kota Blitar	\N
3573	35	Kota Malang	\N
3574	35	Kota Probolinggo	\N
3575	35	Kota Pasuruan	\N
3576	35	Kota Mojokerto	\N
3577	35	Kota Madiun	\N
3578	35	Kota Surabaya	\N
3579	35	Kota Batu	\N
3601	36	Kab. Pandeglang	\N
3602	36	Kab. Lebak	\N
3603	36	Kab. Tangerang	\N
3604	36	Kab. Serang	\N
3671	36	Kota Tangerang	\N
3672	36	Kota Cilegon	\N
3673	36	Kota Serang	\N
3674	36	Kota Tangerang Selatan	\N
5101	51	Kab. Jembrana	\N
5102	51	Kab. Tabanan	\N
5103	51	Kab. Badung	\N
5104	51	Kab. Gianyar	\N
5105	51	Kab. Klungkung	\N
5106	51	Kab. Bangli	\N
5107	51	Kab. Karang Asem	\N
5108	51	Kab. Buleleng	\N
5171	51	Kota Denpasar	\N
5201	52	Kab. Lombok Barat	\N
5202	52	Kab. Lombok Tengah	\N
5203	52	Kab. Lombok Timur	\N
5204	52	Kab. Sumbawa	\N
5205	52	Kab. Dompu	\N
5206	52	Kab. Bima	\N
5207	52	Kab. Sumbawa Barat	\N
5208	52	Kab. Lombok Utara	\N
5271	52	Kota Mataram	\N
5272	52	Kota Bima	\N
5301	53	Kab. Sumba Barat	\N
5302	53	Kab. Sumba Timur	\N
5303	53	Kab. Kupang	\N
5304	53	Kab. Timor Tengah Selatan	\N
5305	53	Kab. Timor Tengah Utara	\N
5306	53	Kab. Belu	\N
5307	53	Kab. Alor	\N
5308	53	Kab. Lembata	\N
5309	53	Kab. Flores Timur	\N
5310	53	Kab. Sikka	\N
5311	53	Kab. Ende	\N
5312	53	Kab. Ngada	\N
5313	53	Kab. Manggarai	\N
5314	53	Kab. Rote Ndao	\N
5315	53	Kab. Manggarai Barat	\N
5316	53	Kab. Sumba Tengah	\N
5317	53	Kab. Sumba Barat Daya	\N
5318	53	Kab. Nagekeo	\N
5319	53	Kab. Manggarai Timur	\N
5320	53	Kab. Sabu Raijua	\N
5371	53	Kota Kupang	\N
6101	61	Kab. Sambas	\N
6102	61	Kab. Bengkayang	\N
6103	61	Kab. Landak	\N
6104	61	Kab. Pontianak	\N
6105	61	Kab. Sanggau	\N
6106	61	Kab. Ketapang	\N
6107	61	Kab. Sintang	\N
6108	61	Kab. Kapuas Hulu	\N
6109	61	Kab. Sekadau	\N
6110	61	Kab. Melawi	\N
6111	61	Kab. Kayong Utara	\N
6112	61	Kab. Kubu Raya	\N
6171	61	Kota Pontianak	\N
6172	61	Kota Singkawang	\N
6201	62	Kab. Kotawaringin Barat	\N
6202	62	Kab. Kotawaringin Timur	\N
6203	62	Kab. Kapuas	\N
6204	62	Kab. Barito Selatan	\N
6205	62	Kab. Barito Utara	\N
6206	62	Kab. Sukamara	\N
6207	62	Kab. Lamandau	\N
6208	62	Kab. Seruyan	\N
6209	62	Kab. Katingan	\N
6210	62	Kab. Pulang Pisau	\N
6211	62	Kab. Gunung Mas	\N
6212	62	Kab. Barito Timur	\N
6213	62	Kab. Murung Raya	\N
6271	62	Kota Palangka Raya	\N
6301	63	Kab. Tanah Laut	\N
6302	63	Kab. Kota Baru	\N
6303	63	Kab. Banjar	\N
6304	63	Kab. Barito Kuala	\N
6305	63	Kab. Tapin	\N
6306	63	Kab. Hulu Sungai Selatan	\N
6307	63	Kab. Hulu Sungai Tengah	\N
6308	63	Kab. Hulu Sungai Utara	\N
6309	63	Kab. Tabalong	\N
6310	63	Kab. Tanah Bumbu	\N
6311	63	Kab. Balangan	\N
6371	63	Kota Banjarmasin	\N
6372	63	Kota Banjar Baru	\N
6401	64	Kab. Paser	\N
6402	64	Kab. Kutai Barat	\N
6403	64	Kab. Kutai Kartanegara	\N
6404	64	Kab. Kutai Timur	\N
6405	64	Kab. Berau	\N
6409	64	Kab. Penajam Paser Utara	\N
6471	64	Kota Balikpapan	\N
6472	64	Kota Samarinda	\N
6474	64	Kota Bontang	\N
6501	65	Kab. Malinau	\N
6502	65	Kab. Bulungan	\N
6503	65	Kab. Tana Tidung	\N
6504	65	Kab. Nunukan	\N
6571	65	Kota Tarakan	\N
7101	71	Kab. Bolaang Mongondow	\N
7102	71	Kab. Minahasa	\N
7103	71	Kab. Kepulauan Sangihe	\N
7104	71	Kab. Kepulauan Talaud	\N
7105	71	Kab. Minahasa Selatan	\N
7106	71	Kab. Minahasa Utara	\N
7107	71	Kab. Bolaang Mongondow Utara	\N
7108	71	Kab. Siau Tagulandang Biaro	\N
7109	71	Kab. Minahasa Tenggara	\N
7110	71	Kab. Bolaang Mongondow Selatan	\N
7111	71	Kab. Bolaang Mongondow Timur	\N
7171	71	Kota Manado	\N
7172	71	Kota Bitung	\N
7173	71	Kota Tomohon	\N
7174	71	Kota Kotamobagu	\N
7201	72	Kab. Banggai Kepulauan	\N
7202	72	Kab. Banggai	\N
7203	72	Kab. Morowali	\N
7204	72	Kab. Poso	\N
7205	72	Kab. Donggala	\N
7206	72	Kab. Toli-toli	\N
7207	72	Kab. Buol	\N
7208	72	Kab. Parigi Moutong	\N
7209	72	Kab. Tojo Una-una	\N
7210	72	Kab. Sigi	\N
7271	72	Kota Palu	\N
7301	73	Kab. Kepulauan Selayar	\N
7302	73	Kab. Bulukumba	\N
7303	73	Kab. Bantaeng	\N
7304	73	Kab. Jeneponto	\N
7305	73	Kab. Takalar	\N
7306	73	Kab. Gowa	\N
7307	73	Kab. Sinjai	\N
7308	73	Kab. Maros	\N
7309	73	Kab. Pangkajene Dan Kepulauan	\N
7310	73	Kab. Barru	\N
7311	73	Kab. Bone	\N
7312	73	Kab. Soppeng	\N
7313	73	Kab. Wajo	\N
7314	73	Kab. Sidenreng Rappang	\N
7315	73	Kab. Pinrang	\N
7316	73	Kab. Enrekang	\N
7317	73	Kab. Luwu	\N
7318	73	Kab. Tana Toraja	\N
7322	73	Kab. Luwu Utara	\N
7325	73	Kab. Luwu Timur	\N
7326	73	Kab. Toraja Utara	\N
7371	73	Kota Makassar	\N
7372	73	Kota Parepare	\N
7373	73	Kota Palopo	\N
7401	74	Kab. Buton	\N
7402	74	Kab. Muna	\N
7403	74	Kab. Konawe	\N
7404	74	Kab. Kolaka	\N
7405	74	Kab. Konawe Selatan	\N
7406	74	Kab. Bombana	\N
7407	74	Kab. Wakatobi	\N
7408	74	Kab. Kolaka Utara	\N
7409	74	Kab. Buton Utara	\N
7410	74	Kab. Konawe Utara	\N
7471	74	Kota Kendari	\N
7472	74	Kota Baubau	\N
7501	75	Kab. Boalemo	\N
7502	75	Kab. Gorontalo	\N
7503	75	Kab. Pohuwato	\N
7504	75	Kab. Bone Bolango	\N
7505	75	Kab. Gorontalo Utara	\N
7571	75	Kota Gorontalo	\N
7601	76	Kab. Majene	\N
7602	76	Kab. Polewali Mandar	\N
7603	76	Kab. Mamasa	\N
7604	76	Kab. Mamuju	\N
7605	76	Kab. Mamuju Utara	\N
8101	81	Kab. Maluku Tenggara Barat	\N
8102	81	Kab. Maluku Tenggara	\N
8103	81	Kab. Maluku Tengah	\N
8104	81	Kab. Buru	\N
8105	81	Kab. Kepulauan Aru	\N
8106	81	Kab. Seram Bagian Barat	\N
8107	81	Kab. Seram Bagian Timur	\N
8108	81	Kab. Maluku Barat Daya	\N
8109	81	Kab. Buru Selatan	\N
8171	81	Kota Ambon	\N
8172	81	Kota Tual	\N
8201	82	Kab. Halmahera Barat	\N
8202	82	Kab. Halmahera Tengah	\N
8203	82	Kab. Kepulauan Sula	\N
8204	82	Kab. Halmahera Selatan	\N
8205	82	Kab. Halmahera Utara	\N
8206	82	Kab. Halmahera Timur	\N
8207	82	Kab. Pulau Morotai	\N
8271	82	Kota Ternate	\N
8272	82	Kota Tidore Kepulauan	\N
9101	91	Kab. Fakfak	\N
9102	91	Kab. Kaimana	\N
9103	91	Kab. Teluk Wondama	\N
9104	91	Kab. Teluk Bintuni	\N
9105	91	Kab. Manokwari	\N
9106	91	Kab. Sorong Selatan	\N
9107	91	Kab. Sorong	\N
9108	91	Kab. Raja Ampat	\N
9109	91	Kab. Tambrauw	\N
9110	91	Kab. Maybrat	\N
9171	91	Kota Sorong	\N
9401	94	Kab. Merauke	\N
9402	94	Kab. Jayawijaya	\N
9403	94	Kab. Jayapura	\N
9404	94	Kab. Nabire	\N
9408	94	Kab. Kepulauan Yapen	\N
9409	94	Kab. Biak Numfor	\N
9410	94	Kab. Paniai	\N
9411	94	Kab. Puncak Jaya	\N
9412	94	Kab. Mimika	\N
9413	94	Kab. Boven Digoel	\N
9414	94	Kab. Mappi	\N
9415	94	Kab. Asmat	\N
9416	94	Kab. Yahukimo	\N
9417	94	Kab. Pegunungan Bintang	\N
9418	94	Kab. Tolikara	\N
9419	94	Kab. Sarmi	\N
9420	94	Kab. Keerom	\N
9426	94	Kab. Waropen	\N
9427	94	Kab. Supiori	\N
9428	94	Kab. Mamberamo Raya	\N
9429	94	Kab. Nduga	\N
9430	94	Kab. Lanny Jaya	\N
9431	94	Kab. Mamberamo Tengah	\N
9432	94	Kab. Yalimo	\N
9433	94	Kab. Puncak	\N
9434	94	Kab. Dogiyai	\N
9435	94	Kab. Intan Jaya	\N
9436	94	Kab. Deiyai	\N
9471	94	Kota Jayapura	\N
\.


--
-- Data for Name: wilayah_kecamatan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wilayah_kecamatan (id, kabupaten_id, nama, status) FROM stdin;
1101010	1101	 Teupah Selatan	\N
1101020	1101	 Simeulue Timur	\N
1101021	1101	 Teupah Barat	\N
1101022	1101	 Teupah Tengah	\N
1101030	1101	 Simeulue Tengah	\N
1101031	1101	 Teluk Dalam	\N
1101032	1101	 Simeulue Cut	\N
1101040	1101	 Salang	\N
1101050	1101	 Simeulue Barat	\N
1101051	1101	 Alafan	\N
1102010	1102	 Pulau Banyak	\N
1102011	1102	 Pulau Banyak Barat	\N
1102020	1102	 Singkil	\N
1102021	1102	 Singkil Utara	\N
1102022	1102	 Kuala Baru	\N
1102030	1102	 Simpang Kanan	\N
1102031	1102	 Gunung Meriah	\N
1102032	1102	 Danau Paris	\N
1102033	1102	 Suro	\N
1102042	1102	 Singkohor	\N
1102043	1102	 Kota Baharu	\N
1103010	1103	 Trumon	\N
1103011	1103	 Trumon Timur	\N
1103012	1103	 Trumon Tengah	\N
1103020	1103	 Bakongan	\N
1103021	1103	 Bakongan Timur	\N
1103022	1103	 Kota Bahagia	\N
1103030	1103	 Kluet Selatan	\N
1103031	1103	 Kluet Timur	\N
1103040	1103	 Kluet Utara	\N
1103041	1103	 Pasie Raja	\N
1103042	1103	 Kluet Tengah	\N
1103050	1103	 Tapak Tuan	\N
1103060	1103	 Sama Dua	\N
1103070	1103	 Sawang	\N
1103080	1103	 Meukek	\N
1103090	1103	 Labuhan Haji	\N
1103091	1103	 Labuhan Haji Timur	\N
1103092	1103	 Labuhan Haji Barat	\N
1104010	1104	 Lawe Alas	\N
1104011	1104	 Babul Rahmad	\N
1104012	1104	 Tanoh Alas	\N
1104020	1104	 Lawe Sigala-gala	\N
1104021	1104	 Babul Makmur	\N
1104022	1104	 Semadam	\N
1104023	1104	 Lauser	\N
1104030	1104	 Bambel	\N
1104031	1104	 Bukit Tusam	\N
1104032	1104	 Lawe Sumur	\N
1104040	1104	 Babussalam	\N
1104041	1104	 Lawe Bulan	\N
1104050	1104	 Badar	\N
1104051	1104	 Darul Hasanah	\N
1104052	1104	 Ketambe	\N
1104053	1104	 Deleng Pokhkisen	\N
1105080	1105	 Serba Jadi	\N
1105081	1105	 Simpang Jernih	\N
1105082	1105	 Peunaron	\N
1105090	1105	 Birem Bayeun	\N
1105100	1105	 Rantau Selamat	\N
1105101	1105	 Sungai Raya	\N
1105110	1105	 Peureulak	\N
1105111	1105	 Peureulak Timur	\N
1105112	1105	 Peureulak Barat	\N
1105120	1105	 Ranto Peureulak	\N
1105130	1105	 Idi Rayeuk	\N
1105131	1105	 Peudawa	\N
1105132	1105	 Banda Alam	\N
1105133	1105	 Idi Tunong	\N
1105134	1105	 Darul Ihsan	\N
1105135	1105	 Idi Timur	\N
1105140	1105	 Darul Aman	\N
1105150	1105	 Nurussalam	\N
1105151	1105	 Darul Falah	\N
1105160	1105	 Julok	\N
1105161	1105	 Indra Makmur	\N
1105170	1105	 Pante Bidari	\N
1105180	1105	 Simpang Ulim	\N
1105181	1105	 Madat	\N
1106010	1106	 Linge	\N
1106011	1106	 Atu Lintang	\N
1106012	1106	 Jagong Jeget	\N
1106020	1106	 Bintang	\N
1106031	1106	 Lut Tawar	\N
1106032	1106	 Kebayakan	\N
1106040	1106	 Pegasing	\N
1106041	1106	 Bies	\N
1106050	1106	 Bebesen	\N
1106051	1106	 Kute Panang	\N
1106060	1106	 Silih Nara	\N
1106061	1106	 Ketol	\N
1106062	1106	 Celala	\N
1106063	1106	 Rusip Antara	\N
1107050	1107	 Johan Pahlawan	\N
1107060	1107	 Samatiga	\N
1107061	1107	 Bubon	\N
1107062	1107	 Arongan Lambalek	\N
1107070	1107	 Woyla	\N
1107071	1107	 Woyla Barat	\N
1107072	1107	 Woyla Timur	\N
1107080	1107	 Kaway Xvi	\N
1107081	1107	 Meureubo	\N
1107082	1107	 Pantai Ceuremen	\N
1107083	1107	 Panton Reu	\N
1107090	1107	 Sungai Mas	\N
1108010	1108	 Lhoong	\N
1108020	1108	 Lhoknga	\N
1108021	1108	 Leupung	\N
1108030	1108	 Indrapuri	\N
1108031	1108	 Kuta Cot Glie	\N
1108040	1108	 Seulimeum	\N
1108041	1108	 Kota Jantho	\N
1108042	1108	 Lembah Seulawah	\N
1108050	1108	 Mesjid Raya	\N
1108060	1108	 Darussalam	\N
1108061	1108	 Baitussalam	\N
1108070	1108	 Kuta Baro	\N
1108080	1108	 Montasik	\N
1108081	1108	 Blang Bintang	\N
1108090	1108	 Ingin Jaya	\N
1108091	1108	 Krueng Barona Jaya	\N
1108100	1108	 Suka Makmur	\N
1108101	1108	 Kuta Malaka	\N
1108102	1108	 Simpang Tiga	\N
1108110	1108	 Darul Imarah	\N
1108111	1108	 Darul Kamal	\N
1108120	1108	 Peukan Bada	\N
1108130	1108	 Pulo Aceh	\N
1109010	1109	 Geumpang	\N
1109011	1109	 Mane	\N
1109070	1109	 Glumpang Tiga	\N
1109071	1109	 Glumpang Baro	\N
1109080	1109	 Mutiara	\N
1109081	1109	 Mutiara Timur	\N
1109090	1109	 Tiro/truseb	\N
1109100	1109	 Tangse	\N
1109111	1109	 Keumala	\N
1109112	1109	 Titeue	\N
1109120	1109	 Sakti	\N
1109130	1109	 Mila	\N
1109140	1109	 Padang Tiji	\N
1109150	1109	 Delima	\N
1109151	1109	 Grong Grong	\N
1109160	1109	 Indrajaya	\N
1109170	1109	 Peukan Baro	\N
1109180	1109	 Kembang Tanjong	\N
1109190	1109	 Simpang Tiga	\N
1109200	1109	 Kota Sigli	\N
1109210	1109	 Pidie	\N
1109220	1109	 Batee	\N
1109230	1109	 Muara Tiga	\N
1110010	1110	 Samalanga	\N
1110011	1110	 Simpang Mamplam	\N
1110020	1110	 Pandrah	\N
1110030	1110	 Jeunieb	\N
1110031	1110	 Peulimbang	\N
1110040	1110	 Peudada	\N
1110050	1110	 Juli	\N
1110060	1110	 Jeumpa	\N
1110061	1110	 Kota Juang	\N
1110062	1110	 Kuala	\N
1110070	1110	 Jangka	\N
1110080	1110	 Peusangan	\N
1110081	1110	 Peusangan Selatan	\N
1110082	1110	 Peusangan Siblah Krueng	\N
1110090	1110	 Makmur	\N
1110100	1110	 Ganda Pura	\N
1110101	1110	 Kuta Blang	\N
1111010	1111	 Sawang	\N
1111020	1111	 Nisam	\N
1111021	1111	 Nisam Antara	\N
1111022	1111	 Banda Baro	\N
1111030	1111	 Kuta Makmur	\N
1111031	1111	 Simpang Keramat	\N
1111040	1111	 Syamtalira Bayu	\N
1111041	1111	 Geureudong Pase	\N
1111050	1111	 Meurah Mulia	\N
1111060	1111	 Matangkuli	\N
1111061	1111	 Paya Bakong	\N
1111062	1111	 Pirak Timu	\N
1111070	1111	 Cot Girek	\N
1111080	1111	 Tanah Jambo Aye	\N
1111081	1111	 Langkahan	\N
1111090	1111	 Seunudon	\N
1111100	1111	 Baktiya	\N
1111101	1111	 Baktiya Barat	\N
1111110	1111	 Lhoksukon	\N
1111120	1111	 Tanah Luas	\N
1111121	1111	 Nibong	\N
1111130	1111	 Samudera	\N
1111140	1111	 Syamtalira Aron	\N
1111150	1111	 Tanah Pasir	\N
1111151	1111	 Lapang	\N
1111160	1111	 Muara Batu	\N
1111170	1111	 Dewantara	\N
1112010	1112	 Manggeng	\N
1112011	1112	 Lembah Sabil	\N
1112020	1112	 Tangan-tangan	\N
1112021	1112	 Setia	\N
1112030	1112	 Blang Pidie	\N
1112031	1112	 Jeumpa	\N
1112040	1112	 Susoh	\N
1112050	1112	 Kuala Batee	\N
1112060	1112	 Babah Rot	\N
1113010	1113	 Kuta Panjang	\N
1113011	1113	 Blang Jerango	\N
1113020	1113	 Blangkejeren	\N
1113021	1113	 Putri Betung	\N
1113022	1113	 Dabun Gelang	\N
1113023	1113	 Blang Pegayon	\N
1113030	1113	 Pining	\N
1113040	1113	 Rikit Gaib	\N
1113041	1113	 Pantan Cuaca	\N
1113050	1113	 Terangun	\N
1113051	1113	 Tripe Jaya	\N
1114010	1114	 Tamiang Hulu	\N
1114011	1114	 Bandar Pusaka	\N
1114020	1114	 Kejuruan Muda	\N
1114021	1114	 Tenggulun	\N
1114030	1114	 Rantau	\N
1114040	1114	 Kota Kuala Simpang	\N
1114050	1114	 Seruway	\N
1114060	1114	 Bendahara	\N
1114061	1114	 Banda Mulia	\N
1114070	1114	 Karang Baru	\N
1114071	1114	 Sekerak	\N
1114080	1114	 Manyak Payed	\N
1115010	1115	 Darul Makmur	\N
1115011	1115	 Tripa Makmur	\N
1115020	1115	 Kuala	\N
1115021	1115	 Kuala Pesisir	\N
1115022	1115	 Tadu Raya	\N
1115030	1115	 Beutong	\N
1115031	1115	 Beutong Ateuh Banggalang	\N
1115040	1115	 Seunagan	\N
1115041	1115	 Suka Makmue	\N
1115050	1115	 Seunagan Timur	\N
1116010	1116	 Teunom	\N
1116011	1116	 Pasie Raya	\N
1116020	1116	 Panga	\N
1116030	1116	 Krueng Sabee	\N
1116040	1116	 Setia Bakti	\N
1116050	1116	 Sampoiniet	\N
1116051	1116	 Darul Hikmah	\N
1116060	1116	 Jaya	\N
1116061	1116	 Indra Jaya	\N
1117010	1117	 Timang Gajah	\N
1117011	1117	 Gajah Putih	\N
1117020	1117	 Pintu Rime Gayo	\N
1117030	1117	 Bukit	\N
1117040	1117	 Wih Pesam	\N
1117050	1117	 Bandar	\N
1117051	1117	 Bener Kelipah	\N
1117060	1117	 Syiah Utama	\N
1117061	1117	 Mesidah	\N
1117070	1117	 Permata	\N
1118010	1118	 Meureudu	\N
1118020	1118	 Meurah Dua	\N
1118030	1118	 Bandar Dua	\N
1118040	1118	 Jangka Buya	\N
1118050	1118	 Ulim	\N
1118060	1118	 Trienggadeng	\N
1118070	1118	 Panteraja	\N
1118080	1118	 Bandar Baru	\N
1171010	1171	 Meuraxa	\N
1171011	1171	 Jaya Baru	\N
1171012	1171	 Banda Raya	\N
1171020	1171	 Baiturrahman	\N
1171021	1171	 Lueng Bata	\N
1171030	1171	 Kuta Alam	\N
1171031	1171	 Kuta Raja	\N
1171040	1171	 Syiah Kuala	\N
1171041	1171	 Ulee Kareng	\N
1172010	1172	 Sukajaya	\N
1172020	1172	 Sukakarya	\N
1173010	1173	 Langsa Timur	\N
1173011	1173	 Langsa Lama	\N
1173020	1173	 Langsa Barat	\N
1173021	1173	 Langsa Baro	\N
1173030	1173	 Langsa Kota	\N
1174010	1174	 Blang Mangat	\N
1174020	1174	 Muara Dua	\N
1174021	1174	 Muara Satu	\N
1174030	1174	 Banda Sakti	\N
1175010	1175	 Simpang Kiri	\N
1175020	1175	 Penanggalan	\N
1175030	1175	 Rundeng	\N
1175040	1175	 Sultan Daulat	\N
1175050	1175	 Longkib	\N
1201060	1201	 Idano Gawo	\N
1201061	1201	 Bawolato	\N
1201062	1201	 Ulugawo	\N
1201070	1201	 Gido	\N
1201081	1201	 Ma U	\N
1201082	1201	 Somolo - Molo	\N
1201130	1201	 Hiliduho	\N
1201131	1201	 Hili Serangkai	\N
1201132	1201	 Botomuzoi	\N
1202010	1202	 Batahan	\N
1202011	1202	 Sinunukan	\N
1202020	1202	 Batang Natal	\N
1202021	1202	 Lingga Bayu	\N
1202022	1202	 Ranto Baek	\N
1202030	1202	 Kotanopan	\N
1202031	1202	 Ulu Pungkut	\N
1202032	1202	 Tambangan	\N
1202033	1202	 Lembah Sorik Marapi	\N
1202034	1202	 Puncak Sorik Marapi	\N
1202040	1202	 Muara Sipongi	\N
1202041	1202	 Pakantan	\N
1202050	1202	 Panyabungan	\N
1202051	1202	 Panyabungan Selatan	\N
1202052	1202	 Panyabungan Barat	\N
1202053	1202	 Panyabungan Utara	\N
1202054	1202	 Panyabungan Timur	\N
1202055	1202	 Huta Bargot	\N
1202060	1202	 Natal	\N
1202070	1202	 Muara Batang Gadis	\N
1202080	1202	 Siabu	\N
1202081	1202	 Bukit Malintang	\N
1202082	1202	 Naga Juang	\N
1203010	1203	 Batang Angkola	\N
1203011	1203	 Sayur Matinggi	\N
1203012	1203	 Tano Tombangan Angkola	\N
1203070	1203	 Angkola Timur	\N
1203080	1203	 Angkola Selatan	\N
1203090	1203	 Angkola  Barat	\N
1203091	1203	 Angkola Sangkunur	\N
1203100	1203	 Batang Toru	\N
1203101	1203	 Marancar	\N
1203102	1203	 Muara Batang Toru	\N
1203110	1203	 Sipirok	\N
1203120	1203	 Arse	\N
1203160	1203	 Saipar Dolok Hole	\N
1203161	1203	 Aek Bilah	\N
1204010	1204	 Pinang Sori	\N
1204011	1204	 Badiri	\N
1204020	1204	 Sibabangun	\N
1204021	1204	 Lumut	\N
1204022	1204	 Sukabangun	\N
1204030	1204	 Pandan	\N
1204031	1204	 Tukka	\N
1204032	1204	 Sarudik	\N
1204040	1204	 Tapian Nauli	\N
1204041	1204	 Sitahuis	\N
1204050	1204	 Kolang	\N
1204060	1204	 Sorkam	\N
1204061	1204	 Sorkam Barat	\N
1204062	1204	 Pasaribu Tobing	\N
1204070	1204	 Barus	\N
1204071	1204	 Sosor Gadong	\N
1204072	1204	 Andam Dewi	\N
1204073	1204	 Barus Utara	\N
1204080	1204	 Manduamas	\N
1204081	1204	 Sirandorung	\N
1205030	1205	 Parmonangan	\N
1205040	1205	 Adian Koting	\N
1205050	1205	 Sipoholon	\N
1205060	1205	 Tarutung	\N
1205061	1205	 Siatas Barita	\N
1205070	1205	 Pahae Julu	\N
1205080	1205	 Pahae Jae	\N
1205081	1205	 Purbatua	\N
1205082	1205	 Simangumban	\N
1205090	1205	 Pangaribuan	\N
1205100	1205	 Garoga	\N
1205110	1205	 Sipahutar	\N
1205120	1205	 Siborong-borong	\N
1205130	1205	 Pagaran	\N
1205180	1205	 Muara	\N
1206030	1206	 Balige	\N
1206031	1206	 Tampahan	\N
1206040	1206	 Laguboti	\N
1206050	1206	 Habinsaran	\N
1206051	1206	 Borbor	\N
1206052	1206	 Nassau	\N
1206060	1206	 Silaen	\N
1206061	1206	 Sigumpar	\N
1206070	1206	 Porsea	\N
1206071	1206	 Pintu Pohan Meranti	\N
1206072	1206	 Siantar Narumonda	\N
1206073	1206	 Parmaksian	\N
1206080	1206	 Lumban Julu	\N
1206081	1206	 Uluan	\N
1206082	1206	 Ajibata	\N
1206083	1206	 Bonatua Lunasi	\N
1207050	1207	 Bilah Hulu	\N
1207070	1207	 Pangkatan	\N
1207080	1207	 Bilah Barat	\N
1207130	1207	 Bilah Hilir	\N
1207140	1207	 Panai Hulu	\N
1207150	1207	 Panai Tengah	\N
1207160	1207	 Panai Hilir	\N
1207210	1207	 Rantau Selatan	\N
1207220	1207	 Rantau Utara	\N
1208010	1208	 Bandar Pasir Mandoge	\N
1208020	1208	 Bandar Pulau	\N
1208021	1208	 Aek Songsongan	\N
1208022	1208	 Rahuning	\N
1208030	1208	 Pulau Rakyat	\N
1208031	1208	 Aek Kuasan	\N
1208032	1208	 Aek Ledong	\N
1208040	1208	 Sei Kepayang	\N
1208041	1208	 Sei Kepayang Barat	\N
1208042	1208	 Sei Kepayang Timur	\N
1208050	1208	 Tanjung Balai	\N
1208060	1208	 Simpang Empat	\N
1208061	1208	 Teluk Dalam	\N
1208070	1208	 Air Batu	\N
1208071	1208	 Sei Dadap	\N
1208080	1208	 Buntu Pane	\N
1208081	1208	 Tinggi Raja	\N
1208082	1208	 Setia Janji	\N
1208090	1208	 Meranti	\N
1208091	1208	 Pulo Bandring	\N
1208092	1208	 Rawang Panca Arga	\N
1208100	1208	 Air Joman	\N
1208101	1208	 Silau Laut	\N
1208160	1208	 Kisaran Barat	\N
1208170	1208	 Kisaran Timur	\N
1209010	1209	 Silimakuta	\N
1209011	1209	 Pematang Silimahuta	\N
1209020	1209	 Purba	\N
1209021	1209	 Haranggaol Horison	\N
1209030	1209	 Dolok Pardamean	\N
1209040	1209	 Sidamanik	\N
1209041	1209	 Pematang Sidamanik	\N
1209050	1209	 Girsang Sipangan Bolon	\N
1209060	1209	 Tanah Jawa	\N
1209061	1209	 Hatonduhan	\N
1209070	1209	 Dolok Panribuan	\N
1209080	1209	 Jorlang Hataran	\N
1209090	1209	 Panei	\N
1209091	1209	 Panombean Panei	\N
1209100	1209	 Raya	\N
1209110	1209	 Dolok Silau	\N
1209120	1209	 Silau Kahean	\N
1209130	1209	 Raya Kahean	\N
1209140	1209	 Tapian Dolok	\N
1209150	1209	 Dolok Batu Nanggar	\N
1209160	1209	 Siantar	\N
1209161	1209	 Gunung Malela	\N
1209162	1209	 Gunung Maligas	\N
1209170	1209	 Hutabayu Raja	\N
1209171	1209	 Jawa Maraja Bah Jambi	\N
1209180	1209	 Pematang Bandar	\N
1209181	1209	 Bandar Huluan	\N
1209190	1209	 Bandar	\N
1209191	1209	 Bandar Masilam	\N
1209200	1209	 Bosar Maligas	\N
1209210	1209	 Ujung Padang	\N
1210030	1210	 Sidikalang	\N
1210031	1210	 Berampu	\N
1210032	1210	 Sitinjo	\N
1210040	1210	 Parbuluan	\N
1210050	1210	 Sumbul	\N
1210051	1210	 Silahi Sabungan	\N
1210060	1210	 Silima Pungga-pungga	\N
1210061	1210	 Lae Parira	\N
1210070	1210	 Siempat Nempu	\N
1210080	1210	 Siempat Nempu Hulu	\N
1210090	1210	 Siempat Nempu Hilir	\N
1210100	1210	 Tiga Lingga	\N
1210101	1210	 Gunung Sitember	\N
1210110	1210	 Pegagan Hilir	\N
1210120	1210	 Tanah Pinem	\N
1211010	1211	 Mardingding	\N
1211020	1211	 Laubaleng	\N
1211030	1211	 Tiga Binanga	\N
1211040	1211	 Juhar	\N
1211050	1211	 Munte	\N
1211060	1211	 Kuta Buluh	\N
1211070	1211	 Payung	\N
1211071	1211	 Tiganderket	\N
1211080	1211	 Simpang Empat	\N
1211081	1211	 Naman Teran	\N
1211082	1211	 Merdeka	\N
1211090	1211	 Kabanjahe	\N
1211100	1211	 Berastagi	\N
1211110	1211	 Tigapanah	\N
1211111	1211	 Dolat Rayat	\N
1211120	1211	 Merek	\N
1211130	1211	 Barusjahe	\N
1212010	1212	 Gunung Meriah	\N
1212020	1212	 Sinembah Tanjung Muda Hulu	\N
1212030	1212	 Sibolangit	\N
1212040	1212	 Kutalimbaru	\N
1212050	1212	 Pancur Batu	\N
1212060	1212	 Namo Rambe	\N
1212070	1212	 Biru-biru	\N
1212080	1212	 Sinembah Tanjung Muda Hilir	\N
1212090	1212	 Bangun Purba	\N
1212190	1212	 Galang	\N
1212200	1212	 Tanjung Morawa	\N
1212210	1212	 Patumbak	\N
1212220	1212	 Deli Tua	\N
1212230	1212	 Sunggal	\N
1212240	1212	 Hamparan Perak	\N
1212250	1212	 Labuhan Deli	\N
1212260	1212	 Percut Sei Tuan	\N
1212270	1212	 Batang Kuis	\N
1212280	1212	 Pantai Labu	\N
1212290	1212	 Beringin	\N
1212300	1212	 Lubuk Pakam	\N
1212310	1212	 Pagar Merbau	\N
1213010	1213	 Bohorok	\N
1213011	1213	 Sirapit	\N
1213020	1213	 Salapian	\N
1213021	1213	 Kutambaru	\N
1213030	1213	 Sei Bingai	\N
1213040	1213	 Kuala	\N
1213050	1213	 Selesai	\N
1213060	1213	 Binjai	\N
1213070	1213	 Stabat	\N
1213080	1213	 Wampu	\N
1213090	1213	 Batang Serangan	\N
1213100	1213	 Sawit Seberang	\N
1213110	1213	 Padang Tualang	\N
1213120	1213	 Hinai	\N
1213130	1213	 Secanggang	\N
1213140	1213	 Tanjung Pura	\N
1213150	1213	 Gebang	\N
1213160	1213	 Babalan	\N
1213170	1213	 Sei Lepan	\N
1213180	1213	 Brandan Barat	\N
1213190	1213	 Besitang	\N
1213200	1213	 Pangkalan Susu	\N
1213201	1213	 Pematang Jaya	\N
1214010	1214	 Hibala	\N
1214020	1214	 Pulau-pulau Batu	\N
1214021	1214	 Pulau-pulau Batu Timur	\N
1214030	1214	 Teluk Dalam	\N
1214031	1214	 Fanayama	\N
1214032	1214	 Toma	\N
1214033	1214	 Maniamolo	\N
1214034	1214	 Mazino	\N
1214040	1214	 Amandraya	\N
1214041	1214	 Aramo	\N
1214050	1214	 Lahusa	\N
1214060	1214	 Gomo	\N
1214061	1214	 Susua	\N
1214062	1214	 Mazo	\N
1214063	1214	 Umbunasi	\N
1214070	1214	 Lolomatua	\N
1214080	1214	 Lolowa'u	\N
1214081	1214	 Hilimegai	\N
1215010	1215	 Pakkat	\N
1215020	1215	 Onan Ganjang	\N
1215030	1215	 Sijama Polang	\N
1215040	1215	 Dolok Sanggul	\N
1215050	1215	 Lintong Nihuta	\N
1215060	1215	 Paranginan	\N
1215070	1215	 Bakti Raja	\N
1215080	1215	 Pollung	\N
1215090	1215	 Parlilitan	\N
1215100	1215	 Tara Bintang	\N
1216010	1216	 Salak	\N
1216011	1216	 Sitellu Tali Urang Jehe	\N
1216012	1216	 Pagindar	\N
1216013	1216	 Sitellu Tali Urang Julu	\N
1216014	1216	 Pergetteng-getteng Sengkut	\N
1216020	1216	 Kerajaan	\N
1216021	1216	 Tinada	\N
1216022	1216	 Siempat Rube	\N
1217010	1217	 Sianjur Mula Mula	\N
1217020	1217	 Harian	\N
1217030	1217	 Sitio-tio	\N
1217040	1217	 Onan Runggu	\N
1217050	1217	 Nainggolan	\N
1217060	1217	 Palipi	\N
1217070	1217	 Ronggur Nihuta	\N
1217080	1217	 Pangururan	\N
1217090	1217	 Simanindo	\N
1218010	1218	 Kotarih	\N
1218011	1218	 Silinda	\N
1218012	1218	 Bintang Bayu	\N
1218020	1218	 Dolok Masihul	\N
1218021	1218	 Serbajadi	\N
1218030	1218	 Sipispis	\N
1218040	1218	 Dolok Merawan	\N
1218050	1218	 Tebingtinggi	\N
1218051	1218	 Tebing Syahbandar	\N
1218060	1218	 Bandar Khalipah	\N
1218070	1218	 Tanjung Beringin	\N
1218080	1218	 Sei Rampah	\N
1218081	1218	 Sei Bamban	\N
1218090	1218	 Teluk Mengkudu	\N
1218100	1218	 Perbaungan	\N
1218101	1218	 Pegajahan	\N
1218110	1218	 Pantai Cermin	\N
1219010	1219	 Sei Balai	\N
1219020	1219	 Tanjung Tiram	\N
1219030	1219	 Talawi	\N
1219040	1219	 Limapuluh	\N
1219050	1219	 Air Putih	\N
1219060	1219	 Sei Suka	\N
1219070	1219	 Medang Deras	\N
1220010	1220	 Batang Onang	\N
1220020	1220	 Padang Bolak Julu	\N
1220030	1220	 Portibi	\N
1220040	1220	 Padang Bolak	\N
1220050	1220	 Simangambat	\N
1220060	1220	 Halongonan	\N
1220070	1220	 Dolok	\N
1220080	1220	 Dolok Sigompulon	\N
1220090	1220	 Hulu Sihapas	\N
1221010	1221	 Sosopan	\N
1221020	1221	 Ulu Barumun	\N
1221030	1221	 Barumun	\N
1221031	1221	 Barumun Selatan	\N
1221040	1221	 Lubuk Barumun	\N
1221050	1221	 Sosa	\N
1221060	1221	 Batang Lubu Sutam	\N
1221070	1221	 Huta Raja Tinggi	\N
1221080	1221	 Huristak	\N
1221090	1221	 Barumun Tengah	\N
1221091	1221	 Aek Nabara Barumun	\N
1221092	1221	 Sihapas Barumun	\N
1222010	1222	 Sungai Kanan	\N
1222020	1222	 Torgamba	\N
1222030	1222	 Kota Pinang	\N
1222040	1222	 Silangkitang	\N
1222050	1222	 Kampung Rakyat	\N
1223010	1223	 Na Ix-x	\N
1223020	1223	 Marbau	\N
1223030	1223	 Aek Kuo	\N
1223040	1223	 Aek Natas	\N
1223050	1223	 Kualuh Selatan	\N
1223060	1223	 Kualuh Hilir	\N
1223070	1223	 Kualuh Hulu	\N
1223080	1223	 Kualuh Leidong	\N
1224010	1224	 Tugala Oyo	\N
1224020	1224	 Alasa	\N
1224030	1224	 Alasa Talu Muzoi	\N
1224040	1224	 Namohalu Esiwa	\N
1224050	1224	 Sitolu Ori	\N
1224060	1224	 Tuhemberua	\N
1224070	1224	 Sawo	\N
1224080	1224	 Lotu	\N
1224090	1224	 Lahewa Timur	\N
1224100	1224	 Afulu	\N
1224110	1224	 Lahewa	\N
1225010	1225	 Sirombu	\N
1225020	1225	 Lahomi	\N
1225030	1225	 Ulu Moro O	\N
1225040	1225	 Lolofitu Moi	\N
1225050	1225	 Mandrehe Utara	\N
1225060	1225	 Mandrehe	\N
1225070	1225	 Mandrehe Barat	\N
1225080	1225	 Moro O	\N
1271010	1271	 Sibolga Utara	\N
1271020	1271	 Sibolga Kota	\N
1271030	1271	 Sibolga Selatan	\N
1271031	1271	 Sibolga Sambas	\N
1272010	1272	 Datuk Bandar	\N
1272011	1272	 Datuk Bandar Timur	\N
1272020	1272	 Tanjung Balai Selatan	\N
1272030	1272	 Tanjung Balai Utara	\N
1272040	1272	 Sei Tualang Raso	\N
1272050	1272	 Teluk Nibung	\N
1273010	1273	 Siantar Marihat	\N
1273011	1273	 Siantar Marimbun	\N
1273020	1273	 Siantar Selatan	\N
1273030	1273	 Siantar Barat	\N
1273040	1273	 Siantar Utara	\N
1273050	1273	 Siantar Timur	\N
1273060	1273	 Siantar Martoba	\N
1273061	1273	 Siantar Sitalasari	\N
1274010	1274	 Padang Hulu	\N
1274011	1274	 Tebing Tinggi Kota	\N
1274020	1274	 Rambutan	\N
1274021	1274	 Bajenis	\N
1274030	1274	 Padang Hilir	\N
1275010	1275	 Medan Tuntungan	\N
1275020	1275	 Medan Johor	\N
1275030	1275	 Medan Amplas	\N
1275040	1275	 Medan Denai	\N
1275050	1275	 Medan Area	\N
1275060	1275	 Medan Kota	\N
1275070	1275	 Medan Maimun	\N
1275080	1275	 Medan Polonia	\N
1275090	1275	 Medan Baru	\N
1275100	1275	 Medan Selayang	\N
1275110	1275	 Medan Sunggal	\N
1275120	1275	 Medan Helvetia	\N
1275130	1275	 Medan Petisah	\N
1275140	1275	 Medan Barat	\N
1275150	1275	 Medan Timur	\N
1275160	1275	 Medan Perjuangan	\N
1275170	1275	 Medan Tembung	\N
1275180	1275	 Medan Deli	\N
1275190	1275	 Medan Labuhan	\N
1275200	1275	 Medan Marelan	\N
1275210	1275	 Medan Belawan	\N
1276010	1276	 Binjai Selatan	\N
1276020	1276	 Binjai Kota	\N
1276030	1276	 Binjai Timur	\N
1276040	1276	 Binjai Utara	\N
1276050	1276	 Binjai Barat	\N
1277010	1277	 Padangsidimpuan Tenggara	\N
1277020	1277	 Padangsidimpuan Selatan	\N
1277030	1277	 Padangsidimpuan Batunadua	\N
1277040	1277	 Padangsidimpuan Utara	\N
1277050	1277	 Padangsidimpuan Hutaimbaru	\N
1277051	1277	 Padangsidimpuan Angkola Julu	\N
1278010	1278	 Gunungsitoli Idanoi	\N
1278020	1278	 Gunungsitoli Selatan	\N
1278030	1278	 Gunungsitoli Barat	\N
1278040	1278	 Gunung Sitoli	\N
1278050	1278	 Gunungsitoli Alo Oa	\N
1278060	1278	 Gunungsitoli Utara	\N
1301011	1301	 Pagai Selatan	\N
1301012	1301	 Sikakap	\N
1301013	1301	 Pagai Utara	\N
1301021	1301	 Sipora Selatan	\N
1301022	1301	 Sipora Utara	\N
1301030	1301	 Siberut Selatan	\N
1301031	1301	 Seberut Barat Daya	\N
1301032	1301	 Siberut Tengah	\N
1301040	1301	 Siberut Utara	\N
1301041	1301	 Siberut Barat	\N
1302010	1302	 Lunang Silaut	\N
1302020	1302	 Basa Ampek Balai Tapan	\N
1302030	1302	 Pancung Soal	\N
1302040	1302	 Linggo Sari Baganti	\N
1302050	1302	 Ranah Pesisir	\N
1302060	1302	 Lengayang	\N
1302070	1302	 Sutera	\N
1302080	1302	 Batang Kapas	\N
1302090	1302	 Iv Jurai	\N
1302100	1302	 Bayang	\N
1302101	1302	 Iv  Nagari Bayang Utara	\N
1302110	1302	 Koto Xi Tarusan	\N
1303040	1303	 Pantai Cermin	\N
1303050	1303	 Lembah Gumanti	\N
1303051	1303	 Hiliran Gumanti	\N
1303060	1303	 Payung Sekaki	\N
1303061	1303	 Tigo Lurah	\N
1303070	1303	 Lembang Jaya	\N
1303071	1303	 Danau Kembar	\N
1303080	1303	 Gunung Talang	\N
1303090	1303	 Bukit Sundi	\N
1303100	1303	 Ix Koto Sungai Lasi	\N
1303110	1303	 Kubung	\N
1303120	1303	 X Koto Diatas	\N
1303130	1303	 X Koto Singkarak	\N
1303140	1303	 Junjung Sirih	\N
1304050	1304	 Kamang Baru	\N
1304060	1304	 Tanjung Gadang	\N
1304070	1304	 Sijunjung	\N
1304071	1304	 Lubuk Tarok	\N
1304080	1304	 Iv Nagari	\N
1304090	1304	 Kupitan	\N
1304100	1304	 Koto Tujuh	\N
1304110	1304	 Sumpur Kudus	\N
1305010	1305	 Sepuluh Koto	\N
1305020	1305	 Batipuh	\N
1305021	1305	 Batipuh Selatan	\N
1305030	1305	 Pariangan	\N
1305040	1305	 Rambatan	\N
1305050	1305	 Lima Kaum	\N
1305060	1305	 Tanjung Emas	\N
1305070	1305	 Padang Ganting	\N
1305080	1305	 Lintau Buo	\N
1305081	1305	 Lintau Buo Utara	\N
1305090	1305	 Sungayang	\N
1305100	1305	 Sungai Tarab	\N
1305110	1305	 Salimpaung	\N
1305111	1305	 Tanjung Baru	\N
1306010	1306	 Batang Anai	\N
1306020	1306	 Lubuk Alung	\N
1306021	1306	 Sintuk Toboh Gadang	\N
1306030	1306	 Ulakan Tapakis	\N
1306040	1306	 Nan Sabaris	\N
1306050	1306	 2 X 11 Enam Lingkung	\N
1306051	1306	 Enam Lingkung	\N
1306052	1306	 2 X 11 Kayu Tanam	\N
1306060	1306	 Vii Koto Sungai Sariak	\N
1306061	1306	 Patamuan	\N
1306062	1306	 Padang Sago	\N
1306070	1306	 V Koto Kp Dalam	\N
1306071	1306	 V Koto Timur	\N
1306080	1306	 Sungai Limau	\N
1306081	1306	 Batang Gasan	\N
1306090	1306	 Sungai Geringging	\N
1306100	1306	 Iv Koto Aur Malintang	\N
1307010	1307	 Tanjung Mutiara	\N
1307020	1307	 Lubuk Basung	\N
1307021	1307	 Ampek Nagari	\N
1307030	1307	 Tanjung Raya	\N
1307040	1307	 Matur	\N
1307050	1307	 Iv Koto	\N
1307051	1307	 Malalak	\N
1307061	1307	 Banuhampu	\N
1307062	1307	 Sungai Pua	\N
1307070	1307	 Ampek Angkek	\N
1307071	1307	 Canduang	\N
1307080	1307	 Baso	\N
1307090	1307	 Tilatang Kamang	\N
1307091	1307	 Kamang Magek	\N
1307100	1307	 Palembayan	\N
1307110	1307	 Palupuh	\N
1308010	1308	 Payakumbuh	\N
1308011	1308	 Akabiluru	\N
1308020	1308	 Luak	\N
1308021	1308	 Lareh Sago Halaban	\N
1308022	1308	 Situjuah Limo Nagari	\N
1308030	1308	 Harau	\N
1308040	1308	 Guguak	\N
1308041	1308	 Mungka	\N
1308050	1308	 Suliki	\N
1308051	1308	 Bukik Barisan	\N
1308060	1308	 Gunuang Omeh	\N
1308070	1308	 Kapur Ix	\N
1308080	1308	 Pangkalan Koto Baru	\N
1309070	1309	 Bonjol	\N
1309071	1309	 Tigo Nagari	\N
1309072	1309	 Simpang Alahan Mati	\N
1309080	1309	 Lubuk Sikaping	\N
1309100	1309	 Dua Koto	\N
1309110	1309	 Panti	\N
1309111	1309	 Padang Gelugur	\N
1309121	1309	 Rao	\N
1309122	1309	 Mapat Tunggul	\N
1309123	1309	 Mapat Tunggul Selatan	\N
1309124	1309	 Rao Selatan	\N
1309125	1309	 Rao Utara	\N
1310010	1310	 Sangir	\N
1310020	1310	 Sangir Jujuan	\N
1310021	1310	 Sangir Balai Janggo	\N
1310030	1310	 Sangir Batang Hari	\N
1310040	1310	 Sungai Pagu	\N
1310041	1310	 Pauah Duo	\N
1310050	1310	 Koto Parik Gadang Diateh	\N
1311010	1311	 Sungai Rumbai	\N
1311011	1311	 Koto Besar	\N
1311012	1311	 Asam Jujuhan	\N
1311020	1311	 Koto Baru	\N
1311021	1311	 Koto Salak	\N
1311022	1311	 Tiumang	\N
1311023	1311	 Padang Laweh	\N
1311030	1311	 Sitiung	\N
1311031	1311	 Timpeh	\N
1311040	1311	 Pulau Punjung	\N
1311041	1311	 Ix Koto	\N
1312010	1312	 Sungai Beremas	\N
1312020	1312	 Ranah Batahan	\N
1312030	1312	 Koto Balingka	\N
1312040	1312	 Sungai Aur	\N
1312050	1312	 Lembah Malintang	\N
1312060	1312	 Gunung Tuleh	\N
1312070	1312	 Talamau	\N
1312080	1312	 Pasaman	\N
1312090	1312	 Luhak Nan Duo	\N
1312100	1312	 Sasak Ranah Pasisie	\N
1312110	1312	 Kinali	\N
1371010	1371	 Bungus Teluk Kabung	\N
1371020	1371	 Lubuk Kilangan	\N
1371030	1371	 Lubuk Begalung	\N
1371040	1371	 Padang Selatan	\N
1371050	1371	 Padang Timur	\N
1371060	1371	 Padang Barat	\N
1371070	1371	 Padang Utara	\N
1371080	1371	 Nanggalo	\N
1371090	1371	 Kuranji	\N
1371100	1371	 Pauh	\N
1371110	1371	 Koto Tangah	\N
1372010	1372	 Lubuk Sikarah	\N
1372020	1372	 Tanjung Harapan	\N
1373010	1373	 Silungkang	\N
1373020	1373	 Lembah Segar	\N
1373030	1373	 Barangin	\N
1373040	1373	 Talawi	\N
1374010	1374	 Padang Panjang Barat	\N
1374020	1374	 Padang Panjang Timur	\N
1375010	1375	 Guguk Panjang	\N
1375020	1375	 Mandiangin Koto Selayan	\N
1375030	1375	 Aur Birugo Tigo Baleh	\N
1376010	1376	 Payakumbuh Barat	\N
1376011	1376	 Payakumbuh Selatan	\N
1376020	1376	 Payakumbuh Timur	\N
1376030	1376	 Payakumbuh Utara	\N
1376031	1376	 Lamposi Tigo Nagori	\N
1377010	1377	 Pariaman Selatan	\N
1377020	1377	 Pariaman Tengah	\N
1377021	1377	 Pariaman Timur	\N
1377030	1377	 Pariaman Utara	\N
1401010	1401	 Kuantan Mudik	\N
1401011	1401	 Hulu Kuantan	\N
1401012	1401	 Gunung Toar	\N
1401013	1401	 Pucuk Rantau	\N
1401020	1401	 Singingi	\N
1401021	1401	 Singingi Hilir	\N
1401030	1401	 Kuantan Tengah	\N
1401031	1401	 Sentajo Raya	\N
1401040	1401	 Benai	\N
1401050	1401	 Kuantan Hilir	\N
1401051	1401	 Pangean	\N
1401052	1401	 Logas Tanah Darat	\N
1401053	1401	 Kuantan Hilir Seberang	\N
1401060	1401	 Cerenti	\N
1401061	1401	 Inuman	\N
1402010	1402	 Peranap	\N
1402011	1402	 Batang Peranap	\N
1402020	1402	 Seberida	\N
1402021	1402	 Batang Cenaku	\N
1402022	1402	 Batang Gansal	\N
1402030	1402	 Kelayang	\N
1402031	1402	 Rakit Kulim	\N
1402040	1402	 Pasir Penyu	\N
1402041	1402	 Lirik	\N
1402042	1402	 Sungai Lala	\N
1402043	1402	 Lubuk Batu Jaya	\N
1402050	1402	 Rengat Barat	\N
1402060	1402	 Rengat	\N
1402061	1402	 Kuala Cenaku	\N
1403010	1403	 Keritang	\N
1403011	1403	 Kemuning	\N
1403020	1403	 Reteh	\N
1403021	1403	 Sungai Batang	\N
1403030	1403	 Enok	\N
1403040	1403	 Tanah Merah	\N
1403050	1403	 Kuala Indragiri	\N
1403051	1403	 Concong	\N
1403060	1403	 Tembilahan	\N
1403061	1403	 Tembilahan Hulu	\N
1403070	1403	 Tempuling	\N
1403071	1403	 Kempas	\N
1403080	1403	 Batang Tuaka	\N
1403090	1403	 Gaung Anak Serka	\N
1403100	1403	 Gaung	\N
1403110	1403	 Mandah	\N
1403120	1403	 Kateman	\N
1403121	1403	 Pelangiran	\N
1403122	1403	 Teluk Belengkong	\N
1403123	1403	 Pulau Burung	\N
1404010	1404	 Langgam	\N
1404011	1404	 Pangkalan Kerinci	\N
1404012	1404	 Bandar Seikijang	\N
1404020	1404	 Pangkalan Kuras	\N
1404021	1404	 Ukui	\N
1404022	1404	 Pangkalan Lesung	\N
1404030	1404	 Bunut	\N
1404031	1404	 Pelalawan	\N
1404032	1404	 Bandar Petalangan	\N
1404040	1404	 Kuala Kampar	\N
1404041	1404	 Kerumutan	\N
1404042	1404	 Teluk Meranti	\N
1405010	1405	 Minas	\N
1405011	1405	 Sungai Mandau	\N
1405012	1405	 Kandis	\N
1405020	1405	 Siak	\N
1405021	1405	 Kerinci Kanan	\N
1405022	1405	 Tualang	\N
1405023	1405	 Dayun	\N
1405024	1405	 Lubuk Dalam	\N
1405025	1405	 Koto Gasib	\N
1405026	1405	 Mempura	\N
1405030	1405	 Sungai Apit	\N
1405031	1405	 Bunga Raya	\N
1405032	1405	 Sabak Auh	\N
1405033	1405	 Pusako	\N
1406010	1406	 Kampar Kiri	\N
1406011	1406	 Kampar Kiri Hulu	\N
1406012	1406	 Kampar Kiri Hilir	\N
1406013	1406	 Gunung Sahilan	\N
1406014	1406	 Kampar Kiri Tengah	\N
1406020	1406	 Xiii Koto Kampar	\N
1406021	1406	 Koto Kampar Hulu	\N
1406030	1406	 Kuok	\N
1406031	1406	 Salo	\N
1406040	1406	 Tapung	\N
1406041	1406	 Tapung Hulu	\N
1406042	1406	 Tapung Hilir	\N
1406050	1406	 Bangkinang	\N
1406051	1406	 Bangkinang Seberang	\N
1406060	1406	 Kampar	\N
1406061	1406	 Kampar Timur	\N
1406062	1406	 Rumbio Jaya	\N
1406063	1406	 Kampar Utara	\N
1406070	1406	 Tambang	\N
1406080	1406	 Siak Hulu	\N
1406081	1406	 Perhentian Raja	\N
1407010	1407	 Rokan Iv Koto	\N
1407011	1407	 Pendalian Iv Koto	\N
1407020	1407	 Tandun	\N
1407021	1407	 Kabun	\N
1407022	1407	 Ujung Batu	\N
1407030	1407	 Rambah Samo	\N
1407040	1407	 Rambah	\N
1407041	1407	 Rambah Hilir	\N
1407042	1407	 Bangun Purba	\N
1407050	1407	 Tambusai	\N
1407051	1407	 Tambusai Utara	\N
1407060	1407	 Kepenuhan	\N
1407061	1407	 Kepenuhan Hulu	\N
1407070	1407	 Kunto Darussalam	\N
1407071	1407	 Pagaran Tapah Darussalam	\N
1407072	1407	 Bonai Darussalam	\N
1408010	1408	 Mandau	\N
1408011	1408	 Pinggir	\N
1408020	1408	 Bukit Batu	\N
1408021	1408	 Siak Kecil	\N
1408030	1408	 Rupat	\N
1408031	1408	 Rupat Utara	\N
1408040	1408	 Bengkalis	\N
1408050	1408	 Bantan	\N
1409010	1409	 Tanah Putih	\N
1409011	1409	 Pujud	\N
1409012	1409	 Tanah Putih Tanjung Melawan	\N
1409013	1409	 Rantau Kopar	\N
1409020	1409	 Bagan Sinembah	\N
1409021	1409	 Simpang Kanan	\N
1409030	1409	 Kubu	\N
1409031	1409	 Pasir Limau Kapas	\N
1409032	1409	 Kubu Babussalam	\N
1409040	1409	 Bangko	\N
1409041	1409	 Sinaboi	\N
1409042	1409	 Batu Hampar	\N
1409043	1409	 Pekaitan	\N
1409050	1409	 Rimba Melintang	\N
1409051	1409	 Bangko Pusako	\N
1410010	1410	 Tebing Tinggi Barat	\N
1410020	1410	 Tebing Tinggi	\N
1410021	1410	 Tebing Tinggi Timur	\N
1410030	1410	 Rangsang	\N
1410031	1410	 Rangsang Pesisir	\N
1410040	1410	 Rangsang Barat	\N
1410050	1410	 Merbau	\N
1410051	1410	 Pulau Merbau	\N
1410052	1410	 Putri Puyu	\N
1471010	1471	 Tampan	\N
1471011	1471	 Payung Sekaki	\N
1471020	1471	 Bukit Raya	\N
1471021	1471	 Marpoyan Damai	\N
1471022	1471	 Tenayan Raya	\N
1471030	1471	 Limapuluh	\N
1471040	1471	 Sail	\N
1471050	1471	 Pekanbaru Kota	\N
1471060	1471	 Sukajadi	\N
1471070	1471	 Senapelan	\N
1471080	1471	 Rumbai	\N
1471081	1471	 Rumbai Pesisir	\N
1473010	1473	 Bukit Kapur	\N
1473011	1473	 Medang Kampai	\N
1473012	1473	 Sungai Sembilan	\N
1473020	1473	 Dumai Barat	\N
1473021	1473	 Dumai Selatan	\N
1473030	1473	 Dumai Timur	\N
1473031	1473	 Dumai Kota	\N
1501010	1501	 Gunung Raya	\N
1501011	1501	 Bukit Kerman	\N
1501020	1501	 Batang Merangin	\N
1501030	1501	 Keliling Danau	\N
1501040	1501	 Danau Kerinci	\N
1501050	1501	 Sitinjau Laut	\N
1501070	1501	 Air Hangat	\N
1501071	1501	 Air Hangat Timur	\N
1501072	1501	 Depati Vii	\N
1501073	1501	 Air Hangat Barat	\N
1501080	1501	 Gunung Kerinci	\N
1501081	1501	 Siulak	\N
1501082	1501	 Siulak Mukai	\N
1501090	1501	 Kayu Aro	\N
1501091	1501	 Gunung Tujuh	\N
1501092	1501	 Kayu Aro Barat	\N
1502010	1502	 Jangkat	\N
1502011	1502	 Sungai Tenang	\N
1502020	1502	 Muara Siau	\N
1502021	1502	 Lembah Masurai	\N
1502022	1502	 Tiang Pumpung	\N
1502030	1502	 Pamenang	\N
1502031	1502	 Pamenang Barat	\N
1502032	1502	 Renah Pamenang	\N
1502033	1502	 Pamenang Selatan	\N
1502040	1502	 Bangko	\N
1502041	1502	 Bangko Barat	\N
1502042	1502	 Nalo Tantan	\N
1502043	1502	 Batang Masumai	\N
1502050	1502	 Sungai Manau	\N
1502051	1502	 Renah Pembarap	\N
1502052	1502	 Pangkalan Jambu	\N
1502060	1502	 Tabir	\N
1502061	1502	 Tabir Ulu	\N
1502062	1502	 Tabir Selatan	\N
1502063	1502	 Tabir Ilir	\N
1502064	1502	 Tabir Timur	\N
1502065	1502	 Tabir Lintas	\N
1502066	1502	 Margo Tabir	\N
1502067	1502	 Tabir Barat	\N
1503010	1503	 Batang Asai	\N
1503020	1503	 Limun	\N
1503021	1503	 Cermin Nan Gedang	\N
1503030	1503	 Pelawan	\N
1503031	1503	 Singkut	\N
1503040	1503	 Sarolangun	\N
1503041	1503	 Bathin Viii	\N
1503050	1503	 Pauh	\N
1503051	1503	 Air Hitam	\N
1503060	1503	 Mandiangin	\N
1504010	1504	 Mersam	\N
1504011	1504	 Maro Sebo Ulu	\N
1504020	1504	 Batin Xxiv	\N
1504030	1504	 Muara Tembesi	\N
1504040	1504	 Muara Bulian	\N
1504041	1504	 Bajubang	\N
1504042	1504	 Maro Sebo Ilir	\N
1504050	1504	 Pemayung	\N
1505010	1505	 Mestong	\N
1505011	1505	 Sungai Bahar	\N
1505012	1505	 Bahar Selatan	\N
1505013	1505	 Bahar Utara	\N
1505020	1505	 Kumpeh Ulu	\N
1505021	1505	 Sungai Gelam	\N
1505030	1505	 Kumpeh	\N
1505040	1505	 Maro Sebo	\N
1505041	1505	 Taman Rajo	\N
1505050	1505	 Jambi Luar Kota	\N
1505060	1505	 Sekernan	\N
1506010	1506	 Mendahara	\N
1506011	1506	 Mendahara Ulu	\N
1506012	1506	 Geragai	\N
1506020	1506	 Dendang	\N
1506031	1506	 Muara Sabak Barat	\N
1506032	1506	 Muara Sabak Timur	\N
1506033	1506	 Kuala Jambi	\N
1506040	1506	 Rantau Rasau	\N
1506041	1506	 Berbak	\N
1506050	1506	 Nipah Panjang	\N
1506060	1506	 Sadu	\N
1507010	1507	 Tungkal Ulu	\N
1507011	1507	 Merlung	\N
1507012	1507	 Batang Asam	\N
1507013	1507	 Tebing Tinggi	\N
1507014	1507	 Renah Mendaluh	\N
1507015	1507	 Muara Papalik	\N
1507020	1507	 Pengabuan	\N
1507021	1507	 Senyerang	\N
1507030	1507	 Tungkal Ilir	\N
1507031	1507	 Bram Itam	\N
1507032	1507	 Seberang Kota	\N
1507040	1507	 Betara	\N
1507041	1507	 Kuala Betara	\N
1508010	1508	 Tebo Ilir	\N
1508011	1508	 Muara Tabir	\N
1508020	1508	 Tebo Tengah	\N
1508021	1508	 Sumay	\N
1508022	1508	 Tengah Ilir	\N
1508030	1508	 Rimbo Bujang	\N
1508031	1508	 Rimbo Ulu	\N
1508032	1508	 Rimbo Ilir	\N
1508040	1508	 Tebo Ulu	\N
1508041	1508	 Vii Koto	\N
1508042	1508	 Serai Serumpun	\N
1508043	1508	 Vii Koto Ilir	\N
1509010	1509	 Pelepat	\N
1509011	1509	 Pelepat Ilir	\N
1509021	1509	 Bathin Ii Babeko	\N
1509022	1509	 Rimbo Tengah	\N
1509023	1509	 Bungo Dani	\N
1509024	1509	 Pasar Muara Bungo	\N
1509025	1509	 Bathin Iii	\N
1509030	1509	 Rantau Pandan	\N
1509031	1509	 Muko-muko Bathin Vii	\N
1509032	1509	 Bathin Iii Ulu	\N
1509040	1509	 Tanah Sepenggal	\N
1509041	1509	 Tanah Sepenggal Lintas	\N
1509050	1509	 Tanah Tumbuh	\N
1509051	1509	 Limbur Lubuk Mengkuang	\N
1509052	1509	 Bathin Ii Pelayang	\N
1509060	1509	 Jujuhan	\N
1509061	1509	 Jujuhan Ilir	\N
1571010	1571	 Kota Baru	\N
1571020	1571	 Jambi Selatan	\N
1571030	1571	 Jelutung	\N
1571040	1571	 Pasar Jambi	\N
1571050	1571	 Telanaipura	\N
1571060	1571	 Danau Teluk	\N
1571070	1571	 Pelayangan	\N
1571080	1571	 Jambi Timur	\N
1572010	1572	 Tanah Kampung	\N
1572020	1572	 Kumun Debai	\N
1572030	1572	 Sungai Penuh	\N
1572031	1572	 Pondok Tingggi	\N
1572032	1572	 Sungai Bungkal	\N
1572040	1572	 Hamparan Rawang	\N
1572050	1572	 Pesisir Bukit	\N
1572051	1572	 Koto Baru	\N
1601052	1601	 Lengkiti	\N
1601070	1601	 Sosoh Buay Rayap	\N
1601080	1601	 Pengandonan	\N
1601081	1601	 Semidang Aji	\N
1601082	1601	 Ulu Ogan	\N
1601083	1601	 Muara Jaya	\N
1601090	1601	 Peninjauan	\N
1601091	1601	 Lubuk Batang	\N
1601092	1601	 Sinar Peninjauan	\N
1601130	1601	 Batu Raja Timur	\N
1601131	1601	 Lubuk Raja	\N
1601140	1601	 Batu Raja Barat	\N
1602010	1602	 Lempuing	\N
1602011	1602	 Lempuing Jaya	\N
1602020	1602	 Mesuji	\N
1602021	1602	 Sungai Menang	\N
1602022	1602	 Mesuji Makmur	\N
1602023	1602	 Mesuji Raya	\N
1602030	1602	 Tulung Selapan	\N
1602031	1602	 Cengal	\N
1602040	1602	 Pedamaran	\N
1602041	1602	 Pedamaran Timur	\N
1602050	1602	 Tanjung Lubuk	\N
1602051	1602	 Teluk Gelam	\N
1602060	1602	 Kota Kayu Agung	\N
1602120	1602	 Sirah Pulau Padang	\N
1602121	1602	 Jejawi	\N
1602130	1602	 Pampangan	\N
1602131	1602	 Pangkalan Lapam	\N
1602140	1602	 Air Sugihan	\N
1603010	1603	 Semendo Darat Laut	\N
1603011	1603	 Semendo Darat Ulu	\N
1603012	1603	 Semendo Darat Tengah	\N
1603020	1603	 Tanjung Agung	\N
1603031	1603	 Rambang	\N
1603032	1603	 Lubai	\N
1603040	1603	 Lawang Kidul	\N
1603050	1603	 Muara Enim	\N
1603051	1603	 Ujan Mas	\N
1603060	1603	 Gunung Megang	\N
1603061	1603	 Benakat	\N
1603062	1603	 Belimbing	\N
1603070	1603	 Rambang Dangku	\N
1603080	1603	 Talang Ubi	\N
1603081	1603	 Penukal	\N
1603082	1603	 Tanah Abang	\N
1603083	1603	 Penukal Utara	\N
1603084	1603	 Abab	\N
1603090	1603	 Gelumbang	\N
1603091	1603	 Lembak	\N
1603092	1603	 Sungai Rotan	\N
1603093	1603	 Muara Belida	\N
1603094	1603	 Kelekar	\N
1603095	1603	 Belida Darat	\N
1604011	1604	 Tanjung Sakti Pumi	\N
1604012	1604	 Tanjung Sakti Pumu	\N
1604040	1604	 Kota Agung	\N
1604041	1604	 Mulak Ulu	\N
1604042	1604	 Tanjung Tebat	\N
1604050	1604	 Pulau Pinang	\N
1604051	1604	 Pagar Gunung	\N
1604052	1604	 Gumay Ulu	\N
1604060	1604	 Jarai	\N
1604061	1604	 Pajar Bulan	\N
1604062	1604	 Muara Payang	\N
1604063	1604	 Sukamerindu	\N
1604111	1604	 Kikim Barat	\N
1604112	1604	 Kikim Timur	\N
1604113	1604	 Kikim Selatan	\N
1604114	1604	 Kikim Tengah	\N
1604120	1604	 Lahat	\N
1604121	1604	 Gumay Talang	\N
1604122	1604	 Pseksu	\N
1604131	1604	 Merapi Barat	\N
1604132	1604	 Merapi Timur	\N
1604133	1604	 Merapi Selatan	\N
1605010	1605	 Rawas Ulu	\N
1605011	1605	 Ulu Rawas	\N
1605020	1605	 Rupit	\N
1605021	1605	 Karang Jaya	\N
1605030	1605	 Suku Tengah Lakitan Ulu	\N
1605031	1605	 Selangit	\N
1605032	1605	 Sumber Harta	\N
1605040	1605	 Tugumulyo	\N
1605041	1605	 Purwodadi	\N
1605050	1605	 Muara Beliti	\N
1605051	1605	 Tiang Pumpung Kepungut	\N
1605060	1605	 Jayaloka	\N
1605061	1605	 Suka Karya	\N
1605070	1605	 Muara Kelingi	\N
1605071	1605	 Bulang Tengah Suku Ulu	\N
1605072	1605	 Tuah Negeri	\N
1605080	1605	 Muara Lakitan	\N
1605090	1605	 Megang Sakti	\N
1605100	1605	 Rawas Ilir	\N
1605101	1605	 Karang Dapo	\N
1605102	1605	 Nibung	\N
1606010	1606	 Sanga Desa	\N
1606020	1606	 Babat Toman	\N
1606021	1606	 Batanghari Leko	\N
1606022	1606	 Plakat Tinggi	\N
1606023	1606	 Lawang Wetan	\N
1606030	1606	 Sungai Keruh	\N
1606040	1606	 Sekayu	\N
1606041	1606	 Lais	\N
1606090	1606	 Sungai Lilin	\N
1606091	1606	 Keluang	\N
1606092	1606	 Babat Supat	\N
1606100	1606	 Bayung Lencir	\N
1606101	1606	 Lalan	\N
1606102	1606	 Tungkal Jaya	\N
1607010	1607	 Rantau Bayur	\N
1607020	1607	 Betung	\N
1607021	1607	 Suak Tapeh	\N
1607030	1607	 Pulau Rimau	\N
1607031	1607	 Tungkal Ilir	\N
1607040	1607	 Banyuasin Iii	\N
1607041	1607	 Sembawa	\N
1607050	1607	 Talang Kelapa	\N
1607051	1607	 Tanjung Lago	\N
1607060	1607	 Banyuasin I	\N
1607061	1607	 Air Kumbang	\N
1607070	1607	 Rambutan	\N
1607080	1607	 Muara Padang	\N
1607081	1607	 Muara Sugihan	\N
1607090	1607	 Makarti Jaya	\N
1607091	1607	 Air Saleh	\N
1607100	1607	 Banyuasin Ii	\N
1607110	1607	 Muara Telang	\N
1607111	1607	 Sumber Marga Telang	\N
1608010	1608	 Mekakau Ilir	\N
1608020	1608	 Banding Agung	\N
1608021	1608	 Warkuk Ranau Selatan	\N
1608030	1608	 Buay Pemaca	\N
1608040	1608	 Simpang	\N
1608041	1608	 Buana Pemaca	\N
1608050	1608	 Muaradua	\N
1608051	1608	 Buay Rawan	\N
1608060	1608	 Buay Sandang Aji	\N
1608061	1608	 Tiga Dihaji	\N
1608070	1608	 Buay Runjung	\N
1608071	1608	 Runjung Agung	\N
1608080	1608	 Kisam Tinggi	\N
1608090	1608	 Muaradua Kisam	\N
1608091	1608	 Kisam Ilir	\N
1608100	1608	 Pulau Beringin	\N
1608101	1608	 Sindang Danau	\N
1608102	1608	 Sungai Are	\N
1609010	1609	 Martapura	\N
1609011	1609	 Bunga Mayang	\N
1609012	1609	 Jaya Pura	\N
1609020	1609	 Buay Pemuka Peliung	\N
1609030	1609	 Buay Madang	\N
1609031	1609	 Buay Madang Timur	\N
1609032	1609	 Buay Pemuka Bangsa Raja	\N
1609040	1609	 Madang Suku Ii	\N
1609041	1609	 Madang Suku Iii	\N
1609050	1609	 Madang Suku I	\N
1609051	1609	 Belitang Madang Raya	\N
1609060	1609	 Belitang	\N
1609061	1609	 Belitang Jaya	\N
1609070	1609	 Belitang Iii	\N
1609080	1609	 Belitang Ii	\N
1609081	1609	 Belitang Mulya	\N
1609090	1609	 Semendawai Suku Iii	\N
1609091	1609	 Semendawai Timur	\N
1609100	1609	 Cempaka	\N
1609101	1609	 Semendawai Barat	\N
1610010	1610	 Muara Kuang	\N
1610011	1610	 Rambang Kuang	\N
1610012	1610	 Lubuk Keliat	\N
1610020	1610	 Tanjung Batu	\N
1610021	1610	 Payaraman	\N
1610030	1610	 Rantau Alai	\N
1610031	1610	 Kandis	\N
1610040	1610	 Tanjung Raja	\N
1610041	1610	 Rantau Panjang	\N
1610042	1610	 Sungai Pinang	\N
1610050	1610	 Pemulutan	\N
1610051	1610	 Pemulutan Selatan	\N
1610052	1610	 Pemulutan Barat	\N
1610060	1610	 Indralaya	\N
1610061	1610	 Indralaya Utara	\N
1610062	1610	 Indralaya Selatan	\N
1611010	1611	 Muara Pinang	\N
1611020	1611	 Lintang Kanan	\N
1611030	1611	 Pendopo	\N
1611031	1611	 Pendopo Barat	\N
1611040	1611	 Pasemah Air Keruh	\N
1611050	1611	 Ulu Musi	\N
1611051	1611	 Sikap Dalam	\N
1611060	1611	 Talang Padang	\N
1611070	1611	 Tebing Tinggi	\N
1611071	1611	 Saling	\N
1671010	1671	 Ilir Barat Ii	\N
1671011	1671	 Gandus	\N
1671020	1671	 Seberang Ulu I	\N
1671021	1671	 Kertapati	\N
1671030	1671	 Seberang Ulu Ii	\N
1671031	1671	 Plaju	\N
1671040	1671	 Ilir Barat I	\N
1671041	1671	 Bukit Kecil	\N
1671050	1671	 Ilir Timur I	\N
1671051	1671	 Kemuning	\N
1671060	1671	 Ilir Timur Ii	\N
1671061	1671	 Kalidoni	\N
1671070	1671	 Sako	\N
1671071	1671	 Sematang Borang	\N
1671080	1671	 Sukarami	\N
1671081	1671	 Alang Alang Lebar	\N
1672010	1672	 Rambang Kapak Tengah	\N
1672020	1672	 Prabumulih Timur	\N
1672021	1672	 Prabumulih Selatan	\N
1672030	1672	 Prabumulih Barat	\N
1672031	1672	 Prabumulih Utara	\N
1672040	1672	 Cambai	\N
1673010	1673	 Dempo Selatan	\N
1673011	1673	 Dempo Tengah	\N
1673020	1673	 Dempo Utara	\N
1673030	1673	 Pagar Alam Selatan	\N
1673040	1673	 Pagar Alam Utara	\N
1674011	1674	 Lubuk Linggau Barat I	\N
1674012	1674	 Lubuk Linggau Barat Ii	\N
1674021	1674	 Lubuk Linggau Selatan I	\N
1674022	1674	 Lubuk Linggau Selatan Ii	\N
1674031	1674	 Lubuk Linggau Timur I	\N
1674032	1674	 Lubuk Linggau Timur Ii	\N
1674041	1674	 Lubuk Linggau Utara I	\N
1674042	1674	 Lubuk Linggau Utara Ii	\N
1701040	1701	 Manna	\N
1701041	1701	 Kota Manna	\N
1701042	1701	 Kedurang	\N
1701043	1701	 Bunga Mas	\N
1701044	1701	 Pasar Manna	\N
1701045	1701	 Kedurang Ilir	\N
1701050	1701	 Seginim	\N
1701051	1701	 Air Nipis	\N
1701060	1701	 Pino	\N
1701061	1701	 Pinoraya	\N
1701062	1701	 Ulu Manna	\N
1702020	1702	 Kota Padang	\N
1702021	1702	 Sindang Beliti Ilir	\N
1702030	1702	 Padang Ulak Tanding	\N
1702031	1702	 Sindang Kelingi	\N
1702032	1702	 Bindu Riang	\N
1702033	1702	 Sindang Beliti Ulu	\N
1702034	1702	 Sindang Dataran	\N
1702040	1702	 Curup	\N
1702041	1702	 Bermani Ulu	\N
1702042	1702	 Selupu Rejang	\N
1702043	1702	 Curup Selatan	\N
1702044	1702	 Curup Tengah	\N
1702045	1702	 Bermani Ulu Raya	\N
1702046	1702	 Curup Utara	\N
1702047	1702	 Curup Timur	\N
1703010	1703	 Enggano	\N
1703050	1703	 Kerkap	\N
1703051	1703	 Air Napal	\N
1703052	1703	 Air Besi	\N
1703053	1703	 Hulu Palik	\N
1703054	1703	 Tanjung Agung Palik	\N
1703060	1703	 Arga Makmur	\N
1703061	1703	 Arma Jaya	\N
1703070	1703	 Lais	\N
1703071	1703	 Batik Nau	\N
1703072	1703	 Giri Mulya	\N
1703073	1703	 Air Padang	\N
1703080	1703	 Padang Jaya	\N
1703090	1703	 Ketahun	\N
1703091	1703	 Napal Putih	\N
1703092	1703	 Ulok Kupai	\N
1703100	1703	 Putri Hijau	\N
1704010	1704	 Nasal	\N
1704020	1704	 Maje	\N
1704030	1704	 Kaur Selatan	\N
1704031	1704	 Tetap	\N
1704040	1704	 Kaur Tengah	\N
1704041	1704	 Luas	\N
1704042	1704	 Muara Sahung	\N
1704050	1704	 Kinal	\N
1704051	1704	 Semidang Gumay	\N
1704060	1704	 Tanjung Kemuning	\N
1704061	1704	 Kelam Tengah	\N
1704070	1704	 Kaur Utara	\N
1704071	1704	 Padang Guci Hilir	\N
1704072	1704	 Lungkang Kule	\N
1704073	1704	 Padang Guci Hulu	\N
1705010	1705	 Semidang Alas Maras	\N
1705020	1705	 Semidang Alas	\N
1705030	1705	 Talo	\N
1705031	1705	 Ilir Talo	\N
1705032	1705	 Talo Kecil	\N
1705033	1705	 Ulu Talo	\N
1705040	1705	 Seluma	\N
1705041	1705	 Seluma Selatan	\N
1705042	1705	 Seluma Barat	\N
1705043	1705	 Seluma Timur	\N
1705044	1705	 Seluma Utara	\N
1705050	1705	 Sukaraja	\N
1705051	1705	 Air Periukan	\N
1705052	1705	 Lubuk Sandi	\N
1706010	1706	 Ipuh	\N
1706011	1706	 Air Rami	\N
1706012	1706	 Malin Deman	\N
1706020	1706	 Pondok Suguh	\N
1706021	1706	 Sungai Rumbai	\N
1706022	1706	 Teramang Jaya	\N
1706030	1706	 Teras Terunjam	\N
1706031	1706	 Penarik	\N
1706032	1706	 Selagan Raya	\N
1706040	1706	 Kota Mukomuko	\N
1706041	1706	 Air Dikit	\N
1706042	1706	 Xiv Koto	\N
1706050	1706	 Lubuk Pinang	\N
1706051	1706	 Air Manjunto	\N
1706052	1706	 V Koto	\N
1707010	1707	 Rimbo Pengadang	\N
1707011	1707	 Topos	\N
1707020	1707	 Lebong Selatan	\N
1707021	1707	 Bingin Kuning	\N
1707030	1707	 Lebong Tengah	\N
1707031	1707	 Lebong Sakti	\N
1707040	1707	 Lebong Atas	\N
1707041	1707	 Padang Bano	\N
1707042	1707	 Pelabai	\N
1707050	1707	 Lebong Utara	\N
1707051	1707	 Amen	\N
1707052	1707	 Uram Jaya	\N
1707053	1707	 Pinang Belapis	\N
1708010	1708	 Muara Kemumu	\N
1708020	1708	 Bermani Ilir	\N
1708030	1708	 Seberang Musi	\N
1708040	1708	 Tebat Karai	\N
1708050	1708	 Kepahiang	\N
1708060	1708	 Kaba Wetan	\N
1708070	1708	 Ujan Mas	\N
1708080	1708	 Merigi	\N
1709010	1709	 Talang Empat	\N
1709020	1709	 Karang Tinggi	\N
1709030	1709	 Taba Penanjung	\N
1709031	1709	 Merigi Kelindang	\N
1709040	1709	 Pagar Jati	\N
1709041	1709	 Merigi Sakti	\N
1709050	1709	 Pondok Kelapa	\N
1709051	1709	 Pondok Kubang	\N
1709060	1709	 Pematang Tiga	\N
1709061	1709	 Bang Haji	\N
1771010	1771	 Selebar	\N
1771011	1771	 Kampung Melayu	\N
1771020	1771	 Gading Cempaka	\N
1771021	1771	 Ratu Agung	\N
1771022	1771	 Ratu Samban	\N
1771023	1771	 Singaran Pati	\N
1771030	1771	 Teluk Segara	\N
1771031	1771	 Sungai Serut	\N
1771040	1771	 Muara Bangka Hulu	\N
1801040	1801	 Balik Bukit	\N
1801041	1801	 Sukau	\N
1801042	1801	 Lumbok Seminung	\N
1801050	1801	 Belalau	\N
1801051	1801	 Sekincau	\N
1801052	1801	 Suoh	\N
1801053	1801	 Batu Brak	\N
1801054	1801	 Pagar Dewa	\N
1801055	1801	 Batu Ketulis	\N
1801056	1801	 Bandar Negeri Suoh	\N
1801060	1801	 Sumber Jaya	\N
1801061	1801	 Way Tenong	\N
1801062	1801	 Gedung Surian	\N
1801063	1801	 Kebun Tebu	\N
1801064	1801	 Air Hitam	\N
1802010	1802	 Wonosobo	\N
1802011	1802	 Semaka	\N
1802012	1802	 Bandar Negeri Semuong	\N
1802020	1802	 Kota Agung	\N
1802021	1802	 Pematang Sawa	\N
1802022	1802	 Kota Agung Timur	\N
1802023	1802	 Kota Agung Barat	\N
1802030	1802	 Pulau Panggung	\N
1802031	1802	 Ulubelu	\N
1802032	1802	 Air Naningan	\N
1802040	1802	 Talang Padang	\N
1802041	1802	 Sumberejo	\N
1802042	1802	 Gisting	\N
1802043	1802	 Gunung Alip	\N
1802050	1802	 Pugung	\N
1802101	1802	 Bulok	\N
1802110	1802	 Cukuh Balak	\N
1802111	1802	 Kelumbayan	\N
1802112	1802	 Limau	\N
1802113	1802	 Kelumbayan Barat	\N
1803060	1803	 Natar	\N
1803070	1803	 Jati Agung	\N
1803080	1803	 Tanjung Bintang	\N
1803081	1803	 Tanjung Sari	\N
1803090	1803	 Katibung	\N
1803091	1803	 Merbau Mataram	\N
1803092	1803	 Way Sulan	\N
1803100	1803	 Sidomulyo	\N
1803101	1803	 Candipuro	\N
1803102	1803	 Way Panji	\N
1803110	1803	 Kalianda	\N
1803111	1803	 Rajabasa	\N
1803120	1803	 Palas	\N
1803121	1803	 Sragi	\N
1803130	1803	 Penengahan	\N
1803131	1803	 Ketapang	\N
1803132	1803	 Bakauheni	\N
1804010	1804	 Metro Kibang	\N
1804020	1804	 Batanghari	\N
1804030	1804	 Sekampung	\N
1804040	1804	 Margatiga	\N
1804050	1804	 Sekampung Udik	\N
1804060	1804	 Jabung	\N
1804061	1804	 Pasir Sakti	\N
1804062	1804	 Waway Karya	\N
1804063	1804	 Marga Sekampung	\N
1804070	1804	 Labuhan Maringgai	\N
1804071	1804	 Mataram Baru	\N
1804072	1804	 Bandar Sribawono	\N
1804073	1804	 Melinting	\N
1804074	1804	 Gunung Pelindung	\N
1804080	1804	 Way Jepara	\N
1804081	1804	 Braja Slebah	\N
1804082	1804	 Labuhan Ratu	\N
1804090	1804	 Sukadana	\N
1804091	1804	 Bumi Agung	\N
1804092	1804	 Batanghari Nuban	\N
1804100	1804	 Pekalongan	\N
1804110	1804	 Raman Utara	\N
1804120	1804	 Purbolinggo	\N
1804121	1804	 Way Bungur	\N
1805010	1805	 Padang Ratu	\N
1805011	1805	 Selagai Lingga	\N
1805012	1805	 Pubian	\N
1805013	1805	 Anak Tuha	\N
1805014	1805	 Anak Ratu Aji	\N
1805020	1805	 Kalirejo	\N
1805021	1805	 Sendang Agung	\N
1805030	1805	 Bangunrejo	\N
1805040	1805	 Gunung Sugih	\N
1805041	1805	 Bekri	\N
1805042	1805	 Bumi Ratu Nuban	\N
1805050	1805	 Trimurjo	\N
1805060	1805	 Punggur	\N
1805061	1805	 Kota Gajah	\N
1805070	1805	 Seputih Raman	\N
1805080	1805	 Terbanggi Besar	\N
1805081	1805	 Seputih Agung	\N
1805082	1805	 Way Pengubuan	\N
1805090	1805	 Terusan Nunyai	\N
1805100	1805	 Seputih Mataram	\N
1805101	1805	 Bandar Mataram	\N
1805110	1805	 Seputih Banyak	\N
1805111	1805	 Way Seputih	\N
1805120	1805	 Rumbia	\N
1805121	1805	 Bumi Nabung	\N
1805122	1805	 Putra Rumbia	\N
1805130	1805	 Seputih Surabaya	\N
1805131	1805	 Bandar Surabaya	\N
1806010	1806	 Bukit Kemuning	\N
1806011	1806	 Abung Tinggi	\N
1806020	1806	 Tanjung Raja	\N
1806030	1806	 Abung Barat	\N
1806031	1806	 Abung Tengah	\N
1806032	1806	 Abung  Kunang	\N
1806033	1806	 Abung Pekurun	\N
1806040	1806	 Kotabumi	\N
1806041	1806	 Kotabumi Utara	\N
1806042	1806	 Kotabumi Selatan	\N
1806050	1806	 Abung Selatan	\N
1806051	1806	 Abung Semuli	\N
1806052	1806	 Blambangan Pagar	\N
1806060	1806	 Abung Timur	\N
1806061	1806	 Abung Surakarta	\N
1806070	1806	 Sungkai Selatan	\N
1806071	1806	 Muara Sungkai	\N
1806072	1806	 Bunga Mayang	\N
1806073	1806	 Sungkai  Barat	\N
1806074	1806	 Sungkai Jaya	\N
1806080	1806	 Sungkai Utara	\N
1806081	1806	 Hulusungkai	\N
1806082	1806	 Sungkai Tengah	\N
1807010	1807	 Banjit	\N
1807020	1807	 Baradatu	\N
1807021	1807	 Gunung Labuhan	\N
1807030	1807	 Kasui	\N
1807031	1807	 Rebang Tangkas	\N
1807040	1807	 Blambangan Umpu	\N
1807041	1807	 Way Tuba	\N
1807042	1807	 Negeri Agung	\N
1807050	1807	 Bahuga	\N
1807051	1807	 Buay  Bahuga	\N
1807052	1807	 Bumi Agung	\N
1807060	1807	 Pakuan Ratu	\N
1807061	1807	 Negara Batin	\N
1807062	1807	 Negeri Besar	\N
1808030	1808	 Banjar Agung	\N
1808031	1808	 Banjar Margo	\N
1808032	1808	 Banjar Baru	\N
1808040	1808	 Gedung Aji	\N
1808041	1808	 Penawar Aji	\N
1808042	1808	 Meraksa Aji	\N
1808050	1808	 Menggala	\N
1808051	1808	 Penawar Tama	\N
1808052	1808	 Rawajitu Selatan	\N
1808053	1808	 Gedung Meneng	\N
1808054	1808	 Rawajitu Timur	\N
1808055	1808	 Rawa Pitu	\N
1808056	1808	 Gedung Aji Baru	\N
1808057	1808	 Dente Teladas	\N
1808058	1808	 Menggala Timur	\N
1809010	1809	 Punduh Pidada	\N
1809011	1809	 Marga Punduh	\N
1809020	1809	 Padang Cermin	\N
1809030	1809	 Kedondong	\N
1809031	1809	 Way Khilau	\N
1809040	1809	 Way Lima	\N
1809050	1809	 Gedung Tataan	\N
1809060	1809	 Negeri Katon	\N
1809070	1809	 Tegineneng	\N
1810010	1810	 Pardasuka	\N
1810020	1810	 Ambarawa	\N
1810030	1810	 Pagelaran	\N
1810031	1810	 Pagelaran Utara	\N
1810040	1810	 Pringsewu	\N
1810050	1810	 Gading Rejo	\N
1810060	1810	 Sukoharjo	\N
1810070	1810	 Banyumas	\N
1810080	1810	 Adi Luwih	\N
1811010	1811	 Way Serdang	\N
1811020	1811	 Simpang Pematang	\N
1811030	1811	 Panca Jaya	\N
1811040	1811	 Tanjung Raya	\N
1811050	1811	 Mesuji	\N
1811060	1811	 Mesuji Timur	\N
1811070	1811	 Rawajitu Utara	\N
1812010	1812	 Tulang Bawang Udik	\N
1812020	1812	 Tumi Jajar	\N
1812030	1812	 Tulang Bawang Tengah	\N
1812040	1812	 Pagar Dewa	\N
1812050	1812	 Lambu Kibang	\N
1812060	1812	 Gunung Terang	\N
1812070	1812	 Gunung Agung	\N
1812080	1812	 Way Kenanga	\N
1813010	1813	 Lemong	\N
1813020	1813	 Pesisir Utara	\N
1813030	1813	 Pulau Pisang	\N
1813040	1813	 Karya Penggawa	\N
1813050	1813	 Way Krui	\N
1813060	1813	 Pesisir Tengah	\N
1813070	1813	 Krui Selatan	\N
1813080	1813	 Pesisir Selatan	\N
1813090	1813	 Ngambur	\N
1813100	1813	 Bengkunat	\N
1813110	1813	 Bengkunat Belimbing	\N
1871010	1871	 Teluk Betung Barat	\N
1871011	1871	 Telukbetung Timur	\N
1871020	1871	 Teluk Betung Selatan	\N
1871021	1871	 Bumi Waras	\N
1871030	1871	 Panjang	\N
1871040	1871	 Tanjung Karang Timur	\N
1871041	1871	 Kedamaian	\N
1871050	1871	 Teluk Betung Utara	\N
1871060	1871	 Tanjung Karang Pusat	\N
1871061	1871	 Enggal	\N
1871070	1871	 Tanjung Karang Barat	\N
1871071	1871	 Kemiling	\N
1871072	1871	 Langkapura	\N
1871080	1871	 Kedaton	\N
1871081	1871	 Rajabasa	\N
1871082	1871	 Tanjung Senang	\N
1871083	1871	 Labuhan Ratu	\N
1871090	1871	 Sukarame	\N
1871091	1871	 Sukabumi	\N
1871092	1871	 Way Halim	\N
1872011	1872	 Metro Selatan	\N
1872012	1872	 Metro Barat	\N
1872021	1872	 Metro Timur	\N
1872022	1872	 Metro Pusat	\N
1872023	1872	 Metro Utara	\N
1901070	1901	 Mendo Barat	\N
1901080	1901	 Merawang	\N
1901081	1901	 Puding Besar	\N
1901090	1901	 Sungai Liat	\N
1901091	1901	 Pemali	\N
1901092	1901	 Bakam	\N
1901130	1901	 Belinyu	\N
1901131	1901	 Riau Silip	\N
1902010	1902	 Membalong	\N
1902060	1902	 Tanjung Pandan	\N
1902061	1902	 Badau	\N
1902062	1902	 Sijuk	\N
1902063	1902	 Selat Nasik	\N
1903010	1903	 Kelapa	\N
1903020	1903	 Tempilang	\N
1903030	1903	 Mentok	\N
1903040	1903	 Simpang Teritip	\N
1903050	1903	 Jebus	\N
1903051	1903	 Parittiga	\N
1904010	1904	 Koba	\N
1904011	1904	 Lubuk Besar	\N
1904020	1904	 Pangkalan Baru	\N
1904021	1904	 Namang	\N
1904030	1904	 Sungai Selan	\N
1904040	1904	 Simpang Katis	\N
1905010	1905	 Payung	\N
1905011	1905	 Pulau Besar	\N
1905020	1905	 Simpang Rimba	\N
1905030	1905	 Toboali	\N
1905031	1905	 Tukak Sadai	\N
1905040	1905	 Air Gegas	\N
1905050	1905	 Lepar Pongok	\N
1905051	1905	 Kepulauan Pongok	\N
1906010	1906	 Dendang	\N
1906011	1906	 Simpang Pesak	\N
1906020	1906	 Gantung	\N
1906021	1906	 Simpang Renggiang	\N
1906030	1906	 Manggar	\N
1906031	1906	 Damar	\N
1906040	1906	 Kelapa Kampit	\N
1971010	1971	 Rangkui	\N
1971020	1971	 Bukit Intan	\N
1971021	1971	 Girimaya	\N
1971030	1971	 Pangkal Balam	\N
1971031	1971	 Gabek	\N
1971040	1971	 Taman Sari	\N
1971041	1971	 Gerunggang	\N
2101010	2101	 Moro	\N
2101011	2101	 Durai	\N
2101020	2101	 Kundur	\N
2101021	2101	 Kundur Utara	\N
2101022	2101	 Kundur Barat	\N
2101030	2101	 Karimun	\N
2101031	2101	 Buru	\N
2101032	2101	 Meral	\N
2101033	2101	 Tebing	\N
2102040	2102	 Teluk Bintan	\N
2102050	2102	 Bintan Utara	\N
2102051	2102	 Teluk Sebong	\N
2102052	2102	 Seri Kuala Lobam	\N
2102060	2102	 Bintan Timur	\N
2102061	2102	 Gunung Kijang	\N
2102062	2102	 Mantang	\N
2102063	2102	 Bintan Pesisir	\N
2102064	2102	 Toapaya	\N
2102070	2102	 Tambelan	\N
2103030	2103	 Midai	\N
2103040	2103	 Bunguran Barat	\N
2103041	2103	 Bunguran Utara	\N
2103042	2103	 Pulau Laut	\N
2103043	2103	 Pulau Tiga	\N
2103050	2103	 Bunguran Timur	\N
2103051	2103	 Bunguran Timur Laut	\N
2103052	2103	 Bunguran Tengah	\N
2103053	2103	 Bunguran Selatan	\N
2103060	2103	 Serasan	\N
2103061	2103	 Subi	\N
2103062	2103	 Serasan Timur	\N
2104010	2104	 Singkep Barat	\N
2104020	2104	 Singkep	\N
2104021	2104	 Singkep Selatan	\N
2104022	2104	 Singkep Pesisir	\N
2104030	2104	 Lingga	\N
2104031	2104	 Selayar	\N
2104032	2104	 Lingga Timur	\N
2104040	2104	 Lingga Utara	\N
2104050	2104	 Senayang	\N
2105010	2105	 Jemaja	\N
2105020	2105	 Jemaja Timur	\N
2105030	2105	 Siantan Selatan	\N
2105040	2105	 Siantan	\N
2105050	2105	 Siantan Timur	\N
2105060	2105	 Siantan Tengah	\N
2105070	2105	 Palmatak	\N
2171010	2171	 Belakang Padang	\N
2171020	2171	 Bulang	\N
2171030	2171	 Galang	\N
2171040	2171	 Sei Beduk	\N
2171041	2171	 Sagulung	\N
2171050	2171	 Nongsa	\N
2171051	2171	 Batam Kota	\N
2171060	2171	 Sekupang	\N
2171061	2171	 Batu Aji	\N
2171070	2171	 Lubuk Baja	\N
2171080	2171	 Batu Ampar	\N
2171081	2171	 Bengkong	\N
2172010	2172	 Bukit Bestari	\N
2172020	2172	 Tanjungpinang Timur	\N
2172030	2172	 Tanjungpinang Kota	\N
2172040	2172	 Tanjungpinang Barat	\N
3101010	3101	 Kepulauan Seribu Selatan	\N
3101020	3101	 Kepulauan Seribu Utara	\N
3171010	3171	 Jagakarsa	\N
3171020	3171	 Pasar Minggu	\N
3171030	3171	 Cilandak	\N
3171040	3171	 Pesanggrahan	\N
3171050	3171	 Kebayoran Lama	\N
3171060	3171	 Kebayoran Baru	\N
3171070	3171	 Mampang Prapatan	\N
3171080	3171	 Pancoran	\N
3171090	3171	 Tebet	\N
3171100	3171	 Setia Budi	\N
3172010	3172	 Pasar Rebo	\N
3172020	3172	 Ciracas	\N
3172030	3172	 Cipayung	\N
3172040	3172	 Makasar	\N
3172050	3172	 Kramat Jati	\N
3172060	3172	 Jatinegara	\N
3172070	3172	 Duren Sawit	\N
3172080	3172	 Cakung	\N
3172090	3172	 Pulo Gadung	\N
3172100	3172	 Matraman	\N
3173010	3173	 Tanah Abang	\N
3173020	3173	 Menteng	\N
3173030	3173	 Senen	\N
3173040	3173	 Johar Baru	\N
3173050	3173	 Cempaka Putih	\N
3173060	3173	 Kemayoran	\N
3173070	3173	 Sawah Besar	\N
3173080	3173	 Gambir	\N
3174010	3174	 Kembangan	\N
3174020	3174	 Kebon Jeruk	\N
3174030	3174	 Palmerah	\N
3174040	3174	 Grogol Petamburan	\N
3174050	3174	 Tambora	\N
3174060	3174	 Taman Sari	\N
3174070	3174	 Cengkareng	\N
3174080	3174	 Kali Deres	\N
3175010	3175	 Penjaringan	\N
3175020	3175	 Pademangan	\N
3175030	3175	 Tanjung Priok	\N
3175040	3175	 Koja	\N
3175050	3175	 Kelapa Gading	\N
3175060	3175	 Cilincing	\N
3201010	3201	 Nanggung	\N
3201020	3201	 Leuwiliang	\N
3201021	3201	 Leuwisadeng	\N
3201030	3201	 Pamijahan	\N
3201040	3201	 Cibungbulang	\N
3201050	3201	 Ciampea	\N
3201051	3201	 Tenjolaya	\N
3201060	3201	 Dramaga	\N
3201070	3201	 Ciomas	\N
3201071	3201	 Tamansari	\N
3201080	3201	 Cijeruk	\N
3201081	3201	 Cigombong	\N
3201090	3201	 Caringin	\N
3201100	3201	 Ciawi	\N
3201110	3201	 Cisarua	\N
3201120	3201	 Megamendung	\N
3201130	3201	 Sukaraja	\N
3201140	3201	 Babakan Madang	\N
3201150	3201	 Sukamakmur	\N
3201160	3201	 Cariu	\N
3201161	3201	 Tanjungsari	\N
3201170	3201	 Jonggol	\N
3201180	3201	 Cileungsi	\N
3201181	3201	 Kelapa Nunggal	\N
3201190	3201	 Gunung Putri	\N
3201200	3201	 Citeureup	\N
3201210	3201	 Cibinong	\N
3201220	3201	 Bojong Gede	\N
3201221	3201	 Tajur Halang	\N
3201230	3201	 Kemang	\N
3201231	3201	 Ranca Bungur	\N
3201240	3201	 Parung	\N
3201241	3201	 Ciseeng	\N
3201250	3201	 Gunung Sindur	\N
3201260	3201	 Rumpin	\N
3201270	3201	 Cigudeg	\N
3201271	3201	 Sukajaya	\N
3201280	3201	 Jasinga	\N
3201290	3201	 Tenjo	\N
3201300	3201	 Parung Panjang	\N
3202010	3202	 Ciemas	\N
3202020	3202	 Ciracap	\N
3202021	3202	 Waluran	\N
3202030	3202	 Surade	\N
3202031	3202	 Cibitung	\N
3202040	3202	 Jampang Kulon	\N
3202041	3202	 Cimanggu	\N
3202050	3202	 Kali Bunder	\N
3202060	3202	 Tegal Buleud	\N
3202070	3202	 Cidolog	\N
3202080	3202	 Sagaranten	\N
3202081	3202	 Cidadap	\N
3202082	3202	 Curugkembar	\N
3202090	3202	 Pabuaran	\N
3202100	3202	 Lengkong	\N
3202110	3202	 Palabuhanratu	\N
3202111	3202	 Simpenan	\N
3202120	3202	 Warung Kiara	\N
3202121	3202	 Bantargadung	\N
3202130	3202	 Jampang Tengah	\N
3202131	3202	 Purabaya	\N
3202140	3202	 Cikembar	\N
3202150	3202	 Nyalindung	\N
3202160	3202	 Geger Bitung	\N
3202170	3202	 Sukaraja	\N
3202171	3202	 Kebonpedes	\N
3202172	3202	 Cireunghas	\N
3202173	3202	 Sukalarang	\N
3202180	3202	 Sukabumi	\N
3202190	3202	 Kadudampit	\N
3202200	3202	 Cisaat	\N
3202201	3202	 Gunungguruh	\N
3202210	3202	 Cibadak	\N
3202211	3202	 Cicantayan	\N
3202212	3202	 Caringin	\N
3202220	3202	 Nagrak	\N
3202221	3202	 Ciambar	\N
3202230	3202	 Cicurug	\N
3202240	3202	 Cidahu	\N
3202250	3202	 Parakan Salak	\N
3202260	3202	 Parung Kuda	\N
3202261	3202	 Bojong Genteng	\N
3202270	3202	 Kalapa Nunggal	\N
3202280	3202	 Cikidang	\N
3202290	3202	 Cisolok	\N
3202291	3202	 Cikakak	\N
3202300	3202	 Kabandungan	\N
3203010	3203	 Agrabinta	\N
3203011	3203	 Leles	\N
3203020	3203	 Sindangbarang	\N
3203030	3203	 Cidaun	\N
3203040	3203	 Naringgul	\N
3203050	3203	 Cibinong	\N
3203051	3203	 Cikadu	\N
3203060	3203	 Tanggeung	\N
3203061	3203	 Pasirkuda	\N
3203070	3203	 Kadupandak	\N
3203071	3203	 Cijati	\N
3203080	3203	 Takokak	\N
3203090	3203	 Sukanagara	\N
3203100	3203	 Pagelaran	\N
3203110	3203	 Campaka	\N
3203111	3203	 Campaka Mulya	\N
3203120	3203	 Cibeber	\N
3203130	3203	 Warungkondang	\N
3203131	3203	 Gekbrong	\N
3203140	3203	 Cilaku	\N
3203150	3203	 Sukaluyu	\N
3203160	3203	 Bojongpicung	\N
3203161	3203	 Haurwangi	\N
3203170	3203	 Ciranjang	\N
3203180	3203	 Mande	\N
3203190	3203	 Karangtengah	\N
3203200	3203	 Cianjur	\N
3203210	3203	 Cugenang	\N
3203220	3203	 Pacet	\N
3203221	3203	 Cipanas	\N
3203230	3203	 Sukaresmi	\N
3203240	3203	 Cikalongkulon	\N
3204010	3204	 Ciwidey	\N
3204011	3204	 Rancabali	\N
3204020	3204	 Pasirjambu	\N
3204030	3204	 Cimaung	\N
3204040	3204	 Pangalengan	\N
3204050	3204	 Kertasari	\N
3204060	3204	 Pacet	\N
3204070	3204	 Ibun	\N
3204080	3204	 Paseh	\N
3204090	3204	 Cikancung	\N
3204100	3204	 Cicalengka	\N
3204101	3204	 Nagreg	\N
3204110	3204	 Rancaekek	\N
3204120	3204	 Majalaya	\N
3204121	3204	 Solokan Jeruk	\N
3204130	3204	 Ciparay	\N
3204140	3204	 Baleendah	\N
3204150	3204	 Arjasari	\N
3204160	3204	 Banjaran	\N
3204161	3204	 Cangkuang	\N
3204170	3204	 Pameungpeuk	\N
3204180	3204	 Katapang	\N
3204190	3204	 Soreang	\N
3204191	3204	 Kutawaringin	\N
3204250	3204	 Margaasih	\N
3204260	3204	 Margahayu	\N
3204270	3204	 Dayeuhkolot	\N
3204280	3204	 Bojongsoang	\N
3204290	3204	 Cileunyi	\N
3204300	3204	 Cilengkrang	\N
3204310	3204	 Cimenyan	\N
3205010	3205	 Cisewu	\N
3205011	3205	 Caringin	\N
3205020	3205	 Talegong	\N
3205030	3205	 Bungbulang	\N
3205031	3205	 Mekarmukti	\N
3205040	3205	 Pamulihan	\N
3205050	3205	 Pakenjeng	\N
3205060	3205	 Cikelet	\N
3205070	3205	 Pameungpeuk	\N
3205080	3205	 Cibalong	\N
3205090	3205	 Cisompet	\N
3205100	3205	 Peundeuy	\N
3205110	3205	 Singajaya	\N
3205111	3205	 Cihurip	\N
3205120	3205	 Cikajang	\N
3205130	3205	 Banjarwangi	\N
3205140	3205	 Cilawu	\N
3205150	3205	 Bayongbong	\N
3205151	3205	 Cigedug	\N
3205160	3205	 Cisurupan	\N
3205161	3205	 Sukaresmi	\N
3205170	3205	 Samarang	\N
3205171	3205	 Pasirwangi	\N
3205181	3205	 Tarogong Kidul	\N
3205182	3205	 Tarogong Kaler	\N
3205190	3205	 Garut Kota	\N
3205200	3205	 Karangpawitan	\N
3205210	3205	 Wanaraja	\N
3205211	3205	 Sucinaraja	\N
3205212	3205	 Pangatikan	\N
3205220	3205	 Sukawening	\N
3205221	3205	 Karangtengah	\N
3205230	3205	 Banyuresmi	\N
3205240	3205	 Leles	\N
3205250	3205	 Leuwigoong	\N
3205260	3205	 Cibatu	\N
3205261	3205	 Kersamanah	\N
3205270	3205	 Cibiuk	\N
3205280	3205	 Kadungora	\N
3205290	3205	 Blubur Limbangan	\N
3205300	3205	 Selaawi	\N
3205310	3205	 Malangbong	\N
3206010	3206	 Cipatujah	\N
3206020	3206	 Karangnunggal	\N
3206030	3206	 Cikalong	\N
3206040	3206	 Pancatengah	\N
3206050	3206	 Cikatomas	\N
3206060	3206	 Cibalong	\N
3206061	3206	 Parungponteng	\N
3206070	3206	 Bantarkalong	\N
3206071	3206	 Bojongasih	\N
3206072	3206	 Culamega	\N
3206080	3206	 Bojonggambir	\N
3206090	3206	 Sodonghilir	\N
3206100	3206	 Taraju	\N
3206110	3206	 Salawu	\N
3206111	3206	 Puspahiang	\N
3206120	3206	 Tanjungjaya	\N
3206130	3206	 Sukaraja	\N
3206140	3206	 Salopa	\N
3206141	3206	 Jatiwaras	\N
3206150	3206	 Cineam	\N
3206151	3206	 Karangjaya	\N
3206160	3206	 Manonjaya	\N
3206161	3206	 Gunungtanjung	\N
3206190	3206	 Singaparna	\N
3206191	3206	 Sukarame	\N
3206192	3206	 Mangunreja	\N
3206200	3206	 Cigalontang	\N
3206210	3206	 Leuwisari	\N
3206211	3206	 Sariwangi	\N
3206212	3206	 Padakembang	\N
3206221	3206	 Sukaratu	\N
3206230	3206	 Cisayong	\N
3206231	3206	 Sukahening	\N
3206240	3206	 Rajapolah	\N
3206250	3206	 Jamanis	\N
3206260	3206	 Ciawi	\N
3206261	3206	 Kadipaten	\N
3206270	3206	 Pagerageung	\N
3206271	3206	 Sukaresik	\N
3207100	3207	 Banjarsari	\N
3207110	3207	 Lakbok	\N
3207111	3207	 Purwadadi	\N
3207120	3207	 Pamarican	\N
3207130	3207	 Cidolog	\N
3207140	3207	 Cimaragas	\N
3207150	3207	 Cijeungjing	\N
3207160	3207	 Cisaga	\N
3207170	3207	 Tambaksari	\N
3207180	3207	 Rancah	\N
3207190	3207	 Rajadesa	\N
3207200	3207	 Sukadana	\N
3207210	3207	 Ciamis	\N
3207211	3207	 Baregbeg	\N
3207220	3207	 Cikoneng	\N
3207221	3207	 Sindangkasih	\N
3207230	3207	 Cihaurbeuti	\N
3207240	3207	 Sadananya	\N
3207250	3207	 Cipaku	\N
3207260	3207	 Jatinagara	\N
3207270	3207	 Panawangan	\N
3207280	3207	 Kawali	\N
3207281	3207	 Lumbung	\N
3207290	3207	 Panjalu	\N
3207291	3207	 Sukamantri	\N
3207300	3207	 Panumbangan	\N
3208010	3208	 Darma	\N
3208020	3208	 Kadugede	\N
3208021	3208	 Nusaherang	\N
3208030	3208	 Ciniru	\N
3208031	3208	 Hantara	\N
3208040	3208	 Selajambe	\N
3208050	3208	 Subang	\N
3208051	3208	 Cilebak	\N
3208060	3208	 Ciwaru	\N
3208061	3208	 Karangkancana	\N
3208070	3208	 Cibingbin	\N
3208071	3208	 Cibeureum	\N
3208080	3208	 Luragung	\N
3208081	3208	 Cimahi	\N
3208090	3208	 Cidahu	\N
3208091	3208	 Kalimanggis	\N
3208100	3208	 Ciawigebang	\N
3208101	3208	 Cipicung	\N
3208110	3208	 Lebakwangi	\N
3208111	3208	 Maleber	\N
3208120	3208	 Garawangi	\N
3208121	3208	 Sidangagung	\N
3208130	3208	 Kuningan	\N
3208140	3208	 Cigugur	\N
3208150	3208	 Kramatmulya	\N
3208160	3208	 Jalaksana	\N
3208161	3208	 Japara	\N
3208170	3208	 Cilimus	\N
3208171	3208	 Cigandamekar	\N
3208180	3208	 Mandirancan	\N
3208181	3208	 Pancalang	\N
3208190	3208	 Pasawahan	\N
3209010	3209	 Waled	\N
3209011	3209	 Pasaleman	\N
3209020	3209	 Ciledug	\N
3209021	3209	 Pabuaran	\N
3209030	3209	 Losari	\N
3209031	3209	 Pabedilan	\N
3209040	3209	 Babakan	\N
3209041	3209	 Gebang	\N
3209050	3209	 Karangsembung	\N
3209051	3209	 Karangwareng	\N
3209060	3209	 Lemahabang	\N
3209061	3209	 Susukanlebak	\N
3209070	3209	 Sedong	\N
3209080	3209	 Astanajapura	\N
3209081	3209	 Pangenan	\N
3209090	3209	 Mundu	\N
3209100	3209	 Beber	\N
3209101	3209	 Greged	\N
3209111	3209	 Talun	\N
3209120	3209	 Sumber	\N
3209121	3209	 Dukupuntang	\N
3209130	3209	 Palimanan	\N
3209140	3209	 Plumbon	\N
3209141	3209	 Depok	\N
3209150	3209	 Weru	\N
3209151	3209	 Plered	\N
3209161	3209	 Tengah Tani	\N
3209162	3209	 Kedawung	\N
3209171	3209	 Gunungjati	\N
3209180	3209	 Kapetakan	\N
3209181	3209	 Suranenggala	\N
3209190	3209	 Klangenan	\N
3209191	3209	 Jamblang	\N
3209200	3209	 Arjawinangun	\N
3209201	3209	 Panguragan	\N
3209210	3209	 Ciwaringin	\N
3209211	3209	 Gempol	\N
3209220	3209	 Susukan	\N
3209230	3209	 Gegesik	\N
3209231	3209	 Kaliwedi	\N
3210010	3210	 Lemahsugih	\N
3210020	3210	 Bantarujeg	\N
3210021	3210	 Malausma	\N
3210030	3210	 Cikijing	\N
3210031	3210	 Cingambul	\N
3210040	3210	 Talaga	\N
3210041	3210	 Banjaran	\N
3210050	3210	 Argapura	\N
3210060	3210	 Maja	\N
3210070	3210	 Majalengka	\N
3210080	3210	 Cigasong	\N
3210090	3210	 Sukahaji	\N
3210091	3210	 Sindang	\N
3210100	3210	 Rajagaluh	\N
3210110	3210	 Sindangwangi	\N
3210120	3210	 Leuwimunding	\N
3210130	3210	 Palasah	\N
3210140	3210	 Jatiwangi	\N
3210150	3210	 Dawuan	\N
3210151	3210	 Kasokandel	\N
3210160	3210	 Panyingkiran	\N
3210170	3210	 Kadipaten	\N
3210180	3210	 Kertajati	\N
3210190	3210	 Jatitujuh	\N
3210200	3210	 Ligung	\N
3210210	3210	 Sumberjaya	\N
3211010	3211	 Jatinangor	\N
3211020	3211	 Cimanggung	\N
3211030	3211	 Tanjungsari	\N
3211031	3211	 Sukasari	\N
3211032	3211	 Pamulihan	\N
3211040	3211	 Rancakalong	\N
3211050	3211	 Sumedang Selatan	\N
3211060	3211	 Sumedang Utara	\N
3211061	3211	 Ganeas	\N
3211070	3211	 Situraja	\N
3211071	3211	 Cisitu	\N
3211080	3211	 Darmaraja	\N
3211090	3211	 Cibugel	\N
3211100	3211	 Wado	\N
3211101	3211	 Jatinunggal	\N
3211111	3211	 Jatigede	\N
3211120	3211	 Tomo	\N
3211130	3211	 Ujung Jaya	\N
3211140	3211	 Conggeang	\N
3211150	3211	 Paseh	\N
3211160	3211	 Cimalaka	\N
3211161	3211	 Cisarua	\N
3211170	3211	 Tanjungkerta	\N
3211171	3211	 Tanjungmedar	\N
3211180	3211	 Buahdua	\N
3211181	3211	 Surian	\N
3212010	3212	 Haurgeulis	\N
3212011	3212	 Gantar	\N
3212020	3212	 Kroya	\N
3212030	3212	 Gabuswetan	\N
3212040	3212	 Cikedung	\N
3212041	3212	 Terisi	\N
3212050	3212	 Lelea	\N
3212060	3212	 Bangodua	\N
3212061	3212	 Tukdana	\N
3212070	3212	 Widasari	\N
3212080	3212	 Kertasemaya	\N
3212081	3212	 Sukagumiwang	\N
3212090	3212	 Krangkeng	\N
3212100	3212	 Karangampel	\N
3212101	3212	 Kedokan Bunder	\N
3212110	3212	 Juntinyuat	\N
3212120	3212	 Sliyeg	\N
3212130	3212	 Jatibarang	\N
3212140	3212	 Balongan	\N
3212150	3212	 Indramayu	\N
3212160	3212	 Sindang	\N
3212161	3212	 Cantigi	\N
3212162	3212	 Pasekan	\N
3212170	3212	 Lohbener	\N
3212171	3212	 Arahan	\N
3212180	3212	 Losarang	\N
3212190	3212	 Kandanghaur	\N
3212200	3212	 Bongas	\N
3212210	3212	 Anjatan	\N
3212220	3212	 Sukra	\N
3212221	3212	 Patrol	\N
3213010	3213	 Sagalaherang	\N
3213011	3213	 Serangpanjang	\N
3213020	3213	 Jalancagak	\N
3213021	3213	 Ciater	\N
3213030	3213	 Cisalak	\N
3213031	3213	 Kasomalang	\N
3213040	3213	 Tanjungsiang	\N
3213050	3213	 Cijambe	\N
3213060	3213	 Cibogo	\N
3213070	3213	 Subang	\N
3213080	3213	 Kalijati	\N
3213081	3213	 Dawuan	\N
3213090	3213	 Cipeundeuy	\N
3213100	3213	 Pabuaran	\N
3213110	3213	 Patokbeusi	\N
3213120	3213	 Purwadadi	\N
3213130	3213	 Cikaum	\N
3213140	3213	 Pagaden	\N
3213141	3213	 Pagaden Barat	\N
3213150	3213	 Cipunagara	\N
3213160	3213	 Compreng	\N
3213170	3213	 Binong	\N
3213171	3213	 Tambakdahan	\N
3213180	3213	 Ciasem	\N
3213190	3213	 Pamanukan	\N
3213191	3213	 Sukasari	\N
3213200	3213	 Pusakanagara	\N
3213201	3213	 Pusakajaya	\N
3213210	3213	 Legonkulon	\N
3213220	3213	 Blanakan	\N
3214010	3214	 Jatiluhur	\N
3214011	3214	 Sukasari	\N
3214020	3214	 Maniis	\N
3214030	3214	 Tegal Waru	\N
3214040	3214	 Plered	\N
3214050	3214	 Sukatani	\N
3214060	3214	 Darangdan	\N
3214070	3214	 Bojong	\N
3214080	3214	 Wanayasa	\N
3214081	3214	 Kiarapedes	\N
3214090	3214	 Pasawahan	\N
3214091	3214	 Pondok Salam	\N
3214100	3214	 Purwakarta	\N
3214101	3214	 Babakancikao	\N
3214110	3214	 Campaka	\N
3214111	3214	 Cibatu	\N
3214112	3214	 Bungursari	\N
3215010	3215	 Pangkalan	\N
3215011	3215	 Tegalwaru	\N
3215020	3215	 Ciampel	\N
3215031	3215	 Telukjambe Timur	\N
3215032	3215	 Telukjambe Barat	\N
3215040	3215	 Klari	\N
3215050	3215	 Cikampek	\N
3215051	3215	 Purwasari	\N
3215060	3215	 Tirtamulya	\N
3215070	3215	 Jatisari	\N
3215071	3215	 Banyusari	\N
3215072	3215	 Kotabaru	\N
3215081	3215	 Cilamaya Wetan	\N
3215082	3215	 Cilamaya Kulon	\N
3215090	3215	 Lemahabang	\N
3215100	3215	 Talagasari	\N
3215111	3215	 Majalaya	\N
3215112	3215	 Karawang Timur	\N
3215113	3215	 Karawang Barat	\N
3215120	3215	 Rawamerta	\N
3215130	3215	 Tempuran	\N
3215140	3215	 Kutawaluya	\N
3215150	3215	 Rengasdengklok	\N
3215151	3215	 Jayakerta	\N
3215160	3215	 Pedes	\N
3215161	3215	 Cilebar	\N
3215170	3215	 Cibuaya	\N
3215180	3215	 Tirtajaya	\N
3215190	3215	 Batujaya	\N
3215200	3215	 Pakisjaya	\N
3216010	3216	 Setu	\N
3216021	3216	 Serang Baru	\N
3216022	3216	 Cikarang Pusat	\N
3216023	3216	 Cikarang Selatan	\N
3216030	3216	 Cibarusah	\N
3216031	3216	 Bojongmangu	\N
3216041	3216	 Cikarang Timur	\N
3216050	3216	 Kedungwaringin	\N
3216061	3216	 Cikarang Utara	\N
3216062	3216	 Karangbahagia	\N
3216070	3216	 Cibitung	\N
3216071	3216	 Cikarang Barat	\N
3216081	3216	 Tambun Selatan	\N
3216082	3216	 Tambun Utara	\N
3216090	3216	 Babelan	\N
3216100	3216	 Tarumajaya	\N
3216110	3216	 Tambelang	\N
3216111	3216	 Sukawangi	\N
3216120	3216	 Sukatani	\N
3216121	3216	 Sukakarya	\N
3216130	3216	 Pebayuran	\N
3216140	3216	 Cabangbungin	\N
3216150	3216	 Muara Gembong	\N
3217010	3217	 Rongga	\N
3217020	3217	 Gununghalu	\N
3217030	3217	 Sindangkerta	\N
3217040	3217	 Cililin	\N
3217050	3217	 Cihampelas	\N
3217060	3217	 Cipongkor	\N
3217070	3217	 Batujajar	\N
3217071	3217	 Saguling	\N
3217080	3217	 Cipatat	\N
3217090	3217	 Padalarang	\N
3217100	3217	 Ngamprah	\N
3217110	3217	 Parongpong	\N
3217120	3217	 Lembang	\N
3217130	3217	 Cisarua	\N
3217140	3217	 Cikalong Wetan	\N
3217150	3217	 Cipeundeuy	\N
3218010	3218	 Cimerak	\N
3218020	3218	 Cijulang	\N
3218030	3218	 Cigugur	\N
3218040	3218	 Langkaplancar	\N
3218050	3218	 Parigi	\N
3218060	3218	 Sidamulih	\N
3218070	3218	 Pangandaran	\N
3218080	3218	 Kalipucang	\N
3218090	3218	 Padaherang	\N
3218100	3218	 Mangunjaya	\N
3271010	3271	 Bogor Selatan	\N
3271020	3271	 Bogor Timur	\N
3271030	3271	 Bogor Utara	\N
3271040	3271	 Bogor Tengah	\N
3271050	3271	 Bogor Barat	\N
3271060	3271	 Tanah Sereal	\N
3272010	3272	 Baros	\N
3272011	3272	 Lembursitu	\N
3272012	3272	 Cibeureum	\N
3272020	3272	 Citamiang	\N
3272030	3272	 Warudoyong	\N
3272040	3272	 Gunung Puyuh	\N
3272050	3272	 Cikole	\N
3273010	3273	 Bandung Kulon	\N
3273020	3273	 Babakan Ciparay	\N
3273030	3273	 Bojongloa Kaler	\N
3273040	3273	 Bojongloa Kidul	\N
3273050	3273	 Astanaanyar	\N
3273060	3273	 Regol	\N
3273070	3273	 Lengkong	\N
3273080	3273	 Bandung Kidul	\N
3273090	3273	 Buahbatu	\N
3273100	3273	 Rancasari	\N
3273101	3273	 Gedebage	\N
3273110	3273	 Cibiru	\N
3273111	3273	 Panyileukan	\N
3273120	3273	 Ujung Berung	\N
3273121	3273	 Cinambo	\N
3273130	3273	 Arcamanik	\N
3273141	3273	 Antapani	\N
3273142	3273	 Mandalajati	\N
3273150	3273	 Kiaracondong	\N
3273160	3273	 Batununggal	\N
3273170	3273	 Sumur Bandung	\N
3273180	3273	 Andir	\N
3273190	3273	 Cicendo	\N
3273200	3273	 Bandung Wetan	\N
3273210	3273	 Cibeunying Kidul	\N
3273220	3273	 Cibeunying Kaler	\N
3273230	3273	 Coblong	\N
3273240	3273	 Sukajadi	\N
3273250	3273	 Sukasari	\N
3273260	3273	 Cidadap	\N
3274010	3274	 Harjamukti	\N
3274020	3274	 Lemahwungkuk	\N
3274030	3274	 Pekalipan	\N
3274040	3274	 Kesambi	\N
3274050	3274	 Kejaksan	\N
3275010	3275	 Pondokgede	\N
3275011	3275	 Jatisampurna	\N
3275012	3275	 Pondokmelati	\N
3275020	3275	 Jatiasih	\N
3275030	3275	 Bantargebang	\N
3275031	3275	 Mustikajaya	\N
3275040	3275	 Bekasi Timur	\N
3275041	3275	 Rawalumbu	\N
3275050	3275	 Bekasi Selatan	\N
3275060	3275	 Bekasi Barat	\N
3275061	3275	 Medan Satria	\N
3275070	3275	 Bekasi Utara	\N
3276010	3276	 Sawangan	\N
3276011	3276	 Bojongsari	\N
3276020	3276	 Pancoran Mas	\N
3276021	3276	 Cipayung	\N
3276030	3276	 Sukma Jaya	\N
3276031	3276	 Cilodong	\N
3276040	3276	 Cimanggis	\N
3276041	3276	 Tapos	\N
3276050	3276	 Beji	\N
3276060	3276	 Limo	\N
3276061	3276	 Cinere	\N
3277010	3277	 Cimahi Selatan	\N
3277020	3277	 Cimahi Tengah	\N
3277030	3277	 Cimahi Utara	\N
3278010	3278	 Kawalu	\N
3278020	3278	 Tamansari	\N
3278030	3278	 Cibeureum	\N
3278031	3278	 Purbaratu	\N
3278040	3278	 Tawang	\N
3278050	3278	 Cihideung	\N
3278060	3278	 Mangkubumi	\N
3278070	3278	 Indihiang	\N
3278071	3278	 Bungursari	\N
3278080	3278	 Cipedes	\N
3279010	3279	 Banjar	\N
3279020	3279	 Purwaharja	\N
3279030	3279	 Pataruman	\N
3279040	3279	 Langensari	\N
3301010	3301	 Dayeuhluhur	\N
3301020	3301	 Wanareja	\N
3301030	3301	 Majenang	\N
3301040	3301	 Cimanggu	\N
3301050	3301	 Karangpucung	\N
3301060	3301	 Cipari	\N
3301070	3301	 Sidareja	\N
3301080	3301	 Kedungreja	\N
3301090	3301	 Patimuan	\N
3301100	3301	 Gandrungmangu	\N
3301110	3301	 Bantarsari	\N
3301120	3301	 Kawunganten	\N
3301121	3301	 Kampung Laut	\N
3301130	3301	 Jeruklegi	\N
3301140	3301	 Kesugihan	\N
3301150	3301	 Adipala	\N
3301160	3301	 Maos	\N
3301170	3301	 Sampang	\N
3301180	3301	 Kroya	\N
3301190	3301	 Binangun	\N
3301200	3301	 Nusawungu	\N
3301710	3301	 Cilacap Selatan	\N
3301720	3301	 Cilacap Tengah	\N
3301730	3301	 Cilacap Utara	\N
3302010	3302	 Lumbir	\N
3302020	3302	 Wangon	\N
3302030	3302	 Jatilawang	\N
3302040	3302	 Rawalo	\N
3302050	3302	 Kebasen	\N
3302060	3302	 Kemranjen	\N
3302070	3302	 Sumpiuh	\N
3302080	3302	 Tambak	\N
3302090	3302	 Somagede	\N
3302100	3302	 Kalibagor	\N
3302110	3302	 Banyumas	\N
3302120	3302	 Patikraja	\N
3302130	3302	 Purwojati	\N
3302140	3302	 Ajibarang	\N
3302150	3302	 Gumelar	\N
3302160	3302	 Pekuncen	\N
3302170	3302	 Cilongok	\N
3302180	3302	 Karanglewas	\N
3302190	3302	 Kedung Banteng	\N
3302200	3302	 Baturraden	\N
3302210	3302	 Sumbang	\N
3302220	3302	 Kembaran	\N
3302230	3302	 Sokaraja	\N
3302710	3302	 Purwokerto Selatan	\N
3302720	3302	 Purwokerto Barat	\N
3302730	3302	 Purwokerto Timur	\N
3302740	3302	 Purwokerto Utara	\N
3303010	3303	 Kemangkon	\N
3303020	3303	 Bukateja	\N
3303030	3303	 Kejobong	\N
3303040	3303	 Pengadegan	\N
3303050	3303	 Kaligondang	\N
3303060	3303	 Purbalingga	\N
3303070	3303	 Kalimanah	\N
3303080	3303	 Padamara	\N
3303090	3303	 Kutasari	\N
3303100	3303	 Bojongsari	\N
3303110	3303	 Mrebet	\N
3303120	3303	 Bobotsari	\N
3303130	3303	 Karangreja	\N
3303131	3303	 Karangjambu	\N
3303140	3303	 Karanganyar	\N
3303141	3303	 Kertanegara	\N
3303150	3303	 Karangmoncol	\N
3303160	3303	 Rembang	\N
3304010	3304	 Susukan	\N
3304020	3304	 Purwareja Klampok	\N
3304030	3304	 Mandiraja	\N
3304040	3304	 Purwanegara	\N
3304050	3304	 Bawang	\N
3304060	3304	 Banjarnegara	\N
3304061	3304	 Pagedongan	\N
3304070	3304	 Sigaluh	\N
3304080	3304	 Madukara	\N
3304090	3304	 Banjarmangu	\N
3304100	3304	 Wanadadi	\N
3304110	3304	 Rakit	\N
3304120	3304	 Punggelan	\N
3304130	3304	 Karangkobar	\N
3304140	3304	 Pagentan	\N
3304150	3304	 Pejawaran	\N
3304160	3304	 Batur	\N
3304170	3304	 Wanayasa	\N
3304180	3304	 Kalibening	\N
3304181	3304	 Pandanarum	\N
3305010	3305	 Ayah	\N
3305020	3305	 Buayan	\N
3305030	3305	 Puring	\N
3305040	3305	 Petanahan	\N
3305050	3305	 Klirong	\N
3305060	3305	 Buluspesantren	\N
3305070	3305	 Ambal	\N
3305080	3305	 Mirit	\N
3305081	3305	 Bonorowo	\N
3305090	3305	 Prembun	\N
3305091	3305	 Padureso	\N
3305100	3305	 Kutowinangun	\N
3305110	3305	 Alian	\N
3305111	3305	 Poncowarno	\N
3305120	3305	 Kebumen	\N
3305130	3305	 Pejagoan	\N
3305140	3305	 Sruweng	\N
3305150	3305	 Adimulyo	\N
3305160	3305	 Kuwarasan	\N
3305170	3305	 Rowokele	\N
3305180	3305	 Sempor	\N
3305190	3305	 Gombong	\N
3305200	3305	 Karanganyar	\N
3305210	3305	 Karanggayam	\N
3305220	3305	 Sadang	\N
3305221	3305	 Karangsambung	\N
3306010	3306	 Grabag	\N
3306020	3306	 Ngombol	\N
3306030	3306	 Purwodadi	\N
3306040	3306	 Bagelen	\N
3306050	3306	 Kaligesing	\N
3306060	3306	 Purworejo	\N
3306070	3306	 Banyu Urip	\N
3306080	3306	 Bayan	\N
3306090	3306	 Kutoarjo	\N
3306100	3306	 Butuh	\N
3306110	3306	 Pituruh	\N
3306120	3306	 Kemiri	\N
3306130	3306	 Bruno	\N
3306140	3306	 Gebang	\N
3306150	3306	 Loano	\N
3306160	3306	 Bener	\N
3307010	3307	 Wadaslintang	\N
3307020	3307	 Kepil	\N
3307030	3307	 Sapuran	\N
3307031	3307	 Kalibawang	\N
3307040	3307	 Kaliwiro	\N
3307050	3307	 Leksono	\N
3307051	3307	 Sukoharjo	\N
3307060	3307	 Selomerto	\N
3307070	3307	 Kalikajar	\N
3307080	3307	 Kertek	\N
3307090	3307	 Wonosobo	\N
3307100	3307	 Watumalang	\N
3307110	3307	 Mojotengah	\N
3307120	3307	 Garung	\N
3307130	3307	 Kejajar	\N
3308010	3308	 Salaman	\N
3308020	3308	 Borobudur	\N
3308030	3308	 Ngluwar	\N
3308040	3308	 Salam	\N
3308050	3308	 Srumbung	\N
3308060	3308	 Dukun	\N
3308070	3308	 Muntilan	\N
3308080	3308	 Mungkid	\N
3308090	3308	 Sawangan	\N
3308100	3308	 Candimulyo	\N
3308110	3308	 Mertoyudan	\N
3308120	3308	 Tempuran	\N
3308130	3308	 Kajoran	\N
3308140	3308	 Kaliangkrik	\N
3308150	3308	 Bandongan	\N
3308160	3308	 Windusari	\N
3308170	3308	 Secang	\N
3308180	3308	 Tegalrejo	\N
3308190	3308	 Pakis	\N
3308200	3308	 Grabag	\N
3308210	3308	 Ngablak	\N
3309010	3309	 Selo	\N
3309020	3309	 Ampel	\N
3309030	3309	 Cepogo	\N
3309040	3309	 Musuk	\N
3309050	3309	 Boyolali	\N
3309060	3309	 Mojosongo	\N
3309070	3309	 Teras	\N
3309080	3309	 Sawit	\N
3309090	3309	 Banyudono	\N
3309100	3309	 Sambi	\N
3309110	3309	 Ngemplak	\N
3309120	3309	 Nogosari	\N
3309130	3309	 Simo	\N
3309140	3309	 Karanggede	\N
3309150	3309	 Klego	\N
3309160	3309	 Andong	\N
3309170	3309	 Kemusu	\N
3309180	3309	 Wonosegoro	\N
3309190	3309	 Juwangi	\N
3310010	3310	 Prambanan	\N
3310020	3310	 Gantiwarno	\N
3310030	3310	 Wedi	\N
3310040	3310	 Bayat	\N
3310050	3310	 Cawas	\N
3310060	3310	 Trucuk	\N
3310070	3310	 Kalikotes	\N
3310080	3310	 Kebonarum	\N
3310090	3310	 Jogonalan	\N
3310100	3310	 Manisrenggo	\N
3310110	3310	 Karangnongko	\N
3310120	3310	 Ngawen	\N
3310130	3310	 Ceper	\N
3310140	3310	 Pedan	\N
3310150	3310	 Karangdowo	\N
3310160	3310	 Juwiring	\N
3310170	3310	 Wonosari	\N
3310180	3310	 Delanggu	\N
3310190	3310	 Polanharjo	\N
3310200	3310	 Karanganom	\N
3310210	3310	 Tulung	\N
3310220	3310	 Jatinom	\N
3310230	3310	 Kemalang	\N
3310710	3310	 Klaten Selatan	\N
3310720	3310	 Klaten Tengah	\N
3310730	3310	 Klaten Utara	\N
3311010	3311	 Weru	\N
3311020	3311	 Bulu	\N
3311030	3311	 Tawangsari	\N
3311040	3311	 Sukoharjo	\N
3311050	3311	 Nguter	\N
3311060	3311	 Bendosari	\N
3311070	3311	 Polokarto	\N
3311080	3311	 Mojolaban	\N
3311090	3311	 Grogol	\N
3311100	3311	 Baki	\N
3311110	3311	 Gatak	\N
3311120	3311	 Kartasura	\N
3312010	3312	 Pracimantoro	\N
3312020	3312	 Paranggupito	\N
3312030	3312	 Giritontro	\N
3312040	3312	 Giriwoyo	\N
3312050	3312	 Batuwarno	\N
3312060	3312	 Karangtengah	\N
3312070	3312	 Tirtomoyo	\N
3312080	3312	 Nguntoronadi	\N
3312090	3312	 Baturetno	\N
3312100	3312	 Eromoko	\N
3312110	3312	 Wuryantoro	\N
3312120	3312	 Manyaran	\N
3312130	3312	 Selogiri	\N
3312140	3312	 Wonogiri	\N
3312150	3312	 Ngadirojo	\N
3312160	3312	 Sidoharjo	\N
3312170	3312	 Jatiroto	\N
3312180	3312	 Kismantoro	\N
3312190	3312	 Purwantoro	\N
3312200	3312	 Bulukerto	\N
3312201	3312	 Puhpelem	\N
3312210	3312	 Slogohimo	\N
3312220	3312	 Jatisrono	\N
3312230	3312	 Jatipurno	\N
3312240	3312	 Girimarto	\N
3313010	3313	 Jatipuro	\N
3313020	3313	 Jatiyoso	\N
3313030	3313	 Jumapolo	\N
3313040	3313	 Jumantono	\N
3313050	3313	 Matesih	\N
3313060	3313	 Tawangmangu	\N
3313070	3313	 Ngargoyoso	\N
3313080	3313	 Karangpandan	\N
3313090	3313	 Karanganyar	\N
3313100	3313	 Tasikmadu	\N
3313110	3313	 Jaten	\N
3313120	3313	 Colomadu	\N
3313130	3313	 Gondangrejo	\N
3313140	3313	 Kebakkramat	\N
3313150	3313	 Mojogedang	\N
3313160	3313	 Kerjo	\N
3313170	3313	 Jenawi	\N
3314010	3314	 Kalijambe	\N
3314020	3314	 Plupuh	\N
3314030	3314	 Masaran	\N
3314040	3314	 Kedawung	\N
3314050	3314	 Sambirejo	\N
3314060	3314	 Gondang	\N
3314070	3314	 Sambung Macan	\N
3314080	3314	 Ngrampal	\N
3314090	3314	 Karangmalang	\N
3314100	3314	 Sragen	\N
3314110	3314	 Sidoharjo	\N
3314120	3314	 Tanon	\N
3314130	3314	 Gemolong	\N
3314140	3314	 Miri	\N
3314150	3314	 Sumberlawang	\N
3314160	3314	 Mondokan	\N
3314170	3314	 Sukodono	\N
3314180	3314	 Gesi	\N
3314190	3314	 Tangen	\N
3314200	3314	 Jenar	\N
3315010	3315	 Kedungjati	\N
3315020	3315	 Karangrayung	\N
3315030	3315	 Penawangan	\N
3315040	3315	 Toroh	\N
3315050	3315	 Geyer	\N
3315060	3315	 Pulokulon	\N
3315070	3315	 Kradenan	\N
3315080	3315	 Gabus	\N
3315090	3315	 Ngaringan	\N
3315100	3315	 Wirosari	\N
3315110	3315	 Tawangharjo	\N
3315120	3315	 Grobogan	\N
3315130	3315	 Purwodadi	\N
3315140	3315	 Brati	\N
3315150	3315	 Klambu	\N
3315160	3315	 Godong	\N
3315170	3315	 Gubug	\N
3315180	3315	 Tegowanu	\N
3315190	3315	 Tanggungharjo	\N
3316010	3316	 Jati	\N
3316020	3316	 Randublatung	\N
3316030	3316	 Kradenan	\N
3316040	3316	 Kedungtuban	\N
3316050	3316	 Cepu	\N
3316060	3316	 Sambong	\N
3316070	3316	 Jiken	\N
3316080	3316	 Bogorejo	\N
3316090	3316	 Jepon	\N
3316100	3316	 Kota Blora	\N
3316110	3316	 Banjarejo	\N
3316120	3316	 Tunjungan	\N
3316130	3316	 Japah	\N
3316140	3316	 Ngawen	\N
3316150	3316	 Kunduran	\N
3316160	3316	 Todanan	\N
3317010	3317	 Sumber	\N
3317020	3317	 Bulu	\N
3317030	3317	 Gunem	\N
3317040	3317	 Sale	\N
3317050	3317	 Sarang	\N
3317060	3317	 Sedan	\N
3317070	3317	 Pamotan	\N
3317080	3317	 Sulang	\N
3317090	3317	 Kaliori	\N
3317100	3317	 Rembang	\N
3317110	3317	 Pancur	\N
3317120	3317	 Kragan	\N
3317130	3317	 Sluke	\N
3317140	3317	 Lasem	\N
3318010	3318	 Sukolilo	\N
3318020	3318	 Kayen	\N
3318030	3318	 Tambakromo	\N
3318040	3318	 Winong	\N
3318050	3318	 Pucakwangi	\N
3318060	3318	 Jaken	\N
3318070	3318	 Batangan	\N
3318080	3318	 Juwana	\N
3318090	3318	 Jakenan	\N
3318100	3318	 Pati	\N
3318110	3318	 Gabus	\N
3318120	3318	 Margorejo	\N
3318130	3318	 Gembong	\N
3318140	3318	 Tlogowungu	\N
3318150	3318	 Wedarijaksa	\N
3318160	3318	 Trangkil	\N
3318170	3318	 Margoyoso	\N
3318180	3318	 Gunung Wungkal	\N
3318190	3318	 Cluwak	\N
3318200	3318	 Tayu	\N
3318210	3318	 Dukuhseti	\N
3319010	3319	 Kaliwungu	\N
3319020	3319	 Kota Kudus	\N
3319030	3319	 Jati	\N
3319040	3319	 Undaan	\N
3319050	3319	 Mejobo	\N
3319060	3319	 Jekulo	\N
3319070	3319	 Bae	\N
3319080	3319	 Gebog	\N
3319090	3319	 Dawe	\N
3320010	3320	 Kedung	\N
3320020	3320	 Pecangaan	\N
3320021	3320	 Kalinyamatan	\N
3320030	3320	 Welahan	\N
3320040	3320	 Mayong	\N
3320050	3320	 Nalumsari	\N
3320060	3320	 Batealit	\N
3320070	3320	 Tahunan	\N
3320080	3320	 Jepara	\N
3320090	3320	 Mlonggo	\N
3320091	3320	 Pakis Aji	\N
3320100	3320	 Bangsri	\N
3320101	3320	 Kembang	\N
3320110	3320	 Keling	\N
3320111	3320	 Donorojo	\N
3320120	3320	 Karimunjawa	\N
3321010	3321	 Mranggen	\N
3321020	3321	 Karangawen	\N
3321030	3321	 Guntur	\N
3321040	3321	 Sayung	\N
3321050	3321	 Karang Tengah	\N
3321060	3321	 Bonang	\N
3321070	3321	 Demak	\N
3321080	3321	 Wonosalam	\N
3321090	3321	 Dempet	\N
3321091	3321	 Kebonagung	\N
3321100	3321	 Gajah	\N
3321110	3321	 Karanganyar	\N
3321120	3321	 Mijen	\N
3321130	3321	 Wedung	\N
3322010	3322	 Getasan	\N
3322020	3322	 Tengaran	\N
3322030	3322	 Susukan	\N
3322031	3322	 Kaliwungu	\N
3322040	3322	 Suruh	\N
3322050	3322	 Pabelan	\N
3322060	3322	 Tuntang	\N
3322070	3322	 Banyubiru	\N
3322080	3322	 Jambu	\N
3322090	3322	 Sumowono	\N
3322100	3322	 Ambarawa	\N
3322101	3322	 Bandungan	\N
3322110	3322	 Bawen	\N
3322120	3322	 Bringin	\N
3322121	3322	 Bancak	\N
3322130	3322	 Pringapus	\N
3322140	3322	 Bergas	\N
3322151	3322	 Ungaran Barat	\N
3322152	3322	 Ungaran Timur	\N
3323010	3323	 Parakan	\N
3323011	3323	 Kledung	\N
3323012	3323	 Bansari	\N
3323020	3323	 Bulu	\N
3323030	3323	 Temanggung	\N
3323031	3323	 Tlogomulyo	\N
3323040	3323	 Tembarak	\N
3323041	3323	 Selopampang	\N
3323050	3323	 Kranggan	\N
3323060	3323	 Pringsurat	\N
3323070	3323	 Kaloran	\N
3323080	3323	 Kandangan	\N
3323090	3323	 Kedu	\N
3323100	3323	 Ngadirejo	\N
3323110	3323	 Jumo	\N
3323111	3323	 Gemawang	\N
3323120	3323	 Candiroto	\N
3323121	3323	 Bejen	\N
3323130	3323	 Tretep	\N
3323131	3323	 Wonoboyo	\N
3324010	3324	 Plantungan	\N
3324020	3324	 Sukorejo	\N
3324030	3324	 Pagerruyung	\N
3324040	3324	 Patean	\N
3324050	3324	 Singorojo	\N
3324060	3324	 Limbangan	\N
3324070	3324	 Boja	\N
3324080	3324	 Kaliwungu	\N
3324081	3324	 Kaliwungu Selatan	\N
3324090	3324	 Brangsong	\N
3324100	3324	 Pegandon	\N
3324101	3324	 Ngampel	\N
3324110	3324	 Gemuh	\N
3324111	3324	 Ringinarum	\N
3324120	3324	 Weleri	\N
3324130	3324	 Rowosari	\N
3324140	3324	 Kangkung	\N
3324150	3324	 Cepiring	\N
3324160	3324	 Patebon	\N
3324170	3324	 Kota Kendal	\N
3325010	3325	 Wonotunggal	\N
3325020	3325	 Bandar	\N
3325030	3325	 Blado	\N
3325040	3325	 Reban	\N
3325050	3325	 Bawang	\N
3325060	3325	 Tersono	\N
3325070	3325	 Gringsing	\N
3325080	3325	 Limpung	\N
3325081	3325	 Banyuputih	\N
3325090	3325	 Subah	\N
3325091	3325	 Pecalungan	\N
3325100	3325	 Tulis	\N
3325101	3325	 Kandeman	\N
3325110	3325	 Batang	\N
3325120	3325	 Warung Asem	\N
3326010	3326	 Kandangserang	\N
3326020	3326	 Paninggaran	\N
3326030	3326	 Lebakbarang	\N
3326040	3326	 Petungkriono	\N
3326050	3326	 Talun	\N
3326060	3326	 Doro	\N
3326070	3326	 Karanganyar	\N
3326080	3326	 Kajen	\N
3326090	3326	 Kesesi	\N
3326100	3326	 Sragi	\N
3326101	3326	 Siwalan	\N
3326110	3326	 Bojong	\N
3326120	3326	 Wonopringgo	\N
3326130	3326	 Kedungwuni	\N
3326131	3326	 Karangdadap	\N
3326140	3326	 Buaran	\N
3326150	3326	 Tirto	\N
3326160	3326	 Wiradesa	\N
3326161	3326	 Wonokerto	\N
3327010	3327	 Moga	\N
3327011	3327	 Warungpring	\N
3327020	3327	 Pulosari	\N
3327030	3327	 Belik	\N
3327040	3327	 Watukumpul	\N
3327050	3327	 Bodeh	\N
3327060	3327	 Bantarbolang	\N
3327070	3327	 Randudongkal	\N
3327080	3327	 Pemalang	\N
3327090	3327	 Taman	\N
3327100	3327	 Petarukan	\N
3327110	3327	 Ampelgading	\N
3327120	3327	 Comal	\N
3327130	3327	 Ulujami	\N
3328010	3328	 Margasari	\N
3328020	3328	 Bumijawa	\N
3328030	3328	 Bojong	\N
3328040	3328	 Balapulang	\N
3328050	3328	 Pagerbarang	\N
3328060	3328	 Lebaksiu	\N
3328070	3328	 Jatinegara	\N
3328080	3328	 Kedung Banteng	\N
3328090	3328	 Pangkah	\N
3328100	3328	 Slawi	\N
3328110	3328	 Dukuhwaru	\N
3328120	3328	 Adiwerna	\N
3328130	3328	 Dukuhturi	\N
3328140	3328	 Talang	\N
3328150	3328	 Tarub	\N
3328160	3328	 Kramat	\N
3328170	3328	 Suradadi	\N
3328180	3328	 Warureja	\N
3329010	3329	 Salem	\N
3329020	3329	 Bantarkawung	\N
3329030	3329	 Bumiayu	\N
3329040	3329	 Paguyangan	\N
3329050	3329	 Sirampog	\N
3329060	3329	 Tonjong	\N
3329070	3329	 Larangan	\N
3329080	3329	 Ketanggungan	\N
3329090	3329	 Banjarharjo	\N
3329100	3329	 Losari	\N
3329110	3329	 Tanjung	\N
3329120	3329	 Kersana	\N
3329130	3329	 Bulakamba	\N
3329140	3329	 Wanasari	\N
3329150	3329	 Songgom	\N
3329160	3329	 Jatibarang	\N
3329170	3329	 Brebes	\N
3371010	3371	 Magelang Selatan	\N
3371011	3371	 Magelang Tengah	\N
3371020	3371	 Magelang Utara	\N
3372010	3372	 Laweyan	\N
3372020	3372	 Serengan	\N
3372030	3372	 Pasar Kliwon	\N
3372040	3372	 Jebres	\N
3372050	3372	 Banjarsari	\N
3373010	3373	 Argomulyo	\N
3373020	3373	 Tingkir	\N
3373030	3373	 Sidomukti	\N
3373040	3373	 Sidorejo	\N
3374010	3374	 Mijen	\N
3374020	3374	 Gunung Pati	\N
3374030	3374	 Banyumanik	\N
3374040	3374	 Gajah Mungkur	\N
3374050	3374	 Semarang Selatan	\N
3374060	3374	 Candisari	\N
3374070	3374	 Tembalang	\N
3374080	3374	 Pedurungan	\N
3374090	3374	 Genuk	\N
3374100	3374	 Gayamsari	\N
3374110	3374	 Semarang Timur	\N
3374120	3374	 Semarang Utara	\N
3374130	3374	 Semarang Tengah	\N
3374140	3374	 Semarang Barat	\N
3374150	3374	 Tugu	\N
3374160	3374	 Ngaliyan	\N
3375010	3375	 Pekalongan Barat	\N
3375020	3375	 Pekalongan Timur	\N
3375030	3375	 Pekalongan Selatan	\N
3375040	3375	 Pekalongan Utara	\N
3376010	3376	 Tegal Selatan	\N
3376020	3376	 Tegal Timur	\N
3376030	3376	 Tegal Barat	\N
3376040	3376	 Margadana	\N
3401010	3401	 Temon	\N
3401020	3401	 Wates	\N
3401030	3401	 Panjatan	\N
3401040	3401	 Galur	\N
3401050	3401	 Lendah	\N
3401060	3401	 Sentolo	\N
3401070	3401	 Pengasih	\N
3401080	3401	 Kokap	\N
3401090	3401	 Girimulyo	\N
3401100	3401	 Nanggulan	\N
3401110	3401	 Kalibawang	\N
3401120	3401	 Samigaluh	\N
3402010	3402	 Srandakan	\N
3402020	3402	 Sanden	\N
3402030	3402	 Kretek	\N
3402040	3402	 Pundong	\N
3402050	3402	 Bambang Lipuro	\N
3402060	3402	 Pandak	\N
3402070	3402	 Bantul	\N
3402080	3402	 Jetis	\N
3402090	3402	 Imogiri	\N
3402100	3402	 Dlingo	\N
3402110	3402	 Pleret	\N
3402120	3402	 Piyungan	\N
3402130	3402	 Banguntapan	\N
3402140	3402	 Sewon	\N
3402150	3402	 Kasihan	\N
3402160	3402	 Pajangan	\N
3402170	3402	 Sedayu	\N
3403010	3403	 Panggang	\N
3403011	3403	 Purwosari	\N
3403020	3403	 Paliyan	\N
3403030	3403	 Sapto Sari	\N
3403040	3403	 Tepus	\N
3403041	3403	 Tanjungsari	\N
3403050	3403	 Rongkop	\N
3403051	3403	 Girisubo	\N
3403060	3403	 Semanu	\N
3403070	3403	 Ponjong	\N
3403080	3403	 Karangmojo	\N
3403090	3403	 Wonosari	\N
3403100	3403	 Playen	\N
3403110	3403	 Patuk	\N
3403120	3403	 Gedang Sari	\N
3403130	3403	 Nglipar	\N
3403140	3403	 Ngawen	\N
3403150	3403	 Semin	\N
3404010	3404	 Moyudan	\N
3404020	3404	 Minggir	\N
3404030	3404	 Seyegan	\N
3404040	3404	 Godean	\N
3404050	3404	 Gamping	\N
3404060	3404	 Mlati	\N
3404070	3404	 Depok	\N
3404080	3404	 Berbah	\N
3404090	3404	 Prambanan	\N
3404100	3404	 Kalasan	\N
3404110	3404	 Ngemplak	\N
3404120	3404	 Ngaglik	\N
3404130	3404	 Sleman	\N
3404140	3404	 Tempel	\N
3404150	3404	 Turi	\N
3404160	3404	 Pakem	\N
3404170	3404	 Cangkringan	\N
3471010	3471	 Mantrijeron	\N
3471020	3471	 Kraton	\N
3471030	3471	 Mergangsan	\N
3471040	3471	 Umbulharjo	\N
3471050	3471	 Kotagede	\N
3471060	3471	 Gondokusuman	\N
3471070	3471	 Danurejan	\N
3471080	3471	 Pakualaman	\N
3471090	3471	 Gondomanan	\N
3471100	3471	 Ngampilan	\N
3471110	3471	 Wirobrajan	\N
3471120	3471	 Gedong Tengen	\N
3471130	3471	 Jetis	\N
3471140	3471	 Tegalrejo	\N
3501010	3501	 Donorojo	\N
3501020	3501	 Punung	\N
3501030	3501	 Pringkuku	\N
3501040	3501	 Pacitan	\N
3501050	3501	 Kebonagung	\N
3501060	3501	 Arjosari	\N
3501070	3501	 Nawangan	\N
3501080	3501	 Bandar	\N
3501090	3501	 Tegalombo	\N
3501100	3501	 Tulakan	\N
3501110	3501	 Ngadirojo	\N
3501120	3501	 Sudimoro	\N
3502010	3502	 Ngrayun	\N
3502020	3502	 Slahung	\N
3502030	3502	 Bungkal	\N
3502040	3502	 Sambit	\N
3502050	3502	 Sawoo	\N
3502060	3502	 Sooko	\N
3502061	3502	 Pudak	\N
3502070	3502	 Pulung	\N
3502080	3502	 Mlarak	\N
3502090	3502	 Siman	\N
3502100	3502	 Jetis	\N
3502110	3502	 Balong	\N
3502120	3502	 Kauman	\N
3502130	3502	 Jambon	\N
3502140	3502	 Badegan	\N
3502150	3502	 Sampung	\N
3502160	3502	 Sukorejo	\N
3502170	3502	 Ponorogo	\N
3502180	3502	 Babadan	\N
3502190	3502	 Jenangan	\N
3502200	3502	 Ngebel	\N
3503010	3503	 Panggul	\N
3503020	3503	 Munjungan	\N
3503030	3503	 Watulimo	\N
3503040	3503	 Kampak	\N
3503050	3503	 Dongko	\N
3503060	3503	 Pule	\N
3503070	3503	 Karangan	\N
3503071	3503	 Suruh	\N
3503080	3503	 Gandusari	\N
3503090	3503	 Durenan	\N
3503100	3503	 Pogalan	\N
3503110	3503	 Trenggalek	\N
3503120	3503	 Tugu	\N
3503130	3503	 Bendungan	\N
3504010	3504	 Besuki	\N
3504020	3504	 Bandung	\N
3504030	3504	 Pakel	\N
3504040	3504	 Campur Darat	\N
3504050	3504	 Tanggung Gunung	\N
3504060	3504	 Kalidawir	\N
3504070	3504	 Pucang Laban	\N
3504080	3504	 Rejotangan	\N
3504090	3504	 Ngunut	\N
3504100	3504	 Sumbergempol	\N
3504110	3504	 Boyolangu	\N
3504120	3504	 Tulungagung	\N
3504130	3504	 Kedungwaru	\N
3504140	3504	 Ngantru	\N
3504150	3504	 Karangrejo	\N
3504160	3504	 Kauman	\N
3504170	3504	 Gondang	\N
3504180	3504	 Pager Wojo	\N
3504190	3504	 Sendang	\N
3505010	3505	 Bakung	\N
3505020	3505	 Wonotirto	\N
3505030	3505	 Panggungrejo	\N
3505040	3505	 Wates	\N
3505050	3505	 Binangun	\N
3505060	3505	 Sutojayan	\N
3505070	3505	 Kademangan	\N
3505080	3505	 Kanigoro	\N
3505090	3505	 Talun	\N
3505100	3505	 Selopuro	\N
3505110	3505	 Kesamben	\N
3505120	3505	 Selorejo	\N
3505130	3505	 Doko	\N
3505140	3505	 Wlingi	\N
3505150	3505	 Gandusari	\N
3505160	3505	 Garum	\N
3505170	3505	 Nglegok	\N
3505180	3505	 Sanankulon	\N
3505190	3505	 Ponggok	\N
3505200	3505	 Srengat	\N
3505210	3505	 Wonodadi	\N
3505220	3505	 Udanawu	\N
3506010	3506	 Mojo	\N
3506020	3506	 Semen	\N
3506030	3506	 Ngadiluwih	\N
3506040	3506	 Kras	\N
3506050	3506	 Ringinrejo	\N
3506060	3506	 Kandat	\N
3506070	3506	 Wates	\N
3506080	3506	 Ngancar	\N
3506090	3506	 Plosoklaten	\N
3506100	3506	 Gurah	\N
3506110	3506	 Puncu	\N
3506120	3506	 Kepung	\N
3506130	3506	 Kandangan	\N
3506140	3506	 Pare	\N
3506141	3506	 Badas	\N
3506150	3506	 Kunjang	\N
3506160	3506	 Plemahan	\N
3506170	3506	 Purwoasri	\N
3506180	3506	 Papar	\N
3506190	3506	 Pagu	\N
3506191	3506	 Kayen Kidul	\N
3506200	3506	 Gampengrejo	\N
3506201	3506	 Ngasem	\N
3506210	3506	 Banyakan	\N
3506220	3506	 Grogol	\N
3506230	3506	 Tarokan	\N
3507010	3507	 Donomulyo	\N
3507020	3507	 Kalipare	\N
3507030	3507	 Pagak	\N
3507040	3507	 Bantur	\N
3507050	3507	 Gedangan	\N
3507060	3507	 Sumbermanjing	\N
3507070	3507	 Dampit	\N
3507080	3507	 Tirto Yudo	\N
3507090	3507	 Ampelgading	\N
3507100	3507	 Poncokusumo	\N
3507110	3507	 Wajak	\N
3507120	3507	 Turen	\N
3507130	3507	 Bululawang	\N
3507140	3507	 Gondanglegi	\N
3507150	3507	 Pagelaran	\N
3507160	3507	 Kepanjen	\N
3507170	3507	 Sumber Pucung	\N
3507180	3507	 Kromengan	\N
3507190	3507	 Ngajum	\N
3507200	3507	 Wonosari	\N
3507210	3507	 Wagir	\N
3507220	3507	 Pakisaji	\N
3507230	3507	 Tajinan	\N
3507240	3507	 Tumpang	\N
3507250	3507	 Pakis	\N
3507260	3507	 Jabung	\N
3507270	3507	 Lawang	\N
3507280	3507	 Singosari	\N
3507290	3507	 Karangploso	\N
3507300	3507	 Dau	\N
3507310	3507	 Pujon	\N
3507320	3507	 Ngantang	\N
3507330	3507	 Kasembon	\N
3508010	3508	 Tempursari	\N
3508020	3508	 Pronojiwo	\N
3508030	3508	 Candipuro	\N
3508040	3508	 Pasirian	\N
3508050	3508	 Tempeh	\N
3508060	3508	 Lumajang	\N
3508061	3508	 Sumbersuko	\N
3508070	3508	 Tekung	\N
3508080	3508	 Kunir	\N
3508090	3508	 Yosowilangun	\N
3508100	3508	 Rowokangkung	\N
3508110	3508	 Jatiroto	\N
3508120	3508	 Randuagung	\N
3508130	3508	 Sukodono	\N
3508140	3508	 Padang	\N
3508150	3508	 Pasrujambe	\N
3508160	3508	 Senduro	\N
3508170	3508	 Gucialit	\N
3508180	3508	 Kedungjajang	\N
3508190	3508	 Klakah	\N
3508200	3508	 Ranuyoso	\N
3509010	3509	 Kencong	\N
3509020	3509	 Gumuk Mas	\N
3509030	3509	 Puger	\N
3509040	3509	 Wuluhan	\N
3509050	3509	 Ambulu	\N
3509060	3509	 Tempurejo	\N
3509070	3509	 Silo	\N
3509080	3509	 Mayang	\N
3509090	3509	 Mumbulsari	\N
3509100	3509	 Jenggawah	\N
3509110	3509	 Ajung	\N
3509120	3509	 Rambipuji	\N
3509130	3509	 Balung	\N
3509140	3509	 Umbulsari	\N
3509150	3509	 Semboro	\N
3509160	3509	 Jombang	\N
3509170	3509	 Sumber Baru	\N
3509180	3509	 Tanggul	\N
3509190	3509	 Bangsalsari	\N
3509200	3509	 Panti	\N
3509210	3509	 Sukorambi	\N
3509220	3509	 Arjasa	\N
3509230	3509	 Pakusari	\N
3509240	3509	 Kalisat	\N
3509250	3509	 Ledokombo	\N
3509260	3509	 Sumberjambe	\N
3509270	3509	 Sukowono	\N
3509280	3509	 Jelbuk	\N
3509710	3509	 Kaliwates	\N
3509720	3509	 Sumbersari	\N
3509730	3509	 Patrang	\N
3510010	3510	 Pesanggaran	\N
3510011	3510	 Siliragung	\N
3510020	3510	 Bangorejo	\N
3510030	3510	 Purwoharjo	\N
3510040	3510	 Tegaldlimo	\N
3510050	3510	 Muncar	\N
3510060	3510	 Cluring	\N
3510070	3510	 Gambiran	\N
3510071	3510	 Tegalsari	\N
3510080	3510	 Glenmore	\N
3510090	3510	 Kalibaru	\N
3510100	3510	 Genteng	\N
3510110	3510	 Srono	\N
3510120	3510	 Rogojampi	\N
3510130	3510	 Kabat	\N
3510140	3510	 Singojuruh	\N
3510150	3510	 Sempu	\N
3510160	3510	 Songgon	\N
3510170	3510	 Glagah	\N
3510171	3510	 Licin	\N
3510180	3510	 Banyuwangi	\N
3510190	3510	 Giri	\N
3510200	3510	 Kalipuro	\N
3510210	3510	 Wongsorejo	\N
3511010	3511	 Maesan	\N
3511020	3511	 Grujugan	\N
3511030	3511	 Tamanan	\N
3511031	3511	 Jambesari Darus Sholah	\N
3511040	3511	 Pujer	\N
3511050	3511	 Tlogosari	\N
3511060	3511	 Sukosari	\N
3511061	3511	 Sumber Wringin	\N
3511070	3511	 Tapen	\N
3511080	3511	 Wonosari	\N
3511090	3511	 Tenggarang	\N
3511100	3511	 Bondowoso	\N
3511110	3511	 Curah Dami	\N
3511111	3511	 Binakal	\N
3511120	3511	 Pakem	\N
3511130	3511	 Wringin	\N
3511140	3511	 Tegalampel	\N
3511141	3511	 Taman Krocok	\N
3511150	3511	 Klabang	\N
3511151	3511	 Sempol	\N
3511152	3511	 Botolinggo	\N
3511160	3511	 Prajekan	\N
3511170	3511	 Cermee	\N
3512010	3512	 Sumbermalang	\N
3512020	3512	 Jatibanteng	\N
3512030	3512	 Banyuglugur	\N
3512040	3512	 Besuki	\N
3512050	3512	 Suboh	\N
3512060	3512	 Mlandingan	\N
3512070	3512	 Bungatan	\N
3512080	3512	 Kendit	\N
3512090	3512	 Panarukan	\N
3512100	3512	 Situbondo	\N
3512110	3512	 Mangaran	\N
3512120	3512	 Panji	\N
3512130	3512	 Kapongan	\N
3512140	3512	 Arjasa	\N
3512150	3512	 Jangkar	\N
3512160	3512	 Asembagus	\N
3512170	3512	 Banyuputih	\N
3513010	3513	 Sukapura	\N
3513020	3513	 Sumber	\N
3513030	3513	 Kuripan	\N
3513040	3513	 Bantaran	\N
3513050	3513	 Leces	\N
3513060	3513	 Tegalsiwalan	\N
3513070	3513	 Banyuanyar	\N
3513080	3513	 Tiris	\N
3513090	3513	 Krucil	\N
3513100	3513	 Gading	\N
3513110	3513	 Pakuniran	\N
3513120	3513	 Kotaanyar	\N
3513130	3513	 Paiton	\N
3513140	3513	 Besuk	\N
3513150	3513	 Kraksaan	\N
3513160	3513	 Krejengan	\N
3513170	3513	 Pajarakan	\N
3513180	3513	 Maron	\N
3513190	3513	 Gending	\N
3513200	3513	 Dringu	\N
3513210	3513	 Wonomerto	\N
3513220	3513	 Lumbang	\N
3513230	3513	 Tongas	\N
3513240	3513	 Sumberasih	\N
3514010	3514	 Purwodadi	\N
3514020	3514	 Tutur	\N
3514030	3514	 Puspo	\N
3514040	3514	 Tosari	\N
3514050	3514	 Lumbang	\N
3514060	3514	 Pasrepan	\N
3514070	3514	 Kejayan	\N
3514080	3514	 Wonorejo	\N
3514090	3514	 Purwosari	\N
3514100	3514	 Prigen	\N
3514110	3514	 Sukorejo	\N
3514120	3514	 Pandaan	\N
3514130	3514	 Gempol	\N
3514140	3514	 Beji	\N
3514150	3514	 Bangil	\N
3514160	3514	 Rembang	\N
3514170	3514	 Kraton	\N
3514180	3514	 Pohjentrek	\N
3514190	3514	 Gondang Wetan	\N
3514200	3514	 Rejoso	\N
3514210	3514	 Winongan	\N
3514220	3514	 Grati	\N
3514230	3514	 Lekok	\N
3514240	3514	 Nguling	\N
3515010	3515	 Tarik	\N
3515020	3515	 Prambon	\N
3515030	3515	 Krembung	\N
3515040	3515	 Porong	\N
3515050	3515	 Jabon	\N
3515060	3515	 Tanggulangin	\N
3515070	3515	 Candi	\N
3515080	3515	 Tulangan	\N
3515090	3515	 Wonoayu	\N
3515100	3515	 Sukodono	\N
3515110	3515	 Sidoarjo	\N
3515120	3515	 Buduran	\N
3515130	3515	 Sedati	\N
3515140	3515	 Waru	\N
3515150	3515	 Gedangan	\N
3515160	3515	 Taman	\N
3515170	3515	 Krian	\N
3515180	3515	 Balong Bendo	\N
3516010	3516	 Jatirejo	\N
3516020	3516	 Gondang	\N
3516030	3516	 Pacet	\N
3516040	3516	 Trawas	\N
3516050	3516	 Ngoro	\N
3516060	3516	 Pungging	\N
3516070	3516	 Kutorejo	\N
3516080	3516	 Mojosari	\N
3516090	3516	 Bangsal	\N
3516091	3516	 Mojoanyar	\N
3516100	3516	 Dlanggu	\N
3516110	3516	 Puri	\N
3516120	3516	 Trowulan	\N
3516130	3516	 Sooko	\N
3516140	3516	 Gedek	\N
3516150	3516	 Kemlagi	\N
3516160	3516	 Jetis	\N
3516170	3516	 Dawar Blandong	\N
3517010	3517	 Bandar Kedung Mulyo	\N
3517020	3517	 Perak	\N
3517030	3517	 Gudo	\N
3517040	3517	 Diwek	\N
3517050	3517	 Ngoro	\N
3517060	3517	 Mojowarno	\N
3517070	3517	 Bareng	\N
3517080	3517	 Wonosalam	\N
3517090	3517	 Mojoagung	\N
3517100	3517	 Sumobito	\N
3517110	3517	 Jogo Roto	\N
3517120	3517	 Peterongan	\N
3517130	3517	 Jombang	\N
3517140	3517	 Megaluh	\N
3517150	3517	 Tembelang	\N
3517160	3517	 Kesamben	\N
3517170	3517	 Kudu	\N
3517171	3517	 Ngusikan	\N
3517180	3517	 Ploso	\N
3517190	3517	 Kabuh	\N
3517200	3517	 Plandaan	\N
3518010	3518	 Sawahan	\N
3518020	3518	 Ngetos	\N
3518030	3518	 Berbek	\N
3518040	3518	 Loceret	\N
3518050	3518	 Pace	\N
3518060	3518	 Tanjunganom	\N
3518070	3518	 Prambon	\N
3518080	3518	 Ngronggot	\N
3518090	3518	 Kertosono	\N
3518100	3518	 Patianrowo	\N
3518110	3518	 Baron	\N
3518120	3518	 Gondang	\N
3518130	3518	 Sukomoro	\N
3518140	3518	 Nganjuk	\N
3518150	3518	 Bagor	\N
3518160	3518	 Wilangan	\N
3518170	3518	 Rejoso	\N
3518180	3518	 Ngluyu	\N
3518190	3518	 Lengkong	\N
3518200	3518	 Jatikalen	\N
3519010	3519	 Kebonsari	\N
3519020	3519	 Geger	\N
3519030	3519	 Dolopo	\N
3519040	3519	 Dagangan	\N
3519050	3519	 Wungu	\N
3519060	3519	 Kare	\N
3519070	3519	 Gemarang	\N
3519080	3519	 Saradan	\N
3519090	3519	 Pilangkenceng	\N
3519100	3519	 Mejayan	\N
3519110	3519	 Wonoasri	\N
3519120	3519	 Balerejo	\N
3519130	3519	 Madiun	\N
3519140	3519	 Sawahan	\N
3519150	3519	 Jiwan	\N
3520010	3520	 Poncol	\N
3520020	3520	 Parang	\N
3520030	3520	 Lembeyan	\N
3520040	3520	 Takeran	\N
3520041	3520	 Nguntoronadi	\N
3520050	3520	 Kawedanan	\N
3520060	3520	 Magetan	\N
3520061	3520	 Ngariboyo	\N
3520070	3520	 Plaosan	\N
3520071	3520	 Sidorejo	\N
3520080	3520	 Panekan	\N
3520090	3520	 Sukomoro	\N
3520100	3520	 Bendo	\N
3520110	3520	 Maospati	\N
3520120	3520	 Karangrejo	\N
3520121	3520	 Karas	\N
3520130	3520	 Barat	\N
3520131	3520	 Kartoharjo	\N
3521010	3521	 Sine	\N
3521020	3521	 Ngrambe	\N
3521030	3521	 Jogorogo	\N
3521040	3521	 Kendal	\N
3521050	3521	 Geneng	\N
3521051	3521	 Gerih	\N
3521060	3521	 Kwadungan	\N
3521070	3521	 Pangkur	\N
3521080	3521	 Karangjati	\N
3521090	3521	 Bringin	\N
3521100	3521	 Padas	\N
3521101	3521	 Kasreman	\N
3521110	3521	 Ngawi	\N
3521120	3521	 Paron	\N
3521130	3521	 Kedunggalar	\N
3521140	3521	 Pitu	\N
3521150	3521	 Widodaren	\N
3521160	3521	 Mantingan	\N
3521170	3521	 Karanganyar	\N
3522010	3522	 Margomulyo	\N
3522020	3522	 Ngraho	\N
3522030	3522	 Tambakrejo	\N
3522040	3522	 Ngambon	\N
3522041	3522	 Sekar	\N
3522050	3522	 Bubulan	\N
3522051	3522	 Gondang	\N
3522060	3522	 Temayang	\N
3522070	3522	 Sugihwaras	\N
3522080	3522	 Kedungadem	\N
3522090	3522	 Kepoh Baru	\N
3522100	3522	 Baureno	\N
3522110	3522	 Kanor	\N
3522120	3522	 Sumberejo	\N
3522130	3522	 Balen	\N
3522140	3522	 Sukosewu	\N
3522150	3522	 Kapas	\N
3522160	3522	 Bojonegoro	\N
3522170	3522	 Trucuk	\N
3522180	3522	 Dander	\N
3522190	3522	 Ngasem	\N
3522191	3522	 Gayam	\N
3522200	3522	 Kalitidu	\N
3522210	3522	 Malo	\N
3522220	3522	 Purwosari	\N
3522230	3522	 Padangan	\N
3522240	3522	 Kasiman	\N
3522241	3522	 Kedewan	\N
3523010	3523	 Kenduruan	\N
3523020	3523	 Bangilan	\N
3523030	3523	 Senori	\N
3523040	3523	 Singgahan	\N
3523050	3523	 Montong	\N
3523060	3523	 Parengan	\N
3523070	3523	 Soko	\N
3523080	3523	 Rengel	\N
3523081	3523	 Grabagan	\N
3523090	3523	 Plumpang	\N
3523100	3523	 Widang	\N
3523110	3523	 Palang	\N
3523120	3523	 Semanding	\N
3523130	3523	 Tuban	\N
3523140	3523	 Jenu	\N
3523150	3523	 Merakurak	\N
3523160	3523	 Kerek	\N
3523170	3523	 Tambakboyo	\N
3523180	3523	 Jatirogo	\N
3523190	3523	 Bancar	\N
3524010	3524	 Sukorame	\N
3524020	3524	 Bluluk	\N
3524030	3524	 Ngimbang	\N
3524040	3524	 Sambeng	\N
3524050	3524	 Mantup	\N
3524060	3524	 Kembangbahu	\N
3524070	3524	 Sugio	\N
3524080	3524	 Kedungpring	\N
3524090	3524	 Modo	\N
3524100	3524	 Babat	\N
3524110	3524	 Pucuk	\N
3524120	3524	 Sukodadi	\N
3524130	3524	 Lamongan	\N
3524140	3524	 Tikung	\N
3524141	3524	 Sarirejo	\N
3524150	3524	 Deket	\N
3524160	3524	 Glagah	\N
3524170	3524	 Karangbinangun	\N
3524180	3524	 Turi	\N
3524190	3524	 Kalitengah	\N
3524200	3524	 Karang Geneng	\N
3524210	3524	 Sekaran	\N
3524220	3524	 Maduran	\N
3524230	3524	 Laren	\N
3524240	3524	 Solokuro	\N
3524250	3524	 Paciran	\N
3524260	3524	 Brondong	\N
3525010	3525	 Wringinanom	\N
3525020	3525	 Driyorejo	\N
3525030	3525	 Kedamean	\N
3525040	3525	 Menganti	\N
3525050	3525	 Cerme	\N
3525060	3525	 Benjeng	\N
3525070	3525	 Balongpanggang	\N
3525080	3525	 Duduksampeyan	\N
3525090	3525	 Kebomas	\N
3525100	3525	 Gresik	\N
3525110	3525	 Manyar	\N
3525120	3525	 Bungah	\N
3525130	3525	 Sidayu	\N
3525140	3525	 Dukun	\N
3525150	3525	 Panceng	\N
3525160	3525	 Ujungpangkah	\N
3525170	3525	 Sangkapura	\N
3525180	3525	 Tambak	\N
3526010	3526	 Kamal	\N
3526020	3526	 Labang	\N
3526030	3526	 Kwanyar	\N
3526040	3526	 Modung	\N
3526050	3526	 Blega	\N
3526060	3526	 Konang	\N
3526070	3526	 Galis	\N
3526080	3526	 Tanah Merah	\N
3526090	3526	 Tragah	\N
3526100	3526	 Socah	\N
3526110	3526	 Bangkalan	\N
3526120	3526	 Burneh	\N
3526130	3526	 Arosbaya	\N
3526140	3526	 Geger	\N
3526150	3526	 Kokop	\N
3526160	3526	 Tanjungbumi	\N
3526170	3526	 Sepulu	\N
3526180	3526	 Klampis	\N
3527010	3527	 Sreseh	\N
3527020	3527	 Torjun	\N
3527021	3527	 Pangarengan	\N
3527030	3527	 Sampang	\N
3527040	3527	 Camplong	\N
3527050	3527	 Omben	\N
3527060	3527	 Kedungdung	\N
3527070	3527	 Jrengik	\N
3527080	3527	 Tambelangan	\N
3527090	3527	 Banyuates	\N
3527100	3527	 Robatal	\N
3527101	3527	 Karang Penang	\N
3527110	3527	 Ketapang	\N
3527120	3527	 Sokobanah	\N
3528010	3528	 Tlanakan	\N
3528020	3528	 Pademawu	\N
3528030	3528	 Galis	\N
3528040	3528	 Larangan	\N
3528050	3528	 Pamekasan	\N
3528060	3528	 Proppo	\N
3528070	3528	 Palengaan	\N
3528080	3528	 Pegantenan	\N
3528090	3528	 Kadur	\N
3528100	3528	 Pakong	\N
3528110	3528	 Waru	\N
3528120	3528	 Batu Marmar	\N
3528130	3528	 Pasean	\N
3529010	3529	 Pragaan	\N
3529020	3529	 Bluto	\N
3529030	3529	 Saronggi	\N
3529040	3529	 Giligenteng	\N
3529050	3529	 Talango	\N
3529060	3529	 Kalianget	\N
3529070	3529	 Kota Sumenep	\N
3529071	3529	 Batuan	\N
3529080	3529	 Lenteng	\N
3529090	3529	 Ganding	\N
3529100	3529	 Guluk Guluk	\N
3529110	3529	 Pasongsongan	\N
3529120	3529	 Ambunten	\N
3529130	3529	 Rubaru	\N
3529140	3529	 Dasuk	\N
3529150	3529	 Manding	\N
3529160	3529	 Batuputih	\N
3529170	3529	 Gapura	\N
3529180	3529	 Batang Batang	\N
3529190	3529	 Dungkek	\N
3529200	3529	 Nonggunong	\N
3529210	3529	 Gayam	\N
3529220	3529	 Raas	\N
3529230	3529	 Sapeken	\N
3529240	3529	 Arjasa	\N
3529241	3529	 Kangayan	\N
3529250	3529	 Masalembu	\N
3571010	3571	 Mojoroto	\N
3571020	3571	 Kota Kediri	\N
3571030	3571	 Pesantren	\N
3572010	3572	 Sukorejo	\N
3572020	3572	 Kepanjenkidul	\N
3572030	3572	 Sananwetan	\N
3573010	3573	 Kedungkandang	\N
3573020	3573	 Sukun	\N
3573030	3573	 Klojen	\N
3573040	3573	 Blimbing	\N
3573050	3573	 Lowokwaru	\N
3574010	3574	 Kademangan	\N
3574011	3574	 Kedopok	\N
3574020	3574	 Wonoasih	\N
3574030	3574	 Mayangan	\N
3574031	3574	 Kanigaran	\N
3575010	3575	 Gadingrejo	\N
3575020	3575	 Purworejo	\N
3575030	3575	 Bugulkidul	\N
3575031	3575	 Panggungrejo	\N
3576010	3576	 Prajurit Kulon	\N
3576020	3576	 Magersari	\N
3577010	3577	 Mangu Harjo	\N
3577020	3577	 Taman	\N
3577030	3577	 Kartoharjo	\N
3578010	3578	 Karang Pilang	\N
3578020	3578	 Jambangan	\N
3578030	3578	 Gayungan	\N
3578040	3578	 Wonocolo	\N
3578050	3578	 Tenggilis Mejoyo	\N
3578060	3578	 Gunung Anyar	\N
3578070	3578	 Rungkut	\N
3578080	3578	 Sukolilo	\N
3578090	3578	 Mulyorejo	\N
3578100	3578	 Gubeng	\N
3578110	3578	 Wonokromo	\N
3578120	3578	 Dukuh Pakis	\N
3578130	3578	 Wiyung	\N
3578140	3578	 Lakarsantri	\N
3578141	3578	 Sambikerep	\N
3578150	3578	 Tandes	\N
3578160	3578	 Suko Manunggal	\N
3578170	3578	 Sawahan	\N
3578180	3578	 Tegalsari	\N
3578190	3578	 Genteng	\N
3578200	3578	 Tambaksari	\N
3578210	3578	 Kenjeran	\N
3578211	3578	 Bulak	\N
3578220	3578	 Simokerto	\N
3578230	3578	 Semampir	\N
3578240	3578	 Pabean Cantian	\N
3578250	3578	 Bubutan	\N
3578260	3578	 Krembangan	\N
3578270	3578	 Asemrowo	\N
3578280	3578	 Benowo	\N
3578281	3578	 Pakal	\N
3579010	3579	 Batu	\N
3579020	3579	 Junrejo	\N
3579030	3579	 Bumiaji	\N
3601010	3601	 Sumur	\N
3601020	3601	 Cimanggu	\N
3601030	3601	 Cibaliung	\N
3601031	3601	 Cibitung	\N
3601040	3601	 Cikeusik	\N
3601050	3601	 Cigeulis	\N
3601060	3601	 Panimbang	\N
3601061	3601	 Sobang	\N
3601070	3601	 Munjul	\N
3601071	3601	 Angsana	\N
3601072	3601	 Sindangresmi	\N
3601080	3601	 Picung	\N
3601090	3601	 Bojong	\N
3601100	3601	 Saketi	\N
3601101	3601	 Cisata	\N
3601110	3601	 Pagelaran	\N
3601111	3601	 Patia	\N
3601112	3601	 Sukaresmi	\N
3601120	3601	 Labuan	\N
3601121	3601	 Carita	\N
3601130	3601	 Jiput	\N
3601131	3601	 Cikedal	\N
3601140	3601	 Menes	\N
3601141	3601	 Pulosari	\N
3601150	3601	 Mandalawangi	\N
3601160	3601	 Cimanuk	\N
3601161	3601	 Cipeucang	\N
3601170	3601	 Banjar	\N
3601171	3601	 Kaduhejo	\N
3601172	3601	 Mekarjaya	\N
3601180	3601	 Pandeglang	\N
3601181	3601	 Majasari	\N
3601190	3601	 Cadasari	\N
3601191	3601	 Karangtanjung	\N
3601192	3601	 Koroncong	\N
3602010	3602	 Malingping	\N
3602011	3602	 Wanasalam	\N
3602020	3602	 Panggarangan	\N
3602021	3602	 Cihara	\N
3602030	3602	 Bayah	\N
3602031	3602	 Cilograng	\N
3602040	3602	 Cibeber	\N
3602050	3602	 Cijaku	\N
3602051	3602	 Cigemblong	\N
3602060	3602	 Banjarsari	\N
3602070	3602	 Cileles	\N
3602080	3602	 Gunung Kencana	\N
3602090	3602	 Bojongmanik	\N
3602091	3602	 Cirinten	\N
3602100	3602	 Leuwidamar	\N
3602110	3602	 Muncang	\N
3602111	3602	 Sobang	\N
3602120	3602	 Cipanas	\N
3602121	3602	 Lebakgedong	\N
3602130	3602	 Sajira	\N
3602140	3602	 Cimarga	\N
3602150	3602	 Cikulur	\N
3602160	3602	 Warunggunung	\N
3602170	3602	 Cibadak	\N
3602180	3602	 Rangkasbitung	\N
3602181	3602	 Kalanganyar	\N
3602190	3602	 Maja	\N
3602191	3602	 Curugbitung	\N
3603010	3603	 Cisoka	\N
3603011	3603	 Solear	\N
3603020	3603	 Tigaraksa	\N
3603021	3603	 Jambe	\N
3603030	3603	 Cikupa	\N
3603040	3603	 Panongan	\N
3603050	3603	 Curug	\N
3603051	3603	 Kelapa Dua	\N
3603060	3603	 Legok	\N
3603070	3603	 Pagedangan	\N
3603081	3603	 Cisauk	\N
3603120	3603	 Pasarkemis	\N
3603121	3603	 Sindang Jaya	\N
3603130	3603	 Balaraja	\N
3603131	3603	 Jayanti	\N
3603132	3603	 Sukamulya	\N
3603140	3603	 Kresek	\N
3603141	3603	 Gunung Kaler	\N
3603150	3603	 Kronjo	\N
3603151	3603	 Mekar Baru	\N
3603160	3603	 Mauk	\N
3603161	3603	 Kemiri	\N
3603162	3603	 Sukadiri	\N
3603170	3603	 Rajeg	\N
3603180	3603	 Sepatan	\N
3603181	3603	 Sepatan Timur	\N
3603190	3603	 Pakuhaji	\N
3603200	3603	 Teluknaga	\N
3603210	3603	 Kosambi	\N
3604010	3604	 Cinangka	\N
3604020	3604	 Padarincang	\N
3604030	3604	 Ciomas	\N
3604040	3604	 Pabuaran	\N
3604041	3604	 Gunung Sari	\N
3604050	3604	 Baros	\N
3604060	3604	 Petir	\N
3604061	3604	 Tunjung Teja	\N
3604080	3604	 Cikeusal	\N
3604090	3604	 Pamarayan	\N
3604091	3604	 Bandung	\N
3604100	3604	 Jawilan	\N
3604110	3604	 Kopo	\N
3604120	3604	 Cikande	\N
3604121	3604	 Kibin	\N
3604130	3604	 Kragilan	\N
3604180	3604	 Waringinkurung	\N
3604190	3604	 Mancak	\N
3604200	3604	 Anyar	\N
3604210	3604	 Bojonegara	\N
3604211	3604	 Pulo Ampel	\N
3604220	3604	 Kramatwatu	\N
3604240	3604	 Ciruas	\N
3604250	3604	 Pontang	\N
3604251	3604	 Lebak Wangi	\N
3604260	3604	 Carenang	\N
3604261	3604	 Binuang	\N
3604270	3604	 Tirtayasa	\N
3604271	3604	 Tanara	\N
3671010	3671	 Ciledug	\N
3671011	3671	 Larangan	\N
3671012	3671	 Karang Tengah	\N
3671020	3671	 Cipondoh	\N
3671021	3671	 Pinang	\N
3671030	3671	 Tangerang	\N
3671031	3671	 Karawaci	\N
3671040	3671	 Jati Uwung	\N
3671041	3671	 Cibodas	\N
3671042	3671	 Periuk	\N
3671050	3671	 Batuceper	\N
3671051	3671	 Neglasari	\N
3671060	3671	 Benda	\N
3672010	3672	 Ciwandan	\N
3672011	3672	 Citangkil	\N
3672020	3672	 Pulomerak	\N
3672021	3672	 Purwakarta	\N
3672022	3672	 Grogol	\N
3672030	3672	 Cilegon	\N
3672031	3672	 Jombang	\N
3672040	3672	 Cibeber	\N
3673010	3673	 Curug	\N
3673020	3673	 Walantaka	\N
3673030	3673	 Cipocok Jaya	\N
3673040	3673	 Serang	\N
3673050	3673	 Taktakan	\N
3673060	3673	 Kasemen	\N
3674010	3674	 Setu	\N
3674020	3674	 Serpong	\N
3674030	3674	 Pamulang	\N
3674040	3674	 Ciputat	\N
3674050	3674	 Ciputat Timur	\N
3674060	3674	 Pondok Aren	\N
3674070	3674	 Serpong Utara	\N
5101010	5101	 Melaya	\N
5101020	5101	 Negara	\N
5101021	5101	 Jembrana	\N
5101030	5101	 Mendoyo	\N
5101040	5101	 Pekutatan	\N
5102010	5102	 Selemadeg	\N
5102011	5102	 Selemadeg Timur	\N
5102012	5102	 Selemadeg Barat	\N
5102020	5102	 Kerambitan	\N
5102030	5102	 Tabanan	\N
5102040	5102	 Kediri	\N
5102050	5102	 Marga	\N
5102060	5102	 Baturiti	\N
5102070	5102	 Penebel	\N
5102080	5102	 Pupuan	\N
5103010	5103	 Kuta Selatan	\N
5103020	5103	 Kuta	\N
5103030	5103	 Kuta Utara	\N
5103040	5103	 Mengwi	\N
5103050	5103	 Abiansemal	\N
5103060	5103	 Petang	\N
5104010	5104	 Sukawati	\N
5104020	5104	 Blahbatuh	\N
5104030	5104	 Gianyar	\N
5104040	5104	 Tampaksiring	\N
5104050	5104	 Ubud	\N
5104060	5104	 Tegallalang	\N
5104070	5104	 Payangan	\N
5105010	5105	 Nusapenida	\N
5105020	5105	 Banjarangkan	\N
5105030	5105	 Klungkung	\N
5105040	5105	 Dawan	\N
5106010	5106	 Susut	\N
5106020	5106	 Bangli	\N
5106030	5106	 Tembuku	\N
5106040	5106	 Kintamani	\N
5107010	5107	 Rendang	\N
5107020	5107	 Sidemen	\N
5107030	5107	 Manggis	\N
5107040	5107	 Karangasem	\N
5107050	5107	 Abang	\N
5107060	5107	 Bebandem	\N
5107070	5107	 Selat	\N
5107080	5107	 Kubu	\N
5108010	5108	 Gerokgak	\N
5108020	5108	 Seririt	\N
5108030	5108	 Busungbiu	\N
5108040	5108	 Banjar	\N
5108050	5108	 Sukasada	\N
5108060	5108	 Buleleng	\N
5108070	5108	 Sawan	\N
5108080	5108	 Kubutambahan	\N
5108090	5108	 Tejakula	\N
5171010	5171	 Denpasar Selatan	\N
5171020	5171	 Denpasar Timur	\N
5171030	5171	 Denpasar Barat	\N
5171031	5171	 Denpasar Utara	\N
5201010	5201	 Sekotong	\N
5201011	5201	 Lembar	\N
5201020	5201	 Gerung	\N
5201030	5201	 Labu Api	\N
5201040	5201	 Kediri	\N
5201041	5201	 Kuripan	\N
5201050	5201	 Narmada	\N
5201051	5201	 Lingsar	\N
5201060	5201	 Gunung Sari	\N
5201061	5201	 Batu Layar	\N
5202010	5202	 Praya Barat	\N
5202011	5202	 Praya Barat Daya	\N
5202020	5202	 Pujut	\N
5202030	5202	 Praya Timur	\N
5202040	5202	 Janapria	\N
5202050	5202	 Kopang	\N
5202060	5202	 Praya	\N
5202061	5202	 Praya Tengah	\N
5202070	5202	 Jonggat	\N
5202080	5202	 Pringgarata	\N
5202090	5202	 Batukliang	\N
5202091	5202	 Batukliang Utara	\N
5203010	5203	 Keruak	\N
5203011	5203	 Jerowaru	\N
5203020	5203	 Sakra	\N
5203021	5203	 Sakra Barat	\N
5203022	5203	 Sakra Timur	\N
5203030	5203	 Terara	\N
5203031	5203	 Montong Gading	\N
5203040	5203	 Sikur	\N
5203050	5203	 Masbagik	\N
5203051	5203	 Pringgasela	\N
5203060	5203	 Sukamulia	\N
5203061	5203	 Suralaga	\N
5203070	5203	 Selong	\N
5203071	5203	 Labuhan Haji	\N
5203080	5203	 Pringgabaya	\N
5203081	5203	 Suela	\N
5203090	5203	 Aikmel	\N
5203091	5203	 Wanasaba	\N
5203092	5203	 Sembalun	\N
5203100	5203	 Sambelia	\N
5204020	5204	 Lunyuk	\N
5204021	5204	 Orong Telu	\N
5204050	5204	 Alas	\N
5204051	5204	 Alas Barat	\N
5204052	5204	 Buer	\N
5204061	5204	 Utan	\N
5204062	5204	 Rhee	\N
5204070	5204	 Batulanteh	\N
5204080	5204	 Sumbawa	\N
5204081	5204	 Labuhan Badas	\N
5204082	5204	 Unter Iwes	\N
5204090	5204	 Moyohilir	\N
5204091	5204	 Moyo Utara	\N
5204100	5204	 Moyohulu	\N
5204110	5204	 Ropang	\N
5204111	5204	 Lenangguar	\N
5204112	5204	 Lantung	\N
5204121	5204	 Lape	\N
5204122	5204	 Lopok	\N
5204130	5204	 Plampang	\N
5204131	5204	 Labangka	\N
5204132	5204	 Maronge	\N
5204140	5204	 Empang	\N
5204141	5204	 Tarano	\N
5205010	5205	 Hu'u	\N
5205011	5205	 Pajo	\N
5205020	5205	 Dompu	\N
5205030	5205	 Woja	\N
5205040	5205	 Kilo	\N
5205050	5205	 Kempo	\N
5205051	5205	 Manggalewa	\N
5205060	5205	 Pekat	\N
5206010	5206	 Monta	\N
5206011	5206	 Parado	\N
5206020	5206	 Bolo	\N
5206021	5206	 Mada Pangga	\N
5206030	5206	 Woha	\N
5206040	5206	 Belo	\N
5206041	5206	 Palibelo	\N
5206050	5206	 Wawo	\N
5206051	5206	 Langgudu	\N
5206052	5206	 Lambitu	\N
5206060	5206	 Sape	\N
5206061	5206	 Lambu	\N
5206070	5206	 Wera	\N
5206071	5206	 Ambalawi	\N
5206080	5206	 Donggo	\N
5206081	5206	 Soromandi	\N
5206090	5206	 Sanggar	\N
5206091	5206	 Tambora	\N
5207010	5207	 Sekongkang	\N
5207020	5207	 Jereweh	\N
5207021	5207	 Maluk	\N
5207030	5207	 Taliwang	\N
5207031	5207	 Brang Ene	\N
5207040	5207	 Brang Rea	\N
5207050	5207	 Seteluk	\N
5207051	5207	 Poto Tano	\N
5208010	5208	 Pemenang	\N
5208020	5208	 Tanjung	\N
5208030	5208	 Gangga	\N
5208040	5208	 Kayangan	\N
5208050	5208	 Bayan	\N
5271010	5271	 Ampenan	\N
5271011	5271	 Sekarbela	\N
5271020	5271	 Mataram	\N
5271021	5271	 Selaparang	\N
5271030	5271	 Cakranegara	\N
5271031	5271	 Sandubaya	\N
5272010	5272	 Rasanae Barat	\N
5272011	5272	 Mpunda	\N
5272020	5272	 Rasanae Timur	\N
5272021	5272	 Raba	\N
5272030	5272	 Asakota	\N
5301021	5301	 Lamboya	\N
5301022	5301	 Wanokaka	\N
5301023	5301	 Laboya Barat	\N
5301050	5301	 Loli	\N
5301060	5301	 Kota Waikabubak	\N
5301072	5301	 Tana Righu	\N
5302010	5302	 Lewa	\N
5302011	5302	 Nggaha Oriangu	\N
5302012	5302	 Lewa Tidahu	\N
5302013	5302	 Katala Hamu Lingu	\N
5302020	5302	 Tabundung	\N
5302021	5302	 Pinupahar	\N
5302030	5302	 Paberiwai	\N
5302031	5302	 Karera	\N
5302032	5302	 Matawai La Pawu	\N
5302033	5302	 Kahaungu Eti	\N
5302034	5302	 Mahu	\N
5302035	5302	 Ngadu Ngala	\N
5302040	5302	 Pahunga Lodu	\N
5302041	5302	 Wula Waijelu	\N
5302051	5302	 Rindi	\N
5302052	5302	 Umalulu	\N
5302060	5302	 Pandawai	\N
5302061	5302	 Kambata Mapambuhang	\N
5302070	5302	 Kota Waingapu	\N
5302071	5302	 Kambera	\N
5302080	5302	 Haharu	\N
5302081	5302	 Kanatang	\N
5303100	5303	 Semau	\N
5303101	5303	 Semau Selatan	\N
5303110	5303	 Kupang Barat	\N
5303111	5303	 Nekamese	\N
5303120	5303	 Kupang Tengah	\N
5303121	5303	 Taebenu	\N
5303130	5303	 Amarasi	\N
5303131	5303	 Amarasi Barat	\N
5303132	5303	 Amarasi Selatan	\N
5303133	5303	 Amarasi Timur	\N
5303140	5303	 Kupang Timur	\N
5303141	5303	 Amabi Oefeto Timur	\N
5303142	5303	 Amabi Oefeto	\N
5303150	5303	 Sulamu	\N
5303160	5303	 Fatuleu	\N
5303161	5303	 Fatuleu Tengah	\N
5303162	5303	 Fatuleu Barat	\N
5303170	5303	 Takari	\N
5303180	5303	 Amfoang Selatan	\N
5303181	5303	 Amfoang Barat Daya	\N
5303182	5303	 Amfoang Tengah	\N
5303190	5303	 Amfoang Utara	\N
5303191	5303	 Amfoang Barat Laut	\N
5303192	5303	 Amfoang Timur	\N
5304010	5304	 Mollo Utara	\N
5304011	5304	 Fatumnasi	\N
5304012	5304	 Tobu	\N
5304013	5304	 Nunbena	\N
5304020	5304	 Mollo Selatan	\N
5304021	5304	 Polen	\N
5304022	5304	 Mollo Barat	\N
5304023	5304	 Mollo Tengah	\N
5304030	5304	 Kota Soe	\N
5304040	5304	 Amanuban Barat	\N
5304041	5304	 Batu Putih	\N
5304042	5304	 Kuatnana	\N
5304050	5304	 Amanuban Selatan	\N
5304051	5304	 Noebeba	\N
5304060	5304	 Kuan Fatu	\N
5304061	5304	 Kualin	\N
5304070	5304	 Amanuban Tengah	\N
5304071	5304	 Kolbano	\N
5304072	5304	 Oenino	\N
5304080	5304	 Amanuban Timur	\N
5304081	5304	 Fautmolo	\N
5304082	5304	 Fatukopa	\N
5304090	5304	 Kie	\N
5304091	5304	 Kot'olin	\N
5304100	5304	 Amanatun Selatan	\N
5304101	5304	 Boking	\N
5304102	5304	 Nunkolo	\N
5304103	5304	 Noebana	\N
5304104	5304	 Santian	\N
5304110	5304	 Amanatun Utara	\N
5304111	5304	 Toianas	\N
5304112	5304	 Kokbaun	\N
5305010	5305	 Miomaffo Barat	\N
5305011	5305	 Miomaffo Tengah	\N
5305012	5305	 Musi	\N
5305013	5305	 Mutis	\N
5305020	5305	 Miomaffo Timur	\N
5305021	5305	 Noemuti	\N
5305022	5305	 Bikomi Selatan	\N
5305023	5305	 Bikomi Tengah	\N
5305024	5305	 Bikomi Nilulat	\N
5305025	5305	 Bikomi Utara	\N
5305026	5305	 Naibenu	\N
5305027	5305	 Noemuti Timur	\N
5305030	5305	 Kota Kefamenanu	\N
5305040	5305	 Insana	\N
5305041	5305	 Insana Utara	\N
5305042	5305	 Insana Barat	\N
5305043	5305	 Insana Tengah	\N
5305044	5305	 Insana Fafinesu	\N
5305050	5305	 Biboki Selatan	\N
5305051	5305	 Biboki Tanpah	\N
5305052	5305	 Biboki Moenleu	\N
5305060	5305	 Biboki Utara	\N
5305061	5305	 Biboki Anleu	\N
5305062	5305	 Biboki Feotleu	\N
5306010	5306	 Malaka Barat	\N
5306011	5306	 Rinhat	\N
5306012	5306	 Wewiku	\N
5306013	5306	 Weliman	\N
5306020	5306	 Malaka Tengah	\N
5306021	5306	 Sasita Mean	\N
5306022	5306	 Botin Leobele	\N
5306023	5306	 Io Kufeu	\N
5306030	5306	 Malaka Timur	\N
5306031	5306	 Laen Manen	\N
5306032	5306	 Rai Manuk	\N
5306040	5306	 Kobalima	\N
5306041	5306	 Kobalima Timur	\N
5306050	5306	 Tasifeto Barat	\N
5306051	5306	 Kakuluk Mesak	\N
5306052	5306	 Nanaet Dubesi	\N
5306060	5306	 Atambua	\N
5306061	5306	 Atambua Barat	\N
5306062	5306	 Atambua Selatan	\N
5306070	5306	 Tasifeto Timur	\N
5306071	5306	 Raihat	\N
5306072	5306	 Lasiolat	\N
5306080	5306	 Lamaknen	\N
5306081	5306	 Lamaknen Selatan	\N
5307010	5307	 Pantar	\N
5307011	5307	 Pantar Barat	\N
5307012	5307	 Pantar Timur	\N
5307013	5307	 Pantar Barat Laut	\N
5307014	5307	 Pantar Tengah	\N
5307020	5307	 Alor Barat Daya	\N
5307021	5307	 Mataru	\N
5307030	5307	 Alor Selatan	\N
5307040	5307	 Alor Timur	\N
5307041	5307	 Alor Timur Laut	\N
5307042	5307	 Pureman	\N
5307050	5307	 Teluk Mutiara	\N
5307051	5307	 Kabola	\N
5307060	5307	 Alor Barat Laut	\N
5307061	5307	 Alor Tengah Utara	\N
5307062	5307	 Pulau Pura	\N
5307063	5307	 Lembur	\N
5308010	5308	 Nagawutung	\N
5308011	5308	 Wulandoni	\N
5308020	5308	 Atadei	\N
5308030	5308	 Ile Ape	\N
5308031	5308	 Ile Ape Timur	\N
5308040	5308	 Lebatukan	\N
5308050	5308	 Nubatukan	\N
5308060	5308	 Omesuri	\N
5308070	5308	 Buyasari	\N
5309010	5309	 Wulanggitang	\N
5309011	5309	 Titehena	\N
5309012	5309	 Ilebura	\N
5309020	5309	 Tanjung Bunga	\N
5309021	5309	 Lewo Lema	\N
5309030	5309	 Larantuka	\N
5309031	5309	 Ile Mandiri	\N
5309032	5309	 Demon Pagong	\N
5309040	5309	 Solor Barat	\N
5309041	5309	 Solor Selatan	\N
5309050	5309	 Solor Timur	\N
5309060	5309	 Adonara Barat	\N
5309061	5309	 Wotan Ulu Mado	\N
5309062	5309	 Adonara Tengah	\N
5309070	5309	 Adonara Timur	\N
5309071	5309	 Ile Boleng	\N
5309072	5309	 Witihama	\N
5309073	5309	 Kelubagolit	\N
5309074	5309	 Adonara	\N
5310010	5310	 Paga	\N
5310011	5310	 Mego	\N
5310012	5310	 Tana Wawo	\N
5310020	5310	 Lela	\N
5310030	5310	 Bola	\N
5310031	5310	 Doreng	\N
5310032	5310	 Mapitara	\N
5310040	5310	 Talibura	\N
5310041	5310	 Waigete	\N
5310042	5310	 Waiblama	\N
5310050	5310	 Kewapante	\N
5310051	5310	 Hewokloang	\N
5310052	5310	 Kangae	\N
5310061	5310	 Palue	\N
5310062	5310	 Koting	\N
5310063	5310	 Nelle	\N
5310070	5310	 Nita	\N
5310071	5310	 Magepanda	\N
5310080	5310	 Alok	\N
5310081	5310	 Alok Barat	\N
5310082	5310	 Alok Timur	\N
5311010	5311	 Nangapanda	\N
5311011	5311	 Pulau Ende	\N
5311012	5311	 Maukaro	\N
5311020	5311	 Ende	\N
5311030	5311	 Ende Selatan	\N
5311031	5311	 Ende Timur	\N
5311032	5311	 Ende Tengah	\N
5311033	5311	 Ende Utara	\N
5311040	5311	 Ndona	\N
5311041	5311	 Ndona Timur	\N
5311050	5311	 Wolowaru	\N
5311051	5311	 Wolojita	\N
5311052	5311	 Lio Timur	\N
5311053	5311	 Kelimutu	\N
5311054	5311	 Ndori	\N
5311060	5311	 Maurole	\N
5311061	5311	 Kotabaru	\N
5311062	5311	 Detukeli	\N
5311063	5311	 Lepembusu Kelisoke	\N
5311070	5311	 Detusoko	\N
5311071	5311	 Wewaria	\N
5312010	5312	 Aimere	\N
5312011	5312	 Jerebuu	\N
5312012	5312	 Inerie	\N
5312020	5312	 Bajawa	\N
5312030	5312	 Golewa	\N
5312031	5312	 Golewa Selatan	\N
5312032	5312	 Golewa Barat	\N
5312070	5312	 Bajawa Utara	\N
5312071	5312	 Soa	\N
5312080	5312	 Riung	\N
5312081	5312	 Riung Barat	\N
5312082	5312	 Wolomeze	\N
5313040	5313	 Satar Mese	\N
5313041	5313	 Satar Mese Barat	\N
5313110	5313	 Langke Rembong	\N
5313120	5313	 Ruteng	\N
5313121	5313	 Wae Rii	\N
5313122	5313	 Lelak	\N
5313123	5313	 Rahong Utara	\N
5313130	5313	 Cibal	\N
5313131	5313	 Cibal Barat	\N
5313140	5313	 Reok	\N
5313141	5313	 Reok Barat	\N
5314010	5314	 Rote Barat Daya	\N
5314020	5314	 Rote Barat Laut	\N
5314030	5314	 Lobalain	\N
5314040	5314	 Rote Tengah	\N
5314041	5314	 Rote Selatan	\N
5314050	5314	 Pantai Baru	\N
5314060	5314	 Rote Timur	\N
5314061	5314	 Landu Leko	\N
5314070	5314	 Rote Barat	\N
5314071	5314	 Ndao Nuse	\N
5315010	5315	 Komodo	\N
5315011	5315	 Boleng	\N
5315020	5315	 Sano Nggoang	\N
5315021	5315	 Mbeliling	\N
5315030	5315	 Lembor	\N
5315031	5315	 Welak	\N
5315032	5315	 Lembor Selatan	\N
5315040	5315	 Kuwus	\N
5315041	5315	 Ndoso	\N
5315050	5315	 Macang Pacar	\N
5316010	5316	 Katikutana	\N
5316011	5316	 Katikutana Selatan	\N
5316020	5316	 Umbu Ratu Nggay Barat	\N
5316030	5316	 Umbu Ratu Nggay	\N
5316040	5316	 Mamboro	\N
5317010	5317	 Kodi Bangedo	\N
5317011	5317	 Kodi Balaghar	\N
5317020	5317	 Kodi	\N
5317030	5317	 Kodi Utara	\N
5317040	5317	 Wewewa Selatan	\N
5317050	5317	 Wewewa Barat	\N
5317060	5317	 Wewewa Timur	\N
5317061	5317	 Wewewa Tengah	\N
5317070	5317	 Wewewa Utara	\N
5317080	5317	 Loura	\N
5317081	5317	 Kota Tambolaka	\N
5318010	5318	 Mauponggo	\N
5318020	5318	 Keo Tengah	\N
5318030	5318	 Nangaroro	\N
5318040	5318	 Boawae	\N
5318050	5318	 Aesesa Selatan	\N
5318060	5318	 Aesesa	\N
5318070	5318	 Wolowae	\N
5319010	5319	 Borong	\N
5319011	5319	 Rana Mese	\N
5319020	5319	 Kota Komba	\N
5319030	5319	 Elar	\N
5319031	5319	 Elar Selatan	\N
5319040	5319	 Sambi Rampas	\N
5319050	5319	 Poco Ranaka	\N
5319051	5319	 Poco Ranaka Timur	\N
5319060	5319	 Lamba Leda	\N
5320010	5320	 Raijua	\N
5320020	5320	 Hawu Mehara	\N
5320030	5320	 Sabu Liae	\N
5320040	5320	 Sabu Barat	\N
5320050	5320	 Sabu Tengah	\N
5320060	5320	 Sabu Timur	\N
5371010	5371	 Alak	\N
5371020	5371	 Maulafa	\N
5371030	5371	 Oebobo	\N
5371031	5371	 Kota Raja	\N
5371040	5371	 Kelapa Lima	\N
5371041	5371	 Kota Lama	\N
6101010	6101	 Selakau	\N
6101011	6101	 Selakau Timur	\N
6101020	6101	 Pemangkat	\N
6101021	6101	 Semparuk	\N
6101022	6101	 Salatiga	\N
6101030	6101	 Tebas	\N
6101031	6101	 Tekarang	\N
6101040	6101	 Sambas	\N
6101041	6101	 Subah	\N
6101042	6101	 Sebawi	\N
6101043	6101	 Sajad	\N
6101050	6101	 Jawai	\N
6101051	6101	 Jawai Selatan	\N
6101060	6101	 Teluk Keramat	\N
6101061	6101	 Galing	\N
6101062	6101	 Tangaran	\N
6101070	6101	 Sejangkung	\N
6101080	6101	 Sajingan Besar	\N
6101090	6101	 Paloh	\N
6102010	6102	 Sungai Raya	\N
6102011	6102	 Capkala	\N
6102012	6102	 Sungai Raya Kepulauan	\N
6102030	6102	 Samalantan	\N
6102031	6102	 Monterado	\N
6102032	6102	 Lembah Bawang	\N
6102040	6102	 Bengkayang	\N
6102041	6102	 Teriak	\N
6102042	6102	 Sungai Betung	\N
6102050	6102	 Ledo	\N
6102051	6102	 Suti Semarang	\N
6102052	6102	 Lumar	\N
6102060	6102	 Sanggau Ledo	\N
6102061	6102	 Tujuhbelas	\N
6102070	6102	 Seluas	\N
6102080	6102	 Jagoi Babang	\N
6102081	6102	 Siding	\N
6103020	6103	 Sebangki	\N
6103030	6103	 Ngabang	\N
6103031	6103	 Jelimpo	\N
6103040	6103	 Sengah Temila	\N
6103050	6103	 Mandor	\N
6103060	6103	 Menjalin	\N
6103070	6103	 Mempawah Hulu	\N
6103071	6103	 Sompak	\N
6103080	6103	 Menyuke	\N
6103081	6103	 Banyuke Hulu	\N
6103090	6103	 Meranti	\N
6103100	6103	 Kuala Behe	\N
6103110	6103	 Air Besar	\N
6104080	6104	 Siantan	\N
6104081	6104	 Segedong	\N
6104090	6104	 Sungai Pinyuh	\N
6104091	6104	 Anjongan	\N
6104100	6104	 Mempawah Hilir	\N
6104101	6104	 Mempawah Timur	\N
6104110	6104	 Sungai Kunyit	\N
6104120	6104	 Toho	\N
6104121	6104	 Sadaniang	\N
6105010	6105	 Toba	\N
6105020	6105	 Meliau	\N
6105060	6105	 Kapuas	\N
6105070	6105	 Mukok	\N
6105120	6105	 Jangkang	\N
6105130	6105	 Bonti	\N
6105140	6105	 Parindu	\N
6105150	6105	 Tayan Hilir	\N
6105160	6105	 Balai	\N
6105170	6105	 Tayan Hulu	\N
6105180	6105	 Kembayan	\N
6105190	6105	 Beduwai	\N
6105200	6105	 Noyan	\N
6105210	6105	 Sekayam	\N
6105220	6105	 Entikong	\N
6106010	6106	 Kendawangan	\N
6106020	6106	 Manis Mata	\N
6106030	6106	 Marau	\N
6106031	6106	 Singkup	\N
6106032	6106	 Air Upas	\N
6106040	6106	 Jelai Hulu	\N
6106050	6106	 Tumbang Titi	\N
6106051	6106	 Pemahan	\N
6106052	6106	 Sungai Melayu Rayak	\N
6106060	6106	 Matan Hilir Selatan	\N
6106061	6106	 Benua Kayong	\N
6106070	6106	 Matan Hilir Utara	\N
6106071	6106	 Delta Pawan	\N
6106072	6106	 Muara Pawan	\N
6106090	6106	 Nanga Tayap	\N
6106100	6106	 Sandai	\N
6106101	6106	 Hulu Sungai	\N
6106110	6106	 Sungai Laur	\N
6106120	6106	 Simpang Hulu	\N
6106121	6106	 Simpang Dua	\N
6107060	6107	 Serawai	\N
6107070	6107	 Ambalau	\N
6107080	6107	 Kayan Hulu	\N
6107110	6107	 Sepauk	\N
6107120	6107	 Tempunak	\N
6107130	6107	 Sungai Tebelian	\N
6107140	6107	 Sintang	\N
6107150	6107	 Dedai	\N
6107160	6107	 Kayan Hilir	\N
6107170	6107	 Kelam Permai	\N
6107180	6107	 Binjai Hulu	\N
6107190	6107	 Ketungau Hilir	\N
6107200	6107	 Ketungau Tengah	\N
6107210	6107	 Ketungau Hulu	\N
6108010	6108	 Silat Hilir	\N
6108020	6108	 Silat Hulu	\N
6108030	6108	 Hulu Gurung	\N
6108040	6108	 Bunut Hulu	\N
6108050	6108	 Mentebah	\N
6108060	6108	 Bika	\N
6108070	6108	 Kalis	\N
6108080	6108	 Putussibau Selatan	\N
6108081	6108	 Hulu Kapuas	\N
6108090	6108	 Embaloh Hilir	\N
6108100	6108	 Bunut Hilir	\N
6108110	6108	 Boyan Tanjung	\N
6108120	6108	 Pengkadan	\N
6108130	6108	 Jongkong	\N
6108140	6108	 Selimbau	\N
6108141	6108	 Danau Sentarum	\N
6108150	6108	 Suhaid	\N
6108160	6108	 Seberuang	\N
6108170	6108	 Semitau	\N
6108180	6108	 Empanang	\N
6108190	6108	 Puring Kencana	\N
6108200	6108	 Badau	\N
6108210	6108	 Batang Lupar	\N
6108220	6108	 Embaloh Hulu	\N
6108230	6108	 Putussibau Utara	\N
6109010	6109	 Nanga Mahap	\N
6109020	6109	 Nanga Taman	\N
6109030	6109	 Sekadau Hulu	\N
6109040	6109	 Sekadau Hilir	\N
6109050	6109	 Belitang Hilir	\N
6109060	6109	 Belitang	\N
6109070	6109	 Belitang Hulu	\N
6110010	6110	 Sokan	\N
6110020	6110	 Tanah Pinoh	\N
6110021	6110	 Tanah Pinoh Barat	\N
6110030	6110	 Sayan	\N
6110040	6110	 Belimbing	\N
6110041	6110	 Belimbing Hulu	\N
6110050	6110	 Nanga Pinoh	\N
6110051	6110	 Pinoh Selatan	\N
6110052	6110	 Pinoh Utara	\N
6110060	6110	 Ella Hilir	\N
6110070	6110	 Menukung	\N
6111010	6111	 Pulau Maya	\N
6111011	6111	 Kepulauan Karimata	\N
6111020	6111	 Sukadana	\N
6111030	6111	 Simpang Hilir	\N
6111040	6111	 Teluk Batang	\N
6111050	6111	 Seponti	\N
6112010	6112	 Batu Ampar	\N
6112020	6112	 Terentang	\N
6112030	6112	 Kubu	\N
6112040	6112	 Telok Pa'kedai	\N
6112050	6112	 Sungai Kakap	\N
6112060	6112	 Rasau Jaya	\N
6112070	6112	 Sungai Raya	\N
6112080	6112	 Sungai Ambawang	\N
6112090	6112	 Kuala Mandor-b	\N
6171010	6171	 Pontianak Selatan	\N
6171011	6171	 Pontianak Tenggara	\N
6171020	6171	 Pontianak Timur	\N
6171030	6171	 Pontianak Barat	\N
6171031	6171	 Pontianak Kota	\N
6171040	6171	 Pontianak Utara	\N
6172010	6172	 Singkawang Selatan	\N
6172020	6172	 Singkawang Timur	\N
6172030	6172	 Singkawang Utara	\N
6172040	6172	 Singkawang Barat	\N
6172050	6172	 Singkawang Tengah	\N
6201040	6201	 Kotawaringin Lama	\N
6201050	6201	 Arut Selatan	\N
6201060	6201	 Kumai	\N
6201061	6201	 Pangkalan Banteng	\N
6201062	6201	 Pangkalan Lada	\N
6201070	6201	 Arut Utara	\N
6202020	6202	 Mentaya Hilir Selatan	\N
6202021	6202	 Teluk Sampit	\N
6202050	6202	 Pulau Hanaut	\N
6202060	6202	 Mentawa Baru/ketapang	\N
6202061	6202	 Seranau	\N
6202070	6202	 Mentaya Hilir Utara	\N
6202110	6202	 Kota Besi	\N
6202111	6202	 Telawang	\N
6202120	6202	 Baamang	\N
6202190	6202	 Cempaga	\N
6202191	6202	 Cempaga Hulu	\N
6202200	6202	 Parenggean	\N
6202201	6202	 Tualan Hulu	\N
6202210	6202	 Mentaya Hulu	\N
6202211	6202	 Bukit Santuai	\N
6202230	6202	 Antang Kalang	\N
6202231	6202	 Telaga Antang	\N
6203020	6203	 Kapuas Kuala	\N
6203021	6203	 Tamban Catur	\N
6203030	6203	 Kapuas Timur	\N
6203040	6203	 Selat	\N
6203041	6203	 Bataguh	\N
6203070	6203	 Basarang	\N
6203080	6203	 Kapuas Hilir	\N
6203090	6203	 Pulau Petak	\N
6203100	6203	 Kapuas Murung	\N
6203101	6203	 Dadahup	\N
6203110	6203	 Kapuas Barat	\N
6203150	6203	 Mantangai	\N
6203160	6203	 Timpah	\N
6203170	6203	 Kapuas Tengah	\N
6203171	6203	 Pasak Talawang	\N
6203180	6203	 Kapuas Hulu	\N
6203181	6203	 Mandau Talawang	\N
6204010	6204	 Jenamas	\N
6204020	6204	 Dusun Hilir	\N
6204030	6204	 Karau Kuala	\N
6204040	6204	 Dusun Selatan	\N
6204050	6204	 Dusun Utara	\N
6204060	6204	 Gunung Bintang Awai	\N
6205010	6205	 Montalat	\N
6205020	6205	 Gunung Timang	\N
6205030	6205	 Gunung Purei	\N
6205040	6205	 Teweh Timur	\N
6205050	6205	 Teweh Tengah	\N
6205051	6205	 Teweh  Baru	\N
6205052	6205	 Teweh Selatan	\N
6205060	6205	 Lahei	\N
6205061	6205	 Lahei Barat	\N
6206010	6206	 Jelai	\N
6206011	6206	 Pantai Lunci	\N
6206020	6206	 Sukamara	\N
6206030	6206	 Balai Riam	\N
6206031	6206	 Permata Kecubung	\N
6207010	6207	 Bulik	\N
6207011	6207	 Sematu Jaya	\N
6207012	6207	 Menthobi Raya	\N
6207013	6207	 Bulik Timur	\N
6207020	6207	 Lamandau	\N
6207021	6207	 Belantikan Raya	\N
6207030	6207	 Delang	\N
6207031	6207	 Batangkawa	\N
6208010	6208	 Seruyan Hilir	\N
6208011	6208	 Seruyan Hilir Timur	\N
6208020	6208	 Danau Sembuluh	\N
6208021	6208	 Seruyan Raya	\N
6208030	6208	 Hanau	\N
6208031	6208	 Danau Seluluk	\N
6208040	6208	 Seruyan Tengah	\N
6208041	6208	 Batu Ampar	\N
6208050	6208	 Seruyan Hulu	\N
6208051	6208	 Suling Tambun	\N
6209010	6209	 Katingan Kuala	\N
6209020	6209	 Mendawai	\N
6209030	6209	 Kamipang	\N
6209040	6209	 Tasik Payawan	\N
6209050	6209	 Katingan Hilir	\N
6209060	6209	 Tewang Sangalang Garing	\N
6209070	6209	 Pulau Malan	\N
6209080	6209	 Katingan Tengah	\N
6209090	6209	 Sanaman Mantikei	\N
6209091	6209	 Petak Malai	\N
6209100	6209	 Marikit	\N
6209110	6209	 Katingan Hulu	\N
6209111	6209	 Bukit Raya	\N
6210010	6210	 Kahayan Kuala	\N
6210011	6210	 Sebangau Kuala	\N
6210020	6210	 Pandih Batu	\N
6210030	6210	 Maliku	\N
6210040	6210	 Kahayan Hilir	\N
6210041	6210	 Jabiren Raya	\N
6210050	6210	 Kahayan Tengah	\N
6210060	6210	 Banama Tingang	\N
6211010	6211	 Manuhing	\N
6211011	6211	 Manuhing Raya	\N
6211020	6211	 Rungan	\N
6211021	6211	 Rungan Hulu	\N
6211022	6211	 Rungan Barat	\N
6211030	6211	 Sepang	\N
6211031	6211	 Mihing Raya	\N
6211040	6211	 Kurun	\N
6211050	6211	 Tewah	\N
6211060	6211	 Kahayan Hulu Utara	\N
6211061	6211	 Damang Batu	\N
6211062	6211	 Miri Manasa	\N
6212010	6212	 Benua Lima	\N
6212020	6212	 Dusun Timur	\N
6212021	6212	 Paju Epat	\N
6212030	6212	 Awang	\N
6212040	6212	 Patangkep Tutui	\N
6212050	6212	 Dusun Tengah	\N
6212051	6212	 Raren Batuah	\N
6212052	6212	 Paku	\N
6212053	6212	 Karusen Janang	\N
6212060	6212	 Pematang Karau	\N
6213010	6213	 Permata Intan	\N
6213011	6213	 Sungai Babuat	\N
6213020	6213	 Murung	\N
6213030	6213	 Laung Tuhup	\N
6213031	6213	 Barito Tuhup Raya	\N
6213040	6213	 Tanah Siang	\N
6213041	6213	 Tanah Siang Selatan	\N
6213050	6213	 Sumber Barito	\N
6213051	6213	 Seribu Riam	\N
6213052	6213	 Uut Murung	\N
6271010	6271	 Pahandut	\N
6271011	6271	 Sebangau	\N
6271012	6271	 Jekan Raya	\N
6271020	6271	 Bukit Batu	\N
6271021	6271	 Rakumpit	\N
6301010	6301	 Panyipatan	\N
6301020	6301	 Takisung	\N
6301030	6301	 Kurau	\N
6301031	6301	 Bumi Makmur	\N
6301040	6301	 Bati - Bati	\N
6301050	6301	 Tambang Ulang	\N
6301060	6301	 Pelaihari	\N
6301061	6301	 Bajuin	\N
6301070	6301	 Batu Ampar	\N
6301080	6301	 Jorong	\N
6301090	6301	 Kintap	\N
6302010	6302	 Pulau Sembilan	\N
6302020	6302	 Pulau Laut Barat	\N
6302021	6302	 Pulau Laut Tanjung Selayar	\N
6302030	6302	 Pulau Laut Selatan	\N
6302031	6302	 Pulau Laut Kepulauan	\N
6302040	6302	 Pulau Laut Timur	\N
6302050	6302	 Pulau Sebuku	\N
6302060	6302	 Pulau Laut Utara	\N
6302061	6302	 Pulau Laut Tengah	\N
6302120	6302	 Kelumpang Selatan	\N
6302121	6302	 Kelumpang Hilir	\N
6302130	6302	 Kelumpang Hulu	\N
6302140	6302	 Hampang	\N
6302150	6302	 Sungai Durian	\N
6302160	6302	 Kelumpang Tengah	\N
6302161	6302	 Kelumpang Barat	\N
6302170	6302	 Kelumpang Utara	\N
6302180	6302	 Pamukan Selatan	\N
6302190	6302	 Sampanahan	\N
6302200	6302	 Pamukan Utara	\N
6302201	6302	 Pamukan Barat	\N
6303010	6303	 Aluh - Aluh	\N
6303011	6303	 Beruntung Baru	\N
6303020	6303	 Gambut	\N
6303030	6303	 Kertak Hanyar	\N
6303031	6303	 Tatah Makmur	\N
6303040	6303	 Sungai Tabuk	\N
6303050	6303	 Martapura	\N
6303051	6303	 Martapura Timur	\N
6303052	6303	 Martapura Barat	\N
6303060	6303	 Astambul	\N
6303070	6303	 Karang Intan	\N
6303080	6303	 Aranio	\N
6303090	6303	 Sungai Pinang	\N
6303091	6303	 Paramasan	\N
6303100	6303	 Pengaron	\N
6303101	6303	 Sambung Makmur	\N
6303110	6303	 Mataraman	\N
6303120	6303	 Simpang Empat	\N
6303121	6303	 Telaga Bauntung	\N
6304010	6304	 Tabunganen	\N
6304020	6304	 Tamban	\N
6304030	6304	 Mekar Sari	\N
6304040	6304	 Anjir Pasar	\N
6304050	6304	 Anjir Muara	\N
6304060	6304	 Alalak	\N
6304070	6304	 Mandastana	\N
6304071	6304	 Jejangkit	\N
6304080	6304	 Belawang	\N
6304090	6304	 Wanaraya	\N
6304100	6304	 Barambai	\N
6304110	6304	 Rantau Badauh	\N
6304120	6304	 Cerbon	\N
6304130	6304	 Bakumpai	\N
6304140	6304	 Marabahan	\N
6304150	6304	 Tabukan	\N
6304160	6304	 Kuripan	\N
6305010	6305	 Binuang	\N
6305011	6305	 Hatungun	\N
6305020	6305	 Tapin Selatan	\N
6305021	6305	 Salam Babaris	\N
6305030	6305	 Tapin Tengah	\N
6305040	6305	 Bungur	\N
6305050	6305	 Piani	\N
6305060	6305	 Lokpaikat	\N
6305070	6305	 Tapin Utara	\N
6305080	6305	 Bakarangan	\N
6305090	6305	 Candi Laras Selatan	\N
6305100	6305	 Candi Laras Utara	\N
6306010	6306	 Padang Batung	\N
6306020	6306	 Loksado	\N
6306030	6306	 Telaga Langsat	\N
6306040	6306	 Angkinang	\N
6306050	6306	 Kandangan	\N
6306060	6306	 Sungai Raya	\N
6306070	6306	 Simpur	\N
6306080	6306	 Kalumpang	\N
6306090	6306	 Daha Selatan	\N
6306091	6306	 Daha Barat	\N
6306100	6306	 Daha Utara	\N
6307010	6307	 Haruyan	\N
6307020	6307	 Batu Benawa	\N
6307030	6307	 Hantakan	\N
6307040	6307	 Batang Alai Selatan	\N
6307041	6307	 Batang Alai Timur	\N
6307050	6307	 Barabai	\N
6307060	6307	 Labuan Amas Selatan	\N
6307070	6307	 Labuan Amas Utara	\N
6307080	6307	 Pandawan	\N
6307090	6307	 Batang Alai Utara	\N
6307091	6307	 Limpasu	\N
6308010	6308	 Danau Panggang	\N
6308011	6308	 Paminggir	\N
6308020	6308	 Babirik	\N
6308030	6308	 Sungai Pandan	\N
6308031	6308	 Sungai Tabukan	\N
6308040	6308	 Amuntai Selatan	\N
6308050	6308	 Amuntai Tengah	\N
6308060	6308	 Banjang	\N
6308070	6308	 Amuntai Utara	\N
6308071	6308	 Haur Gading	\N
6309010	6309	 Banua Lawas	\N
6309020	6309	 Pugaan	\N
6309030	6309	 Kelua	\N
6309040	6309	 Muara Harus	\N
6309050	6309	 Tanta	\N
6309060	6309	 Tanjung	\N
6309070	6309	 Murung Pudak	\N
6309080	6309	 Haruai	\N
6309081	6309	 Bintang Ara	\N
6309090	6309	 Upau	\N
6309100	6309	 Muara Uya	\N
6309110	6309	 Jaro	\N
6310010	6310	 Kusan Hilir	\N
6310020	6310	 Sungai Loban	\N
6310030	6310	 Satui	\N
6310031	6310	 Angsana	\N
6310040	6310	 Kusan Hulu	\N
6310041	6310	 Kuranji	\N
6310050	6310	 Batu Licin	\N
6310051	6310	 Karang Bintang	\N
6310052	6310	 Simpang Empat	\N
6310053	6310	 Mantewe	\N
6311010	6311	 Lampihong	\N
6311020	6311	 Batu Mandi	\N
6311030	6311	 Awayan	\N
6311031	6311	 Tebing Tinggi	\N
6311040	6311	 Paringin	\N
6311041	6311	 Paringin Selatan	\N
6311050	6311	 Juai	\N
6311060	6311	 Halong	\N
6371010	6371	 Banjarmasin Selatan	\N
6371020	6371	 Banjarmasin Timur	\N
6371030	6371	 Banjarmasin Barat	\N
6371031	6371	 Banjarmasin Tengah	\N
6371040	6371	 Banjarmasin Utara	\N
6372010	6372	 Landasan Ulin	\N
6372011	6372	 Liang Anggang	\N
6372020	6372	 Cempaka	\N
6372031	6372	 Banjar Baru Utara	\N
6372032	6372	 Banjar Baru Selatan	\N
6401010	6401	 Batu Sopang	\N
6401011	6401	 Muara Samu	\N
6401021	6401	 Batu Engau	\N
6401022	6401	 Tanjung Harapan	\N
6401030	6401	 Pasir Belengkong	\N
6401040	6401	 Tanah Grogot	\N
6401050	6401	 Kuaro	\N
6401060	6401	 Long Ikis	\N
6401070	6401	 Muara Komam	\N
6401080	6401	 Long Kali	\N
6402010	6402	 Bongan	\N
6402020	6402	 Jempang	\N
6402030	6402	 Penyinggahan	\N
6402040	6402	 Muara Pahu	\N
6402041	6402	 Siluq Ngurai	\N
6402050	6402	 Muara Lawa	\N
6402051	6402	 Bentian Besar	\N
6402060	6402	 Damai	\N
6402061	6402	 Nyuatan	\N
6402070	6402	 Barong Tongkok	\N
6402071	6402	 Linggang Bigung	\N
6402080	6402	 Melak	\N
6402081	6402	 Sekolaq Darat	\N
6402082	6402	 Manor Bulatn	\N
6402090	6402	 Long Iram	\N
6402091	6402	 Tering	\N
6402100	6402	 Long Hubung	\N
6402101	6402	 Laham	\N
6402110	6402	 Long Bagun	\N
6402120	6402	 Long Pahangai	\N
6402130	6402	 Long Apari	\N
6403010	6403	 Semboja	\N
6403020	6403	 Muara Jawa	\N
6403030	6403	 Sanga-sanga	\N
6403040	6403	 Loa Janan	\N
6403050	6403	 Loa Kulu	\N
6403060	6403	 Muara Muntai	\N
6403070	6403	 Muara Wis	\N
6403080	6403	 Kotabangun	\N
6403090	6403	 Tenggarong	\N
6403100	6403	 Sebulu	\N
6403110	6403	 Tenggarong Seberang	\N
6403120	6403	 Anggana	\N
6403130	6403	 Muara Badak	\N
6403140	6403	 Marang Kayu	\N
6403150	6403	 Muara Kaman	\N
6403160	6403	 Kenohan	\N
6403170	6403	 Kembang Janggut	\N
6403180	6403	 Tabang	\N
6404010	6404	 Muara Ancalong	\N
6404011	6404	 Busang	\N
6404012	6404	 Long Mesangat	\N
6404020	6404	 Muara Wahau	\N
6404021	6404	 Telen	\N
6404022	6404	 Kongbeng	\N
6404030	6404	 Muara Bengkal	\N
6404031	6404	 Batu Ampar	\N
6404040	6404	 Sangatta Utara	\N
6404041	6404	 Bengalon	\N
6404042	6404	 Teluk Pandan	\N
6404043	6404	 Sangatta Selatan	\N
6404044	6404	 Rantau Pulung	\N
6404050	6404	 Sangkulirang	\N
6404051	6404	 Kaliorang	\N
6404052	6404	 Sandaran	\N
6404053	6404	 Kaubun	\N
6404054	6404	 Karangan	\N
6405010	6405	 Kelay	\N
6405020	6405	 Talisayan	\N
6405021	6405	 Tabalar	\N
6405030	6405	 Biduk Biduk	\N
6405040	6405	 Pulau Derawan	\N
6405041	6405	 Maratua	\N
6405050	6405	 Sambaliung	\N
6405060	6405	 Tanjung Redeb	\N
6405070	6405	 Gunung Tabur	\N
6405080	6405	 Segah	\N
6405090	6405	 Teluk Bayur	\N
6405100	6405	 Batu Putih	\N
6405110	6405	 Biatan	\N
6409010	6409	 Babulu	\N
6409020	6409	 Waru	\N
6409030	6409	 Penajam	\N
6409040	6409	 Sepaku	\N
6471010	6471	 Balikpapan Selatan	\N
6471020	6471	 Balikpapan Timur	\N
6471030	6471	 Balikpapan Utara	\N
6471040	6471	 Balikpapan Tengah	\N
6471050	6471	 Balikpapan Barat	\N
6472010	6472	 Palaran	\N
6472020	6472	 Samarinda Ilir	\N
6472021	6472	 Samarinda Kota	\N
6472022	6472	 Sambutan	\N
6472030	6472	 Samarinda Seberang	\N
6472031	6472	 Loa Janan Ilir	\N
6472040	6472	 Sungai Kunjang	\N
6472050	6472	 Samarinda Ulu	\N
6472060	6472	 Samarinda Utara	\N
6472061	6472	 Sungai Pinang	\N
6474010	6474	 Bontang Selatan	\N
6474020	6474	 Bontang Utara	\N
6474030	6474	 Bontang Barat	\N
6501010	6501	 Kayan Hulu	\N
6501011	6501	 Sungai Boh	\N
6501012	6501	 Kayan Selatan	\N
6501020	6501	 Kayan Hilir	\N
6501030	6501	 Pujungan	\N
6501031	6501	 Bahau Hulu	\N
6501040	6501	 Malinau Kota	\N
6501041	6501	 Malinau Selatan	\N
6501042	6501	 Malinau Barat	\N
6501043	6501	 Malinau Utara	\N
6501044	6501	 Malinau Selatan Hilir	\N
6501045	6501	 Malinau Selatan Hulu	\N
6501050	6501	 Mentarang	\N
6501051	6501	 Mentarang Hulu	\N
6501052	6501	 Sungai Tubu	\N
6502010	6502	 Peso	\N
6502020	6502	 Peso Hilir	\N
6502030	6502	 Tanjung Palas Barat	\N
6502040	6502	 Tanjung Palas	\N
6502050	6502	 Tanjung Selor	\N
6502060	6502	 Tanjung Palas Timur	\N
6502070	6502	 Tanjung Palas Tengah	\N
6502080	6502	 Tanjung Palas Utara	\N
6502090	6502	 Sekatak	\N
6502100	6502	 Bunyu	\N
6503010	6503	 Sesayap	\N
6503020	6503	 Sesayap Hilir	\N
6503030	6503	 Tana Lia	\N
6504010	6504	 Krayan	\N
6504011	6504	 Krayan Selatan	\N
6504020	6504	 Lumbis	\N
6504021	6504	 Lumbis Ogong	\N
6504030	6504	 Sembakung	\N
6504031	6504	 Sembakung Atulai	\N
6504040	6504	 Nunukan	\N
6504041	6504	 Sebuku	\N
6504042	6504	 Nunukan Selatan	\N
6504043	6504	 Sei Menggaris	\N
6504044	6504	 Tulin Onsoi	\N
6504050	6504	 Sebatik	\N
6504051	6504	 Sebatik Barat	\N
6504052	6504	 Sebatik Tengah	\N
6504053	6504	 Sebatik Utara	\N
6504054	6504	 Sebatik Timur	\N
6571010	6571	 Tarakan Timur	\N
6571020	6571	 Tarakan Tengah	\N
6571030	6571	 Tarakan Barat	\N
6571040	6571	 Tarakan Utara	\N
7101021	7101	 Dumoga Barat	\N
7101022	7101	 Dumoga Utara	\N
7101023	7101	 Dumoga Timur	\N
7101060	7101	 Lolayan	\N
7101081	7101	 Passi Barat	\N
7101082	7101	 Passi Timur	\N
7101083	7101	 Bilalang	\N
7101090	7101	 Poigar	\N
7101100	7101	 Bolaang	\N
7101101	7101	 Bolaang Timur	\N
7101110	7101	 Lolak	\N
7101120	7101	 Sangtombolang	\N
7102091	7102	 Langowan Timur	\N
7102092	7102	 Langowan Barat	\N
7102093	7102	 Langowan Selatan	\N
7102094	7102	 Langowan Utara	\N
7102110	7102	 Tompaso	\N
7102111	7102	 Tompaso Barat	\N
7102120	7102	 Kawangkoan	\N
7102121	7102	 Kawangkoan Barat	\N
7102122	7102	 Kawangkoan Utara	\N
7102130	7102	 Sonder	\N
7102160	7102	 Tombariri	\N
7102161	7102	 Tombariri Timur	\N
7102170	7102	 Pineleng	\N
7102171	7102	 Tombulu	\N
7102172	7102	 Mandolang	\N
7102190	7102	 Tondano Barat	\N
7102191	7102	 Tondano Selatan	\N
7102200	7102	 Remboken	\N
7102210	7102	 Kakas	\N
7102211	7102	 Kakas Barat	\N
7102220	7102	 Lembean Timur	\N
7102230	7102	 Eris	\N
7102240	7102	 Kombi	\N
7102250	7102	 Tondano Timur	\N
7102251	7102	 Tondano Utara	\N
7103040	7103	 Manganitu Selatan	\N
7103041	7103	 Tatoareng	\N
7103050	7103	 Tamako	\N
7103060	7103	 Tabukan Selatan	\N
7103061	7103	 Tabukan Selatan Tengah	\N
7103062	7103	 Tabukan Selatan Tenggara	\N
7103070	7103	 Tabukan Tengah	\N
7103080	7103	 Manganitu	\N
7103090	7103	 Tahuna	\N
7103091	7103	 Tahuna Timur	\N
7103092	7103	 Tahuna Barat	\N
7103100	7103	 Tabukan Utara	\N
7103101	7103	 Nusa Tabukan	\N
7103102	7103	 Kepulauan Marore	\N
7103110	7103	 Kendahe	\N
7104010	7104	 Kabaruan	\N
7104011	7104	 Damau	\N
7104020	7104	 Lirung	\N
7104021	7104	 Salibabu	\N
7104022	7104	 Kalongan	\N
7104023	7104	 Moronge	\N
7104030	7104	 Melonguane	\N
7104031	7104	 Melonguane Timur	\N
7104040	7104	 Beo	\N
7104041	7104	 Beo Utara	\N
7104042	7104	 Beo Selatan	\N
7104050	7104	 Rainis	\N
7104051	7104	 Tampa Na'mma	\N
7104052	7104	 Pulutan	\N
7104060	7104	 Essang	\N
7104061	7104	 Essang Selatan	\N
7104070	7104	 Gemeh	\N
7104080	7104	 Nanusa	\N
7104081	7104	 Miangas	\N
7105010	7105	 Modoinding	\N
7105020	7105	 Tompaso Baru	\N
7105021	7105	 Maesaan	\N
7105070	7105	 Ranoyapo	\N
7105080	7105	 Motoling	\N
7105081	7105	 Kumelembuai	\N
7105082	7105	 Motoling Barat	\N
7105083	7105	 Motoling Timur	\N
7105090	7105	 Sinonsayang	\N
7105100	7105	 Tenga	\N
7105111	7105	 Amurang	\N
7105112	7105	 Amurang Barat	\N
7105113	7105	 Amurang Timur	\N
7105120	7105	 Tareran	\N
7105121	7105	 Sulta	\N
7105130	7105	 Tumpaan	\N
7105131	7105	 Tatapaan	\N
7106010	7106	 Kema	\N
7106020	7106	 Kauditan	\N
7106030	7106	 Airmadidi	\N
7106040	7106	 Kalawat	\N
7106050	7106	 Dimembe	\N
7106051	7106	 Talawaan	\N
7106060	7106	 Wori	\N
7106070	7106	 Likupang Barat	\N
7106080	7106	 Likupang Timur	\N
7106081	7106	 Likupang Selatan	\N
7107010	7107	 Sangkub	\N
7107020	7107	 Bintauna	\N
7107030	7107	 Bolang Itang Timur	\N
7107040	7107	 Bolang Itang Barat	\N
7107050	7107	 Kaidipang	\N
7107060	7107	 Pinogaluman	\N
7108010	7108	 Biaro	\N
7108020	7108	 Tagulandang Selatan	\N
7108030	7108	 Tagulandang	\N
7108040	7108	 Tagulandang Utara	\N
7108050	7108	 Siau Barat Selatan	\N
7108060	7108	 Siau Timur Selatan	\N
7108070	7108	 Siau Barat	\N
7108080	7108	 Siau Tengah	\N
7108090	7108	 Siau Timur	\N
7108100	7108	 Siau Barat Utara	\N
7109010	7109	 Ratatotok	\N
7109020	7109	 Pusomaen	\N
7109030	7109	 Belang	\N
7109040	7109	 Ratahan	\N
7109041	7109	 Pasan	\N
7109042	7109	 Ratahan Timur	\N
7109050	7109	 Tombatu	\N
7109051	7109	 Tombatu Timur	\N
7109052	7109	 Tombatu Utara	\N
7109060	7109	 Touluaan	\N
7109061	7109	 Touluaan Selatan	\N
7109062	7109	 Silian Raya	\N
7110010	7110	 Posigadan	\N
7110020	7110	 Bolang Uki	\N
7110030	7110	 Pinolosian	\N
7110040	7110	 Pinolosian Tengah	\N
7110050	7110	 Pinolosian Timur	\N
7111010	7111	 Nuangan	\N
7111020	7111	 Tutuyan	\N
7111030	7111	 Kotabunan	\N
7111040	7111	 Modayag	\N
7111050	7111	 Modayag Barat	\N
7171010	7171	 Malalayang	\N
7171020	7171	 Sario	\N
7171021	7171	 Wanea	\N
7171030	7171	 Wenang	\N
7171031	7171	 Tikala	\N
7171032	7171	 Paal Dua	\N
7171040	7171	 Mapanget	\N
7171051	7171	 Singkil	\N
7171052	7171	 Tuminting	\N
7171053	7171	 Bunaken	\N
7171054	7171	 Bunaken Kepulauan	\N
7172010	7172	 Madidir	\N
7172011	7172	 Matuari	\N
7172012	7172	 Girian	\N
7172021	7172	 Lembeh Selatan	\N
7172022	7172	 Lembeh Utara	\N
7172030	7172	 Aertembaga	\N
7172031	7172	 Maesa	\N
7172040	7172	 Ranowulu	\N
7173010	7173	 Tomohon Selatan	\N
7173020	7173	 Tomohon Tengah	\N
7173021	7173	 Tomohon Timur	\N
7173022	7173	 Tomohon Barat	\N
7173030	7173	 Tomohon Utara	\N
7174010	7174	 Kotamobagu Selatan	\N
7174020	7174	 Kotamobagu Timur	\N
7174030	7174	 Kotamobagu Barat	\N
7174040	7174	 Kotamobagu Utara	\N
7201010	7201	 Labobo	\N
7201011	7201	 Bokan Kepulauan	\N
7201012	7201	 Bangkurung	\N
7201020	7201	 Banggai	\N
7201021	7201	 Banggai Utara	\N
7201022	7201	 Banggai Tengah	\N
7201023	7201	 Banggai Selatan	\N
7201030	7201	 Totikum	\N
7201031	7201	 Totikum Selatan	\N
7201040	7201	 Tinangkung	\N
7201041	7201	 Tinangkung Selatan	\N
7201042	7201	 Tinangkung Utara	\N
7201050	7201	 Liang	\N
7201051	7201	 Peling Tengah	\N
7201060	7201	 Bulagi	\N
7201061	7201	 Bulagi Selatan	\N
7201062	7201	 Bulagi Utara	\N
7201070	7201	 Buko	\N
7201071	7201	 Buko Selatan	\N
7202010	7202	 Toili	\N
7202011	7202	 Toili Barat	\N
7202012	7202	 Moilong	\N
7202020	7202	 Batui	\N
7202021	7202	 Batui Selatan	\N
7202030	7202	 Bunta	\N
7202031	7202	 Nuhon	\N
7202032	7202	 Simpang Raya	\N
7202040	7202	 Kintom	\N
7202050	7202	 Luwuk	\N
7202051	7202	 Luwuk Timur	\N
7202052	7202	 Luwuk Utara	\N
7202053	7202	 Luwuk Selatan	\N
7202054	7202	 Nambo	\N
7202060	7202	 Pagimana	\N
7202061	7202	 Bualemo	\N
7202062	7202	 Lobu	\N
7202070	7202	 Lamala	\N
7202071	7202	 Masama	\N
7202072	7202	 Mantoh	\N
7202080	7202	 Balantak	\N
7202081	7202	 Balantak Selatan	\N
7202082	7202	 Balantak Utara	\N
7203010	7203	 Menui Kepulauan	\N
7203020	7203	 Bungku Selatan	\N
7203021	7203	 Bahodopi	\N
7203022	7203	 Bungku Pesisir	\N
7203030	7203	 Bungku Tengah	\N
7203031	7203	 Bungku Timur	\N
7203040	7203	 Bungku Barat	\N
7203041	7203	 Bumi Raya	\N
7203042	7203	 Wita Ponda	\N
7203050	7203	 Lembo	\N
7203051	7203	 Lembo Raya	\N
7203060	7203	 Mori Atas	\N
7203061	7203	 Mori Utara	\N
7203070	7203	 Petasia	\N
7203071	7203	 Soyo Jaya	\N
7203072	7203	 Petasia Timur	\N
7203080	7203	 Bungku Utara	\N
7203081	7203	 Mamosalato	\N
7204010	7204	 Pamona Selatan	\N
7204011	7204	 Pamona Barat	\N
7204012	7204	 Pamona Tenggara	\N
7204020	7204	 Lore Selatan	\N
7204021	7204	 Lore Barat	\N
7204030	7204	 Pamona Pusalemba	\N
7204031	7204	 Pamona Timur	\N
7204032	7204	 Pamona Utara	\N
7204040	7204	 Lore Utara	\N
7204041	7204	 Lore Tengah	\N
7204042	7204	 Lore Timur	\N
7204043	7204	 Lore Peore	\N
7204050	7204	 Poso Pesisir	\N
7204051	7204	 Poso Pesisir Selatan	\N
7204052	7204	 Poso Pesisir Utara	\N
7204060	7204	 Lage	\N
7204070	7204	 Poso Kota	\N
7204071	7204	 Poso Kota Utara	\N
7204072	7204	 Poso Kota Selatan	\N
7205041	7205	 Rio Pakava	\N
7205051	7205	 Pinembani	\N
7205080	7205	 Banawa	\N
7205081	7205	 Banawa Selatan	\N
7205082	7205	 Banawa Tengah	\N
7205090	7205	 Labuan	\N
7205091	7205	 Tanantovea	\N
7205100	7205	 Sindue	\N
7205101	7205	 Sindue Tombusabora	\N
7205102	7205	 Sindue Tobata	\N
7205120	7205	 Sirenja	\N
7205130	7205	 Balaesang	\N
7205131	7205	 Balaesang Tanjung	\N
7205140	7205	 Damsol	\N
7205160	7205	 Sojol	\N
7205161	7205	 Sojol Utara	\N
7206010	7206	 Dampal Selatan	\N
7206020	7206	 Dampal Utara	\N
7206030	7206	 Dondo	\N
7206031	7206	 Ogodeide	\N
7206032	7206	 Basidondo	\N
7206040	7206	 Baolan	\N
7206041	7206	 Lampasio	\N
7206050	7206	 Galang	\N
7206060	7206	 Tolitoli Utara	\N
7206061	7206	 Dako Pamean	\N
7207010	7207	 Lakea	\N
7207011	7207	 Biau	\N
7207012	7207	 Karamat	\N
7207020	7207	 Momunu	\N
7207021	7207	 Tiloan	\N
7207030	7207	 Bokat	\N
7207031	7207	 Bukal	\N
7207040	7207	 Bunobogu	\N
7207041	7207	 Gadung	\N
7207050	7207	 Paleleh	\N
7207051	7207	 Paleleh Barat	\N
7208010	7208	 Sausu	\N
7208011	7208	 Torue	\N
7208012	7208	 Balinggi	\N
7208020	7208	 Parigi	\N
7208021	7208	 Parigi Selatan	\N
7208022	7208	 Parigi Barat	\N
7208023	7208	 Parigi Utara	\N
7208024	7208	 Parigi Tengah	\N
7208030	7208	 Ampibabo	\N
7208031	7208	 Kasimbar	\N
7208032	7208	 Toribulu	\N
7208033	7208	 Siniu	\N
7208040	7208	 Tinombo	\N
7208041	7208	 Tinombo Selatan	\N
7208050	7208	 Tomini	\N
7208051	7208	 Mepanga	\N
7208052	7208	 Palasa	\N
7208060	7208	 Moutong	\N
7208061	7208	 Bolano Lambunu	\N
7208062	7208	 Taopa	\N
7208063	7208	 Bolano	\N
7208064	7208	 Ongka Malino	\N
7209010	7209	 Tojo Barat	\N
7209020	7209	 Tojo	\N
7209030	7209	 Ulubongka	\N
7209040	7209	 Ampana Tete	\N
7209050	7209	 Ampana Kota	\N
7209060	7209	 Una - Una	\N
7209070	7209	 Togean	\N
7209080	7209	 Walea Kepulauan	\N
7209081	7209	 Walea Besar	\N
7210010	7210	 Pipikoro	\N
7210020	7210	 Kulawi Selatan	\N
7210030	7210	 Kulawi	\N
7210040	7210	 Lindu	\N
7210050	7210	 Nokilalaki	\N
7210060	7210	 Palolo	\N
7210070	7210	 Gumbasa	\N
7210080	7210	 Dolo Selatan	\N
7210090	7210	 Dolo Barat	\N
7210100	7210	 Tanambulava	\N
7210110	7210	 Dolo	\N
7210120	7210	 Sigi Biromaru	\N
7210130	7210	 Marawola	\N
7210140	7210	 Marawola Barat	\N
7210150	7210	 Kinovaro	\N
7271010	7271	 Palu Barat	\N
7271011	7271	 Tatanga	\N
7271012	7271	 Ulujadi	\N
7271020	7271	 Palu Selatan	\N
7271030	7271	 Palu Timur	\N
7271031	7271	 Mantikulore	\N
7271040	7271	 Palu Utara	\N
7271041	7271	 Tawaeli	\N
7301010	7301	 Pasimarannu	\N
7301011	7301	 Pasilambena	\N
7301020	7301	 Pasimassunggu	\N
7301021	7301	 Takabonerate	\N
7301022	7301	 Pasimassunggu Timur	\N
7301030	7301	 Bontosikuyu	\N
7301040	7301	 Bontoharu	\N
7301041	7301	 Benteng	\N
7301042	7301	 Bontomanai	\N
7301050	7301	 Bontomatene	\N
7301051	7301	 Buki	\N
7302010	7302	 Gantarang	\N
7302020	7302	 Ujung Bulu	\N
7302021	7302	 Ujung Loe	\N
7302030	7302	 Bonto Bahari	\N
7302040	7302	 Bontotiro	\N
7302050	7302	 Hero Lange-lange	\N
7302060	7302	 Kajang	\N
7302070	7302	 Bulukumpa	\N
7302080	7302	 Rilau Ale	\N
7302090	7302	 Kindang	\N
7303010	7303	 Bissappu	\N
7303011	7303	 Uluere	\N
7303012	7303	 Sinoa	\N
7303020	7303	 Bantaeng	\N
7303021	7303	 Eremerasa	\N
7303030	7303	 Tompobulu	\N
7303031	7303	 Pa'jukukang	\N
7303032	7303	 Gantarangkeke	\N
7304010	7304	 Bangkala	\N
7304011	7304	 Bangkala Barat	\N
7304020	7304	 Tamalatea	\N
7304021	7304	 Bontoramba	\N
7304030	7304	 Binamu	\N
7304031	7304	 Turatea	\N
7304040	7304	 Batang	\N
7304041	7304	 Arungkeke	\N
7304042	7304	 Tarowang	\N
7304050	7304	 Kelara	\N
7304051	7304	 Rumbia	\N
7305010	7305	 Mangara Bombang	\N
7305020	7305	 Mappakasunggu	\N
7305021	7305	 Sanrobone	\N
7305030	7305	 Polombangkeng Selatan	\N
7305031	7305	 Pattallassang	\N
7305040	7305	 Polombangkeng Utara	\N
7305050	7305	 Galesong Selatan	\N
7305051	7305	 Galesong	\N
7305060	7305	 Galesong Utara	\N
7306010	7306	 Bontonompo	\N
7306011	7306	 Bontonompo Selatan	\N
7306020	7306	 Bajeng	\N
7306021	7306	 Bajeng Barat	\N
7306030	7306	 Pallangga	\N
7306031	7306	 Barombong	\N
7306040	7306	 Somba Opu	\N
7306050	7306	 Bontomarannu	\N
7306051	7306	 Pattallassang	\N
7306060	7306	 Parangloe	\N
7306061	7306	 Manuju	\N
7306070	7306	 Tinggimoncong	\N
7306071	7306	 Tombolo Pao	\N
7306072	7306	 Parigi	\N
7306080	7306	 Bungaya	\N
7306081	7306	 Bontolempangan	\N
7306090	7306	 Tompobulu	\N
7306091	7306	 Biringbulu	\N
7307010	7307	 Sinjai Barat	\N
7307020	7307	 Sinjai Borong	\N
7307030	7307	 Sinjai Selatan	\N
7307040	7307	 Tellu Limpoe	\N
7307050	7307	 Sinjai Timur	\N
7307060	7307	 Sinjai Tengah	\N
7307070	7307	 Sinjai Utara	\N
7307080	7307	 Bulupoddo	\N
7307090	7307	 Pulau Sembilan	\N
7308010	7308	 Mandai	\N
7308011	7308	 Moncongloe	\N
7308020	7308	 Maros Baru	\N
7308021	7308	 Marusu	\N
7308022	7308	 Turikale	\N
7308023	7308	 Lau	\N
7308030	7308	 Bontoa	\N
7308040	7308	 Bantimurung	\N
7308041	7308	 Simbang	\N
7308050	7308	 Tanralili	\N
7308051	7308	 Tompu Bulu	\N
7308060	7308	 Camba	\N
7308061	7308	 Cenrana	\N
7308070	7308	 Mallawa	\N
7309010	7309	 Liukang Tangaya	\N
7309020	7309	 Liukang Kalmas	\N
7309030	7309	 Liukang Tupabbiring	\N
7309031	7309	 Liukang Tupabbiring Utara	\N
7309040	7309	 Pangkajene	\N
7309041	7309	 Minasatene	\N
7309050	7309	 Balocci	\N
7309051	7309	 Tondong Tallasa	\N
7309060	7309	 Bungoro	\N
7309070	7309	 Labakkang	\N
7309080	7309	 Ma'rang	\N
7309091	7309	 Segeri	\N
7309092	7309	 Mandalle	\N
7310010	7310	 Tanete Riaja	\N
7310011	7310	 Pujananting	\N
7310020	7310	 Tanete Rilau	\N
7310030	7310	 Barru	\N
7310040	7310	 Soppeng Riaja	\N
7310041	7310	 Balusu	\N
7310050	7310	 Mallusetasi	\N
7311010	7311	 Bontocani	\N
7311020	7311	 Kahu	\N
7311030	7311	 Kajuara	\N
7311040	7311	 Salomekko	\N
7311050	7311	 Tonra	\N
7311060	7311	 Patimpeng	\N
7311070	7311	 Libureng	\N
7311080	7311	 Mare	\N
7311090	7311	 Sibulue	\N
7311100	7311	 Cina	\N
7311110	7311	 Barebbo	\N
7311120	7311	 Ponre	\N
7311130	7311	 Lappariaja	\N
7311140	7311	 Lamuru	\N
7311141	7311	 Tellu Limpoe	\N
7311150	7311	 Bengo	\N
7311160	7311	 Ulaweng	\N
7311170	7311	 Palakka	\N
7311180	7311	 Awangpone	\N
7311190	7311	 Tellu Siattinge	\N
7311200	7311	 Amali	\N
7311210	7311	 Ajangale	\N
7311220	7311	 Dua Boccoe	\N
7311230	7311	 Cenrana	\N
7311710	7311	 Tanete Riattang Barat	\N
7311720	7311	 Tanete Riattang	\N
7311730	7311	 Tanete Riattang Timur	\N
7312010	7312	 Mario Riwawo	\N
7312020	7312	 Lalabata	\N
7312030	7312	 Lili Riaja	\N
7312031	7312	 Ganra	\N
7312032	7312	 Citta	\N
7312040	7312	 Lili Rilau	\N
7312050	7312	 Donri Donri	\N
7312060	7312	 Mario Riawa	\N
7313010	7313	 Sabbang Paru	\N
7313020	7313	 Tempe	\N
7313030	7313	 Pammana	\N
7313040	7313	 Bola	\N
7313050	7313	 Takkalalla	\N
7313060	7313	 Sajoanging	\N
7313061	7313	 Penrang	\N
7313070	7313	 Majauleng	\N
7313080	7313	 Tana Sitolo	\N
7313090	7313	 Belawa	\N
7313100	7313	 Maniang Pajo	\N
7313101	7313	 Gilireng	\N
7313110	7313	 Keera	\N
7313120	7313	 Pitumpanua	\N
7314010	7314	 Panca Lautang	\N
7314020	7314	 Tellulimpo E	\N
7314030	7314	 Watang Pulu	\N
7314040	7314	 Baranti	\N
7314050	7314	 Panca Rijang	\N
7314051	7314	 Kulo	\N
7314060	7314	 Maritengngae	\N
7314061	7314	 Watang Sidenreng	\N
7314070	7314	 Pitu Riawa	\N
7314080	7314	 Duapitue	\N
7314081	7314	 Pitu Riase	\N
7315010	7315	 Suppa	\N
7315020	7315	 Mattirosompe	\N
7315021	7315	 Lanrisang	\N
7315030	7315	 Mattiro Bulu	\N
7315040	7315	 Watang Sawitto	\N
7315041	7315	 Paleteang	\N
7315042	7315	 Tiroang	\N
7315050	7315	 Patampanua	\N
7315060	7315	 Cempa	\N
7315070	7315	 Duampanua	\N
7315071	7315	 Batulappa	\N
7315080	7315	 Lembang	\N
7316010	7316	 Maiwa	\N
7316011	7316	 Bungin	\N
7316020	7316	 Enrekang	\N
7316021	7316	 Cendana	\N
7316030	7316	 Baraka	\N
7316031	7316	 Buntu Batu	\N
7316040	7316	 Anggeraja	\N
7316041	7316	 Malua	\N
7316050	7316	 Alla	\N
7316051	7316	 Curio	\N
7316052	7316	 Masalle	\N
7316053	7316	 Baroko	\N
7317010	7317	 Larompong	\N
7317011	7317	 Larompong Selatan	\N
7317020	7317	 Suli	\N
7317021	7317	 Suli Barat	\N
7317030	7317	 Belopa	\N
7317031	7317	 Kamanre	\N
7317032	7317	 Belopa Utara	\N
7317040	7317	 Bajo	\N
7317041	7317	 Bajo Barat	\N
7317050	7317	 Bassesangtempe	\N
7317051	7317	 Latimojong	\N
7317052	7317	 Bassesangtempe Utara	\N
7317060	7317	 Bupon	\N
7317061	7317	 Ponrang	\N
7317062	7317	 Ponrang Selatan	\N
7317070	7317	 Bua	\N
7317080	7317	 Walenrang	\N
7317081	7317	 Walenrang Timur	\N
7317090	7317	 Lamasi	\N
7317091	7317	 Walenrang Utara	\N
7317092	7317	 Walenrang Barat	\N
7317093	7317	 Lamasi Timur	\N
7318010	7318	 Bonggakaradeng	\N
7318011	7318	 Simbuang	\N
7318012	7318	 Rano	\N
7318013	7318	 Mappak	\N
7318020	7318	 Mengkendek	\N
7318021	7318	 Gandang Batu Silanan	\N
7318030	7318	 Sangalla	\N
7318031	7318	 Sangala Selatan	\N
7318032	7318	 Sangalla Utara	\N
7318040	7318	 Makale	\N
7318041	7318	 Makale Selatan	\N
7318042	7318	 Makale Utara	\N
7318050	7318	 Saluputti	\N
7318051	7318	 Bittuang	\N
7318052	7318	 Rembon	\N
7318053	7318	 Masanda	\N
7318054	7318	 Malimbong Balepe	\N
7318061	7318	 Rantetayo	\N
7318067	7318	 Kurra	\N
7322010	7322	 Sabbang	\N
7322020	7322	 Baebunta	\N
7322030	7322	 Malangke	\N
7322031	7322	 Malangke Barat	\N
7322040	7322	 Sukamaju	\N
7322050	7322	 Bone-bone	\N
7322051	7322	 Tana Lili	\N
7322120	7322	 Masamba	\N
7322121	7322	 Mappedeceng	\N
7322122	7322	 Rampi	\N
7322130	7322	 Limbong	\N
7322131	7322	 Seko	\N
7325010	7325	 Burau	\N
7325020	7325	 Wotu	\N
7325030	7325	 Tomoni	\N
7325031	7325	 Tomoni Timur	\N
7325040	7325	 Angkona	\N
7325050	7325	 Malili	\N
7325060	7325	 Towuti	\N
7325070	7325	 Nuha	\N
7325071	7325	 Wasuponda	\N
7325080	7325	 Mangkutana	\N
7325081	7325	 Kalaena	\N
7326010	7326	 Sopai	\N
7326020	7326	 Kesu	\N
7326030	7326	 Sanggalangi	\N
7326040	7326	 Buntao	\N
7326050	7326	 Rantebua	\N
7326060	7326	 Nanggala	\N
7326070	7326	 Tondon	\N
7326080	7326	 Tallunglipu	\N
7326090	7326	 Rantepao	\N
7326100	7326	 Tikala	\N
7326110	7326	 Sesean	\N
7326120	7326	 Balusu	\N
7326130	7326	 Sa'dan	\N
7326140	7326	 Bengkelekila	\N
7326150	7326	 Sesean Suloara	\N
7326160	7326	 Kapala Pitu	\N
7326170	7326	 Dende Piongan Napo	\N
7326180	7326	 Awan Rante Karua	\N
7326190	7326	 Rindingalo	\N
7326200	7326	 Buntu Pepasan	\N
7326210	7326	 Baruppu	\N
7371010	7371	 Mariso	\N
7371020	7371	 Mamajang	\N
7371030	7371	 Tamalate	\N
7371031	7371	 Rappocini	\N
7371040	7371	 Makassar	\N
7371050	7371	 Ujung Pandang	\N
7371060	7371	 Wajo	\N
7371070	7371	 Bontoala	\N
7371080	7371	 Ujung Tanah	\N
7371090	7371	 Tallo	\N
7371100	7371	 Panakkukang	\N
7371101	7371	 Manggala	\N
7371110	7371	 Biring Kanaya	\N
7371111	7371	 Tamalanrea	\N
7372010	7372	 Bacukiki	\N
7372011	7372	 Bacukiki Barat	\N
7372020	7372	 Ujung	\N
7372030	7372	 Soreang	\N
7373010	7373	 Wara Selatan	\N
7373011	7373	 Sendana	\N
7373020	7373	 Wara	\N
7373021	7373	 Wara Timur	\N
7373022	7373	 Mungkajang	\N
7373030	7373	 Wara Utara	\N
7373031	7373	 Bara	\N
7373040	7373	 Telluwanua	\N
7373041	7373	 Wara Barat	\N
7401050	7401	 Lasalimu	\N
7401051	7401	 Lasalimu Selatan	\N
7401052	7401	 Siontapina	\N
7401060	7401	 Pasar Wajo	\N
7401061	7401	 Wolowa	\N
7401062	7401	 Wabula	\N
7401070	7401	 Sampolawa	\N
7401071	7401	 Batu Atas	\N
7401072	7401	 Lapandewa	\N
7401080	7401	 Batauga	\N
7401081	7401	 Siompu	\N
7401082	7401	 Kadatua	\N
7401083	7401	 Siompu Barat	\N
7401110	7401	 Kapontori	\N
7401120	7401	 Gu	\N
7401121	7401	 Sangia Wambulu	\N
7401130	7401	 Lakudo	\N
7401140	7401	 Mawasangka	\N
7401141	7401	 Mawasangka Timur	\N
7401142	7401	 Mawasangka Tengah	\N
7401151	7401	 Talaga Raya	\N
7402010	7402	 Tongkuno	\N
7402011	7402	 Tongkuno Selatan	\N
7402020	7402	 Parigi	\N
7402021	7402	 Bone	\N
7402022	7402	 Marobo	\N
7402030	7402	 Kabawo	\N
7402031	7402	 Kabangka	\N
7402032	7402	 Kontukowuna	\N
7402040	7402	 Tiworo Kepulauan	\N
7402041	7402	 Maginti	\N
7402042	7402	 Tiworo Tengah	\N
7402043	7402	 Tiworo Selatan	\N
7402044	7402	 Tiworo Utara	\N
7402050	7402	 Lawa	\N
7402051	7402	 Sawerigadi	\N
7402052	7402	 Barangka	\N
7402053	7402	 Wa Daga	\N
7402060	7402	 Kusambi	\N
7402061	7402	 Kontunaga	\N
7402062	7402	 Watopute	\N
7402070	7402	 Katobu	\N
7402071	7402	 Lohia	\N
7402072	7402	 Duruka	\N
7402073	7402	 Batalaiworu	\N
7402080	7402	 Napabalano	\N
7402081	7402	 Lasalepa	\N
7402082	7402	 Napano Kusambi	\N
7402083	7402	 Towea	\N
7402090	7402	 Wakorumba Selatan	\N
7402091	7402	 Pasir Putih	\N
7402092	7402	 Pasi Kolaga	\N
7402111	7402	 Maligano	\N
7402112	7402	 Batukara	\N
7403071	7403	 Wawonii Selatan	\N
7403072	7403	 Wawonii Barat	\N
7403073	7403	 Wawonii Tengah	\N
7403074	7403	 Wawonii Tenggara	\N
7403081	7403	 Wawonii Timur	\N
7403082	7403	 Wawonii Utara	\N
7403083	7403	 Wawonii Timur Laut	\N
7403090	7403	 Soropia	\N
7403091	7403	 Lalonggasumeeto	\N
7403100	7403	 Sampara	\N
7403101	7403	 Bondoala	\N
7403102	7403	 Besulutu	\N
7403103	7403	 Kapoiala	\N
7403130	7403	 Lambuya	\N
7403131	7403	 Uepai	\N
7403132	7403	 Puriala	\N
7403133	7403	 Onembute	\N
7403140	7403	 Pondidaha	\N
7403141	7403	 Wonggeduku	\N
7403142	7403	 Amonggedo	\N
7403150	7403	 Wawotobi	\N
7403151	7403	 Meluhu	\N
7403152	7403	 Konawe	\N
7403170	7403	 Unaaha	\N
7403171	7403	 Anggaberi	\N
7403180	7403	 Abuki	\N
7403181	7403	 Latoma	\N
7403182	7403	 Tongauna	\N
7403183	7403	 Asinua	\N
7403193	7403	 Routa	\N
7404010	7404	 Watubangga	\N
7404011	7404	 Tanggetada	\N
7404012	7404	 Toari	\N
7404013	7404	 Polinggona	\N
7404020	7404	 Pomalaa	\N
7404030	7404	 Wundulako	\N
7404031	7404	 Baula	\N
7404040	7404	 Ladongi	\N
7404041	7404	 Lambandia	\N
7404042	7404	 Poli-polia	\N
7404043	7404	 Dangia	\N
7404044	7404	 Aere	\N
7404050	7404	 Tirawuta	\N
7404051	7404	 Lalolae	\N
7404052	7404	 Loea	\N
7404060	7404	 Kolaka	\N
7404061	7404	 Latambaga	\N
7404070	7404	 Wolo	\N
7404071	7404	 Samaturu	\N
7404072	7404	 Iwoimendaa	\N
7404080	7404	 Mowewe	\N
7404081	7404	 Uluiwoi	\N
7404082	7404	 Tinondo	\N
7404083	7404	 Ueesi	\N
7405010	7405	 Tinanggea	\N
7405011	7405	 Lalembuu	\N
7405020	7405	 Andoolo	\N
7405021	7405	 Buke	\N
7405030	7405	 Palangga	\N
7405031	7405	 Palangga Selatan	\N
7405032	7405	 Baito	\N
7405040	7405	 Lainea	\N
7405041	7405	 Laeya	\N
7405050	7405	 Kolono	\N
7405060	7405	 Laonti	\N
7405070	7405	 Moramo	\N
7405071	7405	 Moramo Utara	\N
7405080	7405	 Konda	\N
7405081	7405	 Wolasi	\N
7405090	7405	 Ranomeeto	\N
7405091	7405	 Ranomeeto Barat	\N
7405100	7405	 Landono	\N
7405101	7405	 Mowila	\N
7405110	7405	 Angata	\N
7405111	7405	 Benua	\N
7405112	7405	 Basala	\N
7406010	7406	 Kabaena	\N
7406011	7406	 Kabaena Utara	\N
7406012	7406	 Kabaena Selatan	\N
7406013	7406	 Kabaena Barat	\N
7406020	7406	 Kabaena Timur	\N
7406021	7406	 Kabaena Tengah	\N
7406030	7406	 Rumbia	\N
7406031	7406	 Mata Oleo	\N
7406032	7406	 Kep. Masaloka Raya	\N
7406033	7406	 Rumbia Tengah	\N
7406040	7406	 Rarowatu	\N
7406041	7406	 Rarowatu Utara	\N
7406042	7406	 Mata Usu	\N
7406043	7406	 Lantari Jaya	\N
7406050	7406	 Poleang Timur	\N
7406051	7406	 Poleang Utara	\N
7406052	7406	 Poleang Selatan	\N
7406053	7406	 Poleang Tenggara	\N
7406060	7406	 Poleang	\N
7406061	7406	 Poleang Barat	\N
7406062	7406	 Tontonunu	\N
7406063	7406	 Poleang Tengah	\N
7407010	7407	 Binongko	\N
7407011	7407	 Togo Binongko	\N
7407020	7407	 Tomia	\N
7407021	7407	 Tomia Timur	\N
7407030	7407	 Kaledupa	\N
7407031	7407	 Kaledupa Selatan	\N
7407040	7407	 Wangi-wangi	\N
7407050	7407	 Wangi-wangi Selatan	\N
7408010	7408	 Ranteangin	\N
7408011	7408	 Lambai	\N
7408012	7408	 Wawo	\N
7408020	7408	 Lasusua	\N
7408021	7408	 Katoi	\N
7408030	7408	 Kodeoha	\N
7408031	7408	 Tiwu	\N
7408040	7408	 Ngapa	\N
7408041	7408	 Watunohu	\N
7408050	7408	 Pakue	\N
7408051	7408	 Pakue Utara	\N
7408052	7408	 Pakue Tengah	\N
7408060	7408	 Batu Putih	\N
7408061	7408	 Porehu	\N
7408062	7408	 Tolala	\N
7409100	7409	 Bonegunu	\N
7409101	7409	 Kambowa	\N
7409110	7409	 Wakorumba	\N
7409120	7409	 Kulisusu	\N
7409121	7409	 Kulisusu Barat	\N
7409122	7409	 Kulisusu Utara	\N
7410010	7410	 Sawa	\N
7410011	7410	 Motui	\N
7410020	7410	 Lembo	\N
7410030	7410	 Lasolo	\N
7410040	7410	 Molawe	\N
7410050	7410	 Asera	\N
7410051	7410	 Andowia	\N
7410052	7410	 Oheo	\N
7410060	7410	 Langgikima	\N
7410070	7410	 Wiwirano	\N
7471010	7471	 Mandonga	\N
7471011	7471	 Baruga	\N
7471012	7471	 Puuwatu	\N
7471013	7471	 Kadia	\N
7471014	7471	 Wua-wua	\N
7471020	7471	 Poasia	\N
7471021	7471	 Abeli	\N
7471022	7471	 Kambu	\N
7471030	7471	 Kendari	\N
7471031	7471	 Kendari Barat	\N
7472010	7472	 Betoambari	\N
7472011	7472	 Murhum	\N
7472012	7472	 Batupoaro	\N
7472020	7472	 Wolio	\N
7472021	7472	 Kokalukuna	\N
7472030	7472	 Sorawolio	\N
7472040	7472	 Bungi	\N
7472041	7472	 Lea-lea	\N
7501031	7501	 Mananggu	\N
7501040	7501	 Tilamuta	\N
7501041	7501	 Dulupi	\N
7501042	7501	 Botumoito	\N
7501050	7501	 Paguyaman	\N
7501051	7501	 Wonosari	\N
7501052	7501	 Paguyaman Pantai	\N
7502010	7502	 Batudaa Pantai	\N
7502011	7502	 Biluhu	\N
7502020	7502	 Batudaa	\N
7502021	7502	 Bongomeme	\N
7502022	7502	 Tabongo	\N
7502023	7502	 Dungaliyo	\N
7502030	7502	 Tibawa	\N
7502031	7502	 Pulubala	\N
7502040	7502	 Boliyohuto	\N
7502041	7502	 Mootilango	\N
7502042	7502	 Tolangohula	\N
7502043	7502	 Asparaga	\N
7502044	7502	 Bilato	\N
7502070	7502	 Limboto	\N
7502071	7502	 Limboto Barat	\N
7502080	7502	 Telaga	\N
7502081	7502	 Telaga Biru	\N
7502082	7502	 Tilango	\N
7502083	7502	 Telaga Jaya	\N
7503010	7503	 Popayato	\N
7503011	7503	 Popayato Barat	\N
7503012	7503	 Popayato Timur	\N
7503020	7503	 Lemito	\N
7503021	7503	 Wanggarasi	\N
7503030	7503	 Marisa	\N
7503031	7503	 Patilanggio	\N
7503032	7503	 Buntulia	\N
7503033	7503	 Duhiadaa	\N
7503040	7503	 Randangan	\N
7503041	7503	 Taluditi	\N
7503050	7503	 Paguat	\N
7503051	7503	 Dengilo	\N
7504010	7504	 Tapa	\N
7504011	7504	 Bulango Utara	\N
7504012	7504	 Bulango Selatan	\N
7504013	7504	 Bulango Timur	\N
7504014	7504	 Bulango Ulu	\N
7504020	7504	 Kabila	\N
7504021	7504	 Botu Pingge	\N
7504022	7504	 Tilongkabila	\N
7504030	7504	 Suwawa	\N
7504031	7504	 Suwawa Selatan	\N
7504032	7504	 Suwawa Timur	\N
7504033	7504	 Suwawa Tengah	\N
7504034	7504	 Pinogu	\N
7504040	7504	 Bonepantai	\N
7504041	7504	 Kabila Bone	\N
7504042	7504	 Bone Raya	\N
7504043	7504	 Bone	\N
7504044	7504	 Bulawa	\N
7505010	7505	 Atinggola	\N
7505011	7505	 Gentuma Raya	\N
7505020	7505	 Kwandang	\N
7505021	7505	 Tomilito	\N
7505022	7505	 Ponelo Kepulauan	\N
7505030	7505	 Anggrek	\N
7505031	7505	 Monano	\N
7505040	7505	 Sumalata	\N
7505041	7505	 Sumalata Timur	\N
7505050	7505	 Tolinggula	\N
7505051	7505	 Biau	\N
7571010	7571	 Kota Barat	\N
7571011	7571	 Dungingi	\N
7571020	7571	 Kota Selatan	\N
7571021	7571	 Kota Timur	\N
7571022	7571	 Hulonthalangi	\N
7571023	7571	 Dumbo Raya	\N
7571030	7571	 Kota Utara	\N
7571031	7571	 Kota Tengah	\N
7571032	7571	 Sipatana	\N
7601010	7601	 Banggae	\N
7601011	7601	 Banggae Timur	\N
7601020	7601	 Pamboang	\N
7601030	7601	 Sendana	\N
7601031	7601	 Tammerodo	\N
7601033	7601	 Tubo Sendana	\N
7601040	7601	 Malunda	\N
7601041	7601	 Ulumanda	\N
7602010	7602	 Tinambung	\N
7602011	7602	 Balanipa	\N
7602012	7602	 Limboro	\N
7602020	7602	 Tubbi Taramanu	\N
7602021	7602	 Alu	\N
7602030	7602	 Campalagian	\N
7602031	7602	 Luyo	\N
7602040	7602	 Wonomulyo	\N
7602041	7602	 Mapilli	\N
7602042	7602	 Tapango	\N
7602043	7602	 Matakali	\N
7602044	7602	 B U L O	\N
7602050	7602	 Polewali	\N
7602051	7602	 Binuang	\N
7602052	7602	 Anreapi	\N
7602061	7602	 Matangnga	\N
7603010	7603	 Sumarorong	\N
7603020	7603	 Messawa	\N
7603030	7603	 Pana	\N
7603031	7603	 Nosu	\N
7603040	7603	 Tabang	\N
7603050	7603	 Mamasa	\N
7603060	7603	 Tanduk Kalua	\N
7603061	7603	 Balla	\N
7603070	7603	 Sesenapadang	\N
7603071	7603	 Tawalian	\N
7603080	7603	 Mambi	\N
7603081	7603	 Bambang	\N
7603082	7603	 Rantebulahan Timur	\N
7603083	7603	 Mehalaan	\N
7603090	7603	 Aralle	\N
7603091	7603	 Buntu Malangka	\N
7603100	7603	 Tabulahan	\N
7604010	7604	 Tapalang	\N
7604011	7604	 Tapalang Barat	\N
7604020	7604	 Mamuju	\N
7604022	7604	 Simboro	\N
7604023	7604	 Balabalakang	\N
7604030	7604	 Kalukku	\N
7604031	7604	 Papalang	\N
7604032	7604	 Sampaga	\N
7604033	7604	 Tommo	\N
7604040	7604	 Kalumpang	\N
7604041	7604	 Bonehau	\N
7604050	7604	 Budong-budong	\N
7604051	7604	 Pangale	\N
7604052	7604	 Topoyo	\N
7604053	7604	 Karossa	\N
7604054	7604	 Tobadak	\N
7605010	7605	 Sarudu	\N
7605011	7605	 Dapurang	\N
7605012	7605	 Duripoku	\N
7605020	7605	 Baras	\N
7605021	7605	 Bulu Taba	\N
7605022	7605	 Lariang	\N
7605030	7605	 Pasangkayu	\N
7605031	7605	 Tikke Raya	\N
7605032	7605	 Pedongga	\N
7605040	7605	 Bambalamotu	\N
7605041	7605	 Bambaira	\N
7605042	7605	 Sarjo	\N
8101040	8101	 Tanimbar Selatan	\N
8101041	8101	 Wer Tamrian	\N
8101042	8101	 Wer Maktian	\N
8101043	8101	 Selaru	\N
8101050	8101	 Tanimbar Utara	\N
8101051	8101	 Yaru	\N
8101052	8101	 Wuar Labobar	\N
8101053	8101	 Nirunmas	\N
8101054	8101	 Kormomolin	\N
8101055	8101	 Molu Maru	\N
8102010	8102	 Kei Kecil	\N
8102012	8102	 Kei Kecil Barat	\N
8102013	8102	 Kei Kecil Timur	\N
8102020	8102	 Kei Besar	\N
8102021	8102	 Kei Besar Utara Timur	\N
8102022	8102	 Kei Besar Selatan	\N
8103010	8103	 Banda	\N
8103040	8103	 Tehoru	\N
8103041	8103	 Telutih	\N
8103050	8103	 Amahai	\N
8103051	8103	 Kota Masohi	\N
8103052	8103	 Teluk Elpaputih	\N
8103060	8103	 Teon Nila Serua	\N
8103080	8103	 Saparua	\N
8103081	8103	 Nusalaut	\N
8103090	8103	 P. Haruku	\N
8103100	8103	 Salahutu	\N
8103110	8103	 Leihitu	\N
8103111	8103	 Leihitu Barat	\N
8103140	8103	 Seram Utara	\N
8103141	8103	 Seram Utara Barat	\N
8103142	8103	 Seram Utara Timur Kobi	\N
8103143	8103	 Seram Utara Timur Seti	\N
8104020	8104	 Namlea	\N
8104021	8104	 Waeapo	\N
8104022	8104	 Waplau	\N
8104023	8104	 Bata Bual	\N
8104024	8104	 Teluk Kaiely	\N
8104025	8104	 Waelata	\N
8104026	8104	 Lolong Guba	\N
8104027	8104	 Lilialy	\N
8104030	8104	 Air Buaya	\N
8104031	8104	 Fena Leisela	\N
8105010	8105	 Aru Selatan	\N
8105011	8105	 Aru Selatan Timur	\N
8105020	8105	 Aru Tengah	\N
8105021	8105	 Aru Tengah Timur	\N
8105022	8105	 Aru Tengah Selatan	\N
8105030	8105	 Pulau-pulau Aru	\N
8105031	8105	 Aru Utara	\N
8106010	8106	 Huamual Belakang	\N
8106011	8106	 Kepulauan Manipa	\N
8106020	8106	 Seram Barat	\N
8106021	8106	 Huamual	\N
8106030	8106	 Kairatu	\N
8106031	8106	 Kairatu Barat	\N
8106032	8106	 Inamosol	\N
8106033	8106	 Amalatu	\N
8106034	8106	 Elpaputih	\N
8106040	8106	 Taniwel	\N
8106041	8106	 Taniwel Timur	\N
8107010	8107	 Pulau Gorom	\N
8107011	8107	 Wakate	\N
8107012	8107	 Teor	\N
8107013	8107	 Gorom Timur	\N
8107014	8107	 Pulau Panjang	\N
8107020	8107	 Seram Timur	\N
8107021	8107	 Tutuk Tolu	\N
8107022	8107	 Kilmury	\N
8107030	8107	 Werinama	\N
8107031	8107	 Siwalalat	\N
8107040	8107	 Bula	\N
8107041	8107	 Bula Barat	\N
8108010	8108	 Pp. Wetar	\N
8108020	8108	 Pp. Terselatan	\N
8108030	8108	 Leti Moa Lakor	\N
8108040	8108	 Moa Lakor	\N
8108050	8108	 Damer	\N
8108060	8108	 Mdona Hiera	\N
8108070	8108	 Pp. Babar	\N
8108080	8108	 Babar Timur	\N
8109010	8109	 Kepala Madan	\N
8109020	8109	 Leksula	\N
8109030	8109	 Namrole	\N
8109040	8109	 Waisama	\N
8109050	8109	 Ambalau	\N
8171010	8171	 Nusaniwe	\N
8171020	8171	 Sirimau	\N
8171021	8171	 Leitimur Selatan	\N
8171030	8171	 Teluk Ambon Baguala	\N
8171031	8171	 Teluk Ambon	\N
8172010	8172	 Pp. Kur	\N
8172020	8172	 Tayando Tam	\N
8172030	8172	 Pulau Dullah Utara	\N
8172040	8172	 Pulau Dullah Selatan	\N
8201090	8201	 Jailolo	\N
8201091	8201	 Jailolo Selatan	\N
8201100	8201	 Sahu	\N
8201101	8201	 Sahu Timur	\N
8201130	8201	 Ibu	\N
8201131	8201	 Ibu Selatan	\N
8201132	8201	 Ibu Utara	\N
8201140	8201	 Loloda	\N
8202030	8202	 Weda	\N
8202031	8202	 Weda Selatan	\N
8202032	8202	 Weda Utara	\N
8202033	8202	 Weda Tengah	\N
8202041	8202	 Pulau Gebe	\N
8202042	8202	 Patani	\N
8202043	8202	 Patani Utara	\N
8202044	8202	 Patani Barat	\N
8203010	8203	 Sula Besi Barat	\N
8203011	8203	 Sulabesi Selatan	\N
8203020	8203	 Sanana	\N
8203021	8203	 Sula Besi Tengah	\N
8203022	8203	 Sulabesi Timur	\N
8203023	8203	 Sanana Utara	\N
8203030	8203	 Mangoli Timur	\N
8203031	8203	 Mangoli Tengah	\N
8203032	8203	 Mangoli Utara Timur	\N
8203040	8203	 Mangoli Barat	\N
8203041	8203	 Mangoli Utara	\N
8203042	8203	 Mangoli Selatan	\N
8203050	8203	 Taliabu Timur	\N
8203051	8203	 Taliabu Timur Selatan	\N
8203060	8203	 Taliabu Barat	\N
8203061	8203	 Taliabu Utara	\N
8203062	8203	 Taliabu Barat Laut	\N
8203063	8203	 Lede	\N
8203064	8203	 Taliabu Selatan	\N
8204010	8204	 Obi Selatan	\N
8204020	8204	 Obi	\N
8204021	8204	 Obi Barat	\N
8204022	8204	 Obi Timur	\N
8204023	8204	 Obi Utara	\N
8204030	8204	 Bacan	\N
8204031	8204	 Mandioli Selatan	\N
8204032	8204	 Mandioli Utara	\N
8204033	8204	 Bacan Selatan	\N
8204034	8204	 Batang Lomang	\N
8204040	8204	 Bacan Timur	\N
8204041	8204	 Bacan Timur Selatan	\N
8204042	8204	 Bacan Timur Tengah	\N
8204050	8204	 Bacan Barat	\N
8204051	8204	 Kasiruta Barat	\N
8204052	8204	 Kasiruta Timur	\N
8204053	8204	 Bacan Barat Utara	\N
8204060	8204	 Kayoa	\N
8204061	8204	 Kayoa Barat	\N
8204062	8204	 Kayoa Selatan	\N
8204063	8204	 Kayoa Utara	\N
8204070	8204	 Pulau Makian	\N
8204071	8204	 Makian Barat	\N
8204080	8204	 Gane Barat	\N
8204081	8204	 Gane Barat Selatan	\N
8204082	8204	 Gane Barat Utara	\N
8204083	8204	 Kepulauan Joronga	\N
8204090	8204	 Gane Timur	\N
8204091	8204	 Gane Timur Tengah	\N
8204092	8204	 Gane Timur Selatan	\N
8205010	8205	 Malifut	\N
8205011	8205	 Kao Teluk	\N
8205020	8205	 Kao	\N
8205021	8205	 Kao Barat	\N
8205022	8205	 Kao Utara	\N
8205030	8205	 Tobelo Selatan	\N
8205031	8205	 Tobelo Barat	\N
8205032	8205	 Tobelo Timur	\N
8205040	8205	 Tobelo	\N
8205041	8205	 Tobelo Tengah	\N
8205042	8205	 Tobelo Utara	\N
8205050	8205	 Galela	\N
8205051	8205	 Galela Selatan	\N
8205052	8205	 Galela Barat	\N
8205053	8205	 Galela Utara	\N
8205060	8205	 Loloda Utara	\N
8205061	8205	 Loloda Kepulauan	\N
8206010	8206	 Maba Selatan	\N
8206011	8206	 Kota Maba	\N
8206020	8206	 Wasile Selatan	\N
8206030	8206	 Wasile	\N
8206031	8206	 Wasile Timur	\N
8206032	8206	 Wasile Tengah	\N
8206033	8206	 Wasile Utara	\N
8206040	8206	 Maba	\N
8206041	8206	 Maba Tengah	\N
8206042	8206	 Maba Utara	\N
8207010	8207	 Morotai Selatan	\N
8207020	8207	 Morotai Timur	\N
8207030	8207	 Morotai Selatan Barat	\N
8207040	8207	 Morotai Jaya	\N
8207050	8207	 Morotai Utara	\N
8271010	8271	 Pulau Ternate	\N
8271011	8271	 Moti	\N
8271012	8271	 Pulau Batang Dua	\N
8271013	8271	 Pulau Hiri	\N
8271020	8271	 Ternate Selatan	\N
8271021	8271	 Ternate Tengah	\N
8271030	8271	 Ternate Utara	\N
8272010	8272	 Tidore Selatan	\N
8272020	8272	 Tidore Utara	\N
8272030	8272	 Tidore	\N
8272031	8272	 Tidore Timur	\N
8272040	8272	 Oba	\N
8272041	8272	 Oba Selatan	\N
8272050	8272	 Oba Utara	\N
8272051	8272	 Oba Tengah	\N
9101050	9101	 Fakfak Timur	\N
9101051	9101	 Karas	\N
9101060	9101	 Fakfak	\N
9101061	9101	 Fakfak Tengah	\N
9101070	9101	 Fakfak Barat	\N
9101080	9101	 Kokas	\N
9101081	9101	 Teluk Patipi	\N
9101082	9101	 Kramongmongga	\N
9101083	9101	 Bomberay	\N
9102010	9102	 Buruway	\N
9102020	9102	 Teluk Arguni	\N
9102021	9102	 Teluk Arguni Bawah	\N
9102030	9102	 Kaimana	\N
9102031	9102	 Kambrau	\N
9102040	9102	 Teluk Etna	\N
9102041	9102	 Yamor	\N
9103010	9103	 Naikere	\N
9103020	9103	 Wondiboy	\N
9103021	9103	 Rasiey	\N
9103022	9103	 Kuri Wamesa	\N
9103030	9103	 Wasior	\N
9103040	9103	 Duairi	\N
9103041	9103	 Roon	\N
9103050	9103	 Windesi	\N
9103051	9103	 Nikiwar	\N
9103060	9103	 Wamesa	\N
9103061	9103	 Roswar	\N
9103070	9103	 Rumberpon	\N
9103071	9103	 Soug Jaya	\N
9104010	9104	 Fafurwar	\N
9104020	9104	 Babo	\N
9104021	9104	 Sumuri	\N
9104022	9104	 Aroba	\N
9104023	9104	 Kaitaro	\N
9104030	9104	 Kuri	\N
9104040	9104	 Wamesa	\N
9104050	9104	 Bintuni	\N
9104051	9104	 Manimeri	\N
9104052	9104	 Tuhiba	\N
9104053	9104	 Dataran Beimes	\N
9104060	9104	 Tembuni	\N
9104070	9104	 Aranday	\N
9104071	9104	 Kamundan	\N
9104072	9104	 Tomu	\N
9104073	9104	 Weriagar	\N
9104080	9104	 Moskona Selatan	\N
9104081	9104	 Meyado	\N
9104082	9104	 Moskona Barat	\N
9104090	9104	 Merdey	\N
9104091	9104	 Biscoop	\N
9104092	9104	 Masyeta	\N
9104100	9104	 Moskona Utara	\N
9104101	9104	 Moskona Timur	\N
9105040	9105	 Ransiki	\N
9105041	9105	 Momi Waren	\N
9105042	9105	 Nenei	\N
9105080	9105	 Sururey	\N
9105090	9105	 Anggi	\N
9105091	9105	 Taige	\N
9105092	9105	 Membey	\N
9105100	9105	 Oransbari	\N
9105110	9105	 Warmare	\N
9105120	9105	 Prafi	\N
9105130	9105	 Menyambouw	\N
9105131	9105	 Catubouw	\N
9105141	9105	 Manokwari Barat	\N
9105142	9105	 Manokwari Timur	\N
9105143	9105	 Manokwari Utara	\N
9105144	9105	 Manokwari Selatan	\N
9105145	9105	 Testega	\N
9105146	9105	 Tanah Rubu	\N
9105150	9105	 Kebar	\N
9105151	9105	 Senopi	\N
9105160	9105	 Amberbaken	\N
9105161	9105	 Mubarni / Arfu	\N
9105170	9105	 Masni	\N
9105171	9105	 Sidey	\N
9105180	9105	 Tahosta	\N
9105190	9105	 Didohu	\N
9105200	9105	 Dataran Isim	\N
9105210	9105	 Anggi Gida	\N
9105220	9105	 Hingk	\N
9106010	9106	 Inanwatan	\N
9106011	9106	 Metemani	\N
9106020	9106	 Kokoda	\N
9106021	9106	 Kais	\N
9106022	9106	 Kokoda Utara	\N
9106060	9106	 Moswaren	\N
9106070	9106	 Teminabuan	\N
9106071	9106	 Seremuk	\N
9106072	9106	 Wayer	\N
9106073	9106	 Konda	\N
9106074	9106	 Saifi	\N
9106080	9106	 Sawiat	\N
9106081	9106	 Fokour	\N
9107060	9107	 Moraid	\N
9107061	9107	 Klaso	\N
9107100	9107	 Makbon	\N
9107101	9107	 Klayili	\N
9107110	9107	 Beraur	\N
9107111	9107	 Klamono	\N
9107112	9107	 Klabot	\N
9107113	9107	 Klawak	\N
9107120	9107	 Salawati	\N
9107121	9107	 Mayamuk	\N
9107122	9107	 Salawati Timur	\N
9107130	9107	 Seget	\N
9107131	9107	 Segun	\N
9107132	9107	 Salawati Selatan	\N
9107170	9107	 Aimas	\N
9107171	9107	 Mariat	\N
9107172	9107	 Sorong	\N
9107180	9107	 Sayosa	\N
9107181	9107	 Maudus	\N
9108011	9108	 Misool Selatan	\N
9108012	9108	 Misool Barat	\N
9108020	9108	 Misool	\N
9108021	9108	 Kofiau	\N
9108022	9108	 Misool Timur	\N
9108023	9108	 Kepulauan Sembilan	\N
9108031	9108	 Salawati Utara	\N
9108033	9108	 Salawati Tengah	\N
9108034	9108	 Salawati Barat	\N
9108035	9108	 Batanta Selatan	\N
9108036	9108	 Batanta Utara	\N
9108040	9108	 Waigeo Selatan	\N
9108041	9108	 Teluk Mayalibit	\N
9108042	9108	 Meos Mansar	\N
9108043	9108	 Kota Waisai	\N
9108044	9108	 Tiplol Mayalibit	\N
9108050	9108	 Waigeo Barat	\N
9108051	9108	 Waigeo Barat Kepulauan	\N
9108060	9108	 Waigeo Utara	\N
9108061	9108	 Warwarbomi	\N
9108062	9108	 Supnin	\N
9108070	9108	 Kepulauan Ayau	\N
9108071	9108	 Ayau	\N
9108080	9108	 Waigeo Timur	\N
9109010	9109	 Fef	\N
9109011	9109	 Syujak	\N
9109020	9109	 Miyah	\N
9109030	9109	 Abun	\N
9109040	9109	 Kwoor	\N
9109050	9109	 Sausapor	\N
9109060	9109	 Yembun	\N
9110010	9110	 Aitinyo Barat/athabu	\N
9110011	9110	 Ayamaru Selatan Jaya	\N
9110020	9110	 Aitinyo	\N
9110021	9110	 Aitinyo Tengah	\N
9110030	9110	 Aifat Selatan	\N
9110031	9110	 Aifat Timur Selatan	\N
9110040	9110	 Aifat	\N
9110050	9110	 Aitinyo Utara	\N
9110051	9110	 Aitinyo Raya	\N
9110060	9110	 Ayamaru Timur	\N
9110061	9110	 Ayamaru Timur Selatan	\N
9110070	9110	 Ayamaru	\N
9110071	9110	 Ayamaru Selatan	\N
9110072	9110	 Ayamaru Jaya	\N
9110073	9110	 Ayamaru Tengah	\N
9110074	9110	 Ayamaru Barat	\N
9110080	9110	 Ayamaru Utara	\N
9110081	9110	 Ayamaru Utara Timur	\N
9110090	9110	 Mare	\N
9110091	9110	 Mare Selatan	\N
9110100	9110	 Aifat Utara	\N
9110110	9110	 Aifat Timur	\N
9110111	9110	 Aifat Timur Tengah	\N
9110112	9110	 Aifat Timur Jauh	\N
9171010	9171	 Sorong Barat	\N
9171011	9171	 Sorong Kepulauan	\N
9171020	9171	 Sorong Timur	\N
9171021	9171	 Sorong Utara	\N
9171022	9171	 Sorong	\N
9171023	9171	 Sorong Manoi	\N
9401010	9401	 Kimaam	\N
9401011	9401	 Waan	\N
9401012	9401	 Tabonji	\N
9401013	9401	 Ilwayab	\N
9401020	9401	 Okaba	\N
9401021	9401	 Tubang	\N
9401022	9401	 Ngguti	\N
9401023	9401	 Kaptel	\N
9401030	9401	 Kurik	\N
9401031	9401	 Malind	\N
9401032	9401	 Animha	\N
9401040	9401	 Merauke	\N
9401041	9401	 Semangga	\N
9401042	9401	 Tanah Miring	\N
9401043	9401	 Jagebob	\N
9401044	9401	 Sota	\N
9401045	9401	 Naukenjerai	\N
9401050	9401	 Muting	\N
9401051	9401	 Eligobel	\N
9401052	9401	 Ulilin	\N
9402110	9402	 Wamena	\N
9402111	9402	 Asolokobal	\N
9402112	9402	 Walelagama	\N
9402120	9402	 Hubikosi	\N
9402121	9402	 Pelebaga	\N
9402180	9402	 Asologaima	\N
9402181	9402	 Musatfak	\N
9402190	9402	 Kurulu	\N
9402220	9402	 Bolakme	\N
9402221	9402	 Wollo	\N
9402222	9402	 Yalengga	\N
9403080	9403	 Kaureh	\N
9403081	9403	 Airu	\N
9403082	9403	 Yapsi	\N
9403140	9403	 Kemtuk	\N
9403150	9403	 Kemtuk Gresi	\N
9403151	9403	 Gresi Selatan	\N
9403160	9403	 Nimboran	\N
9403161	9403	 Nimboran Timur / Namblong	\N
9403170	9403	 Nimbokrang	\N
9403180	9403	 Unurum Guay	\N
9403200	9403	 Demta	\N
9403201	9403	 Yokari	\N
9403210	9403	 Depapre	\N
9403211	9403	 Ravenirara	\N
9403220	9403	 Sentani Barat	\N
9403221	9403	 Waibu	\N
9403230	9403	 Sentani	\N
9403231	9403	 Ebungfau	\N
9403240	9403	 Sentani Timur	\N
9404050	9404	 Uwapa	\N
9404051	9404	 Menou	\N
9404052	9404	 Dipa	\N
9404060	9404	 Yaur	\N
9404061	9404	 Teluk Umar	\N
9404070	9404	 Wanggar	\N
9404071	9404	 Nabire Barat	\N
9404080	9404	 Nabire	\N
9404081	9404	 Teluk Kimi	\N
9404090	9404	 Napan	\N
9404091	9404	 Makimi	\N
9404092	9404	 Wapoga	\N
9404100	9404	 Siriwo	\N
9404110	9404	 Yaro	\N
9408040	9408	 Yapen Timur	\N
9408041	9408	 Pantura Yapen	\N
9408042	9408	 Teluk Ampimoi	\N
9408043	9408	 Raimbawi	\N
9408044	9408	 Pulau Kurudu	\N
9408050	9408	 Angkaisera	\N
9408051	9408	 Kep. Ambai	\N
9408060	9408	 Yapen Selatan	\N
9408061	9408	 Kosiwo	\N
9408070	9408	 Yapen Barat	\N
9408071	9408	 Wonawa	\N
9408072	9408	 Pulau Yerui	\N
9408080	9408	 Poom	\N
9408081	9408	 Windesi	\N
9409010	9409	 Numfor Barat	\N
9409011	9409	 Orkeri	\N
9409020	9409	 Numfor Timur	\N
9409021	9409	 Bruyadori	\N
9409022	9409	 Poiru	\N
9409030	9409	 Padaido	\N
9409031	9409	 Aimando Padaido	\N
9409040	9409	 Biak Timur	\N
9409041	9409	 Oridek	\N
9409050	9409	 Biak Kota	\N
9409060	9409	 Samofa	\N
9409070	9409	 Yendidori	\N
9409080	9409	 Biak Utara	\N
9409081	9409	 Andey	\N
9409090	9409	 Warsa	\N
9409091	9409	 Yawosi	\N
9409092	9409	 Bondifuar	\N
9409100	9409	 Biak Barat	\N
9409101	9409	 Swandiwe	\N
9410030	9410	 Paniai Timur	\N
9410031	9410	 Yatamo	\N
9410032	9410	 Kebo	\N
9410040	9410	 Bibida	\N
9410041	9410	 Dumadama	\N
9410070	9410	 Aradide	\N
9410071	9410	 Ekadide	\N
9410080	9410	 Paniai Barat	\N
9410081	9410	 Siriwo	\N
9410090	9410	 Bogobaida	\N
9411040	9411	 Fawi	\N
9411050	9411	 Mulia	\N
9411051	9411	 Mewoluk	\N
9411052	9411	 Yamo	\N
9411060	9411	 Ilu	\N
9411061	9411	 Torere	\N
9411062	9411	 Jigonikme	\N
9411070	9411	 Tingginambut	\N
9412010	9412	 Mimika Barat	\N
9412011	9412	 Mimika Barat Jauh	\N
9412012	9412	 Mimika Barat Tengah	\N
9412020	9412	 Mimika Timur	\N
9412021	9412	 Mimika Tengah	\N
9412022	9412	 Mimika Timur Jauh	\N
9412030	9412	 Mimika Baru	\N
9412031	9412	 Kuala Kencana	\N
9412032	9412	 Tembagapura	\N
9412040	9412	 Agimuga	\N
9412041	9412	 Jila	\N
9412042	9412	 Jita	\N
9413010	9413	 Jair	\N
9413011	9413	 Subur	\N
9413013	9413	 Kia	\N
9413020	9413	 Mindiptana	\N
9413021	9413	 Iniyandit	\N
9413022	9413	 Kombut	\N
9413023	9413	 Sesnuk	\N
9413030	9413	 Mandobo	\N
9413031	9413	 Fofi	\N
9413032	9413	 Arimop	\N
9413040	9413	 Kouh	\N
9413041	9413	 Bomakia	\N
9413042	9413	 Firiwage	\N
9413043	9413	 Manggelum	\N
9413044	9413	 Yaniruma	\N
9413045	9413	 Kawagit	\N
9413046	9413	 Kombay	\N
9413050	9413	 Waropko	\N
9413051	9413	 Ambatkwi	\N
9413052	9413	 Ninati	\N
9414010	9414	 Nambioman Bapai	\N
9414011	9414	 Minyamur	\N
9414020	9414	 Edera	\N
9414021	9414	 Venaha	\N
9414030	9414	 Obaa	\N
9414031	9414	 Passue	\N
9414040	9414	 Haju	\N
9414050	9414	 Assue	\N
9414060	9414	 Citakmitak	\N
9414061	9414	 Kaibar	\N
9415010	9415	 Pantai Kasuari	\N
9415020	9415	 Fayit	\N
9415030	9415	 Atsy	\N
9415040	9415	 Suator	\N
9415041	9415	 Kolf Braza	\N
9415050	9415	 Akat	\N
9415060	9415	 Agats	\N
9415070	9415	 Sawa Erma	\N
9415071	9415	 Suru-suru	\N
9415072	9415	 Unir Sirau	\N
9416010	9416	 Kurima	\N
9416011	9416	 Musaik	\N
9416013	9416	 Dekai	\N
9416014	9416	 Obio	\N
9416015	9416	 Pasema	\N
9416016	9416	 Amuma	\N
9416017	9416	 Suru-suru	\N
9416018	9416	 Wusama	\N
9416019	9416	 Silimo	\N
9416020	9416	 Ninia	\N
9416021	9416	 Holuwon	\N
9416022	9416	 Lolat	\N
9416023	9416	 Langda	\N
9416024	9416	 Bomela	\N
9416025	9416	 Suntamon	\N
9416026	9416	 Sobaham	\N
9416027	9416	 Korupun	\N
9416028	9416	 Sela	\N
9416029	9416	 Kwelamdua	\N
9416030	9416	 Anggruk	\N
9416031	9416	 Panggema	\N
9416032	9416	 Walma	\N
9416033	9416	 Kosarek	\N
9416034	9416	 Ubahak	\N
9416035	9416	 Nalca	\N
9416036	9416	 Puldama	\N
9416037	9416	 Nipsan	\N
9416041	9416	 Samenage	\N
9416042	9416	 Tangma	\N
9416043	9416	 Soba	\N
9416044	9416	 Mugi	\N
9416045	9416	 Yogosem	\N
9416046	9416	 Kayo	\N
9416047	9416	 Sumo	\N
9416048	9416	 Hogio	\N
9416049	9416	 Ukha	\N
9416051	9416	 Werima	\N
9416052	9416	 Soloikma	\N
9416053	9416	 Seradala	\N
9416054	9416	 Kabianggama	\N
9416055	9416	 Kwikma	\N
9416056	9416	 Hilipuk	\N
9416057	9416	 Yahuliambut	\N
9416058	9416	 Hereapini	\N
9416059	9416	 Ubalihi	\N
9416061	9416	 Talambo	\N
9416062	9416	 Pronggoli	\N
9416063	9416	 Endomen	\N
9416065	9416	 Kona	\N
9416066	9416	 Duram	\N
9416067	9416	 Dirwemna	\N
9417010	9417	 Iwur	\N
9417011	9417	 Kawor	\N
9417012	9417	 Tarup	\N
9417013	9417	 Awinbon	\N
9417020	9417	 Oksibil	\N
9417021	9417	 Pepera	\N
9417022	9417	 Alemsom	\N
9417023	9417	 Serambakon	\N
9417024	9417	 Kolomdol	\N
9417025	9417	 Oksop	\N
9417026	9417	 Ok Bape	\N
9417027	9417	 Ok Aon	\N
9417030	9417	 Borme	\N
9417031	9417	 Bime	\N
9417032	9417	 Epumek	\N
9417033	9417	 Weime	\N
9417034	9417	 Pamek	\N
9417035	9417	 Nongme	\N
9417036	9417	 Batani	\N
9417040	9417	 Okbi	\N
9417041	9417	 Aboy	\N
9417042	9417	 Okbab	\N
9417043	9417	 Teiraplu	\N
9417044	9417	 Yefta	\N
9417050	9417	 Kiwirok	\N
9417051	9417	 Kiwirok Timur	\N
9417052	9417	 Oksebang	\N
9417053	9417	 Okhika	\N
9417054	9417	 Oklip	\N
9417055	9417	 Oksamol	\N
9417056	9417	 Okbemta	\N
9417060	9417	 Batom	\N
9417061	9417	 Murkim	\N
9417062	9417	 Mofinop	\N
9418010	9418	 Kanggime	\N
9418011	9418	 Woniki	\N
9418012	9418	 Nabunage	\N
9418013	9418	 Gilubandu	\N
9418014	9418	 Wakuo	\N
9418020	9418	 Karubaga	\N
9418021	9418	 Goyage	\N
9418022	9418	 Wunin	\N
9418023	9418	 Kondaga	\N
9418024	9418	 Nelawi	\N
9418025	9418	 Kuari	\N
9418030	9418	 Bokondini	\N
9418031	9418	 Bokoneri	\N
9418032	9418	 Bewani	\N
9418040	9418	 Kembu	\N
9418041	9418	 Wina	\N
9418042	9418	 Umagi	\N
9418043	9418	 Panaga	\N
9418044	9418	 Poganeri	\N
9418045	9418	 Kamboneri	\N
9418046	9418	 Air Garam	\N
9418047	9418	 Dow	\N
9418048	9418	 Wari / Taiyeve	\N
9418049	9418	 Egiam	\N
9418051	9418	 Nunggawi	\N
9418060	9418	 Kubu	\N
9418070	9418	 Geya	\N
9418080	9418	 Numba	\N
9418090	9418	 Dundu	\N
9418100	9418	 Gundagi	\N
9418110	9418	 Timori	\N
9418121	9418	 Yuneri	\N
9418122	9418	 Tagineri	\N
9418123	9418	 Dorman	\N
9418124	9418	 Sbey	\N
9419021	9419	 Pantai Timur Bagian Barat	\N
9419022	9419	 Pantai Timur	\N
9419031	9419	 Bonggo	\N
9419032	9419	 Bonggo Timur	\N
9419040	9419	 Tor Atas	\N
9419050	9419	 Sarmi	\N
9419051	9419	 Sarmi Timur	\N
9419052	9419	 Sarmi Selatan	\N
9419060	9419	 Pantai Barat	\N
9419061	9419	 Apawer Hulu	\N
9420010	9420	 Web	\N
9420011	9420	 Towe Hitam	\N
9420020	9420	 Senggi	\N
9420030	9420	 Waris	\N
9420040	9420	 Arso	\N
9420041	9420	 Arso Timur	\N
9420050	9420	 Skanto	\N
9426010	9426	 Waropen Bawah	\N
9426011	9426	 Inggerus	\N
9426012	9426	 Urei Faisei	\N
9426013	9426	 Oudate	\N
9426014	9426	 Wapoga	\N
9426020	9426	 Masirei	\N
9426021	9426	 Risei Sayati	\N
9426022	9426	 Demba	\N
9426030	9426	 Walani	\N
9426040	9426	 Kirihi	\N
9427010	9427	 Supiori Selatan	\N
9427011	9427	 Kepulauan Aruri	\N
9427020	9427	 Supiori Utara	\N
9427021	9427	 Supiori Barat	\N
9427030	9427	 Supiori Timur	\N
9428030	9428	 Waropen Atas	\N
9428031	9428	 Benuki	\N
9428032	9428	 Sawai	\N
9428040	9428	 Mamberamo Ilir	\N
9428050	9428	 Mamberamo Tengah	\N
9428060	9428	 Mamberamo Tengah Timur	\N
9428070	9428	 Rofaer	\N
9428080	9428	 Mamberamo Ulu	\N
9429010	9429	 Wosak	\N
9429020	9429	 Kenyam	\N
9429030	9429	 Geselma	\N
9429040	9429	 Mapenduma	\N
9429050	9429	 Mugi	\N
9429060	9429	 Yigi	\N
9429070	9429	 Mbuwa	\N
9429080	9429	 Gearek	\N
9430010	9430	 Makki	\N
9430020	9430	 Pirime	\N
9430030	9430	 Tiom	\N
9430040	9430	 Balingga	\N
9430050	9430	 Kuyawage	\N
9430060	9430	 Malagaineri	\N
9430070	9430	 Tiomneri	\N
9430080	9430	 Dimba	\N
9430090	9430	 Gamelia	\N
9430100	9430	 Poga	\N
9431010	9431	 Kobakma	\N
9431020	9431	 Ilugwa	\N
9431030	9431	 Kelila	\N
9431040	9431	 Eragayam	\N
9431050	9431	 Megambilis	\N
9432010	9432	 Welarek	\N
9432020	9432	 Apalapsili	\N
9432030	9432	 Abenaho	\N
9432040	9432	 Elelim	\N
9432050	9432	 Benawa	\N
9433010	9433	 Agadugume	\N
9433020	9433	 Gome	\N
9433030	9433	 Ilaga	\N
9433040	9433	 Sinak	\N
9433050	9433	 Pogoma	\N
9433060	9433	 Wangbe	\N
9433070	9433	 Beoga	\N
9433080	9433	 Doufo	\N
9434010	9434	 Sukikai Selatan	\N
9434020	9434	 Piyaiye	\N
9434030	9434	 Mapia Barat	\N
9434040	9434	 Mapia Tengah	\N
9434050	9434	 Mapia	\N
9434060	9434	 Dogiyai	\N
9434070	9434	 Kamu Selatan	\N
9434080	9434	 Kamu	\N
9434090	9434	 Kamu Timur	\N
9434100	9434	 Kamu Utara	\N
9435010	9435	 Homeyo	\N
9435020	9435	 Sugapa	\N
9435030	9435	 Hitadipa	\N
9435040	9435	 Agisiga	\N
9435050	9435	 Biandoga	\N
9435060	9435	 Wandai	\N
9436010	9436	 Kapiraya	\N
9436020	9436	 Tigi Barat	\N
9436030	9436	 Tigi	\N
9436040	9436	 Tigi Timur	\N
9436050	9436	 Bowobado	\N
9471010	9471	 Muara Tami	\N
9471020	9471	 Abepura	\N
9471021	9471	 Heram	\N
9471030	9471	 Jayapura Selatan	\N
9471040	9471	 Jayapura Utara	\N
\.


--
-- Data for Name: wilayah_provinsi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wilayah_provinsi (id, nama, status) FROM stdin;
11	Aceh	\N
12	Sumatera Utara	\N
13	Sumatera Barat	\N
14	Riau	\N
15	Jambi	\N
16	Sumatera Selatan	\N
17	Bengkulu	\N
18	Lampung	\N
19	Kepulauan Bangka Belitung	\N
21	Kepulauan Riau	\N
31	Dki Jakarta	\N
32	Jawa Barat	\N
33	Jawa Tengah	\N
34	Di Yogyakarta	\N
35	Jawa Timur	\N
36	Banten	\N
51	Bali	\N
52	Nusa Tenggara Barat	\N
53	Nusa Tenggara Timur	\N
61	Kalimantan Barat	\N
62	Kalimantan Tengah	\N
63	Kalimantan Selatan	\N
64	Kalimantan Timur	\N
65	Kalimantan Utara	\N
71	Sulawesi Utara	\N
72	Sulawesi Tengah	\N
73	Sulawesi Selatan	\N
74	Sulawesi Tenggara	\N
75	Gorontalo	\N
76	Sulawesi Barat	\N
81	Maluku	\N
82	Maluku Utara	\N
91	Papua Barat	\N
94	Papua	\N
\.


--
-- Data for Name: wilayah_provinsis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wilayah_provinsis (id, nama, status) FROM stdin;
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: vendor Vendor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendor
    ADD CONSTRAINT "Vendor_pkey" PRIMARY KEY (id);


--
-- Name: lab lab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_pkey PRIMARY KEY (id);


--
-- Name: role roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: user users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wilayah_kabupaten wilayah_kabupaten_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wilayah_kabupaten
    ADD CONSTRAINT wilayah_kabupaten_pkey PRIMARY KEY (id);


--
-- Name: wilayah_kecamatan wilayah_kecamatan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wilayah_kecamatan
    ADD CONSTRAINT wilayah_kecamatan_pkey PRIMARY KEY (id);


--
-- Name: wilayah_provinsi wilayah_provinsi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wilayah_provinsi
    ADD CONSTRAINT wilayah_provinsi_pkey PRIMARY KEY (id);


--
-- Name: wilayah_provinsis wilayah_provinsis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wilayah_provinsis
    ADD CONSTRAINT wilayah_provinsis_pkey PRIMARY KEY (id);


--
-- Name: user users_roleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "users_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.role(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

