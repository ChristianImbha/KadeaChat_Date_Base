--
-- PostgreSQL database dump
--

\restrict gPF5eh1CtTfh7ALa7Hq9AtwceTCXIJCAqxVqtSD7ch6Gadx1Zqt5OQR1yKY9Vtr

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-09-06 11:24:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4992 (class 0 OID 24586)
-- Dependencies: 220
-- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversations (id_conversation, title, type_conversation, date_of_creation) FROM stdin;
1	Projet Kadea Chat	private	2026-08-31 23:10:01.953805
\.


--
-- TOC entry 4994 (class 0 OID 24594)
-- Dependencies: 222
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.status (id_status, "Status_Description") FROM stdin;
1	Sent
2	Delivered
3	Read
\.


--
-- TOC entry 4991 (class 0 OID 24581)
-- Dependencies: 219
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id_user, full_name, email, password, avatar, date_of_creation) FROM stdin;
1	C	c	p	\N	2026-08-31 22:48:49.547439+01
2	D	d	p	\N	2026-08-31 22:48:49.547439+01
3	Christian Imbha	christianimbha@gmail.com	christian2501	\N	2026-08-31 23:08:06.472803+01
4	Daniel Assani	daniel@example.com	daniel2501	\N	2026-08-31 23:08:06.472803+01
\.


--
-- TOC entry 4993 (class 0 OID 24589)
-- Dependencies: 221
-- Data for Name: Messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Messages" (id_message, content, "Date_sent", "Date_modification", id_user, id_conversation, id_status) FROM stdin;
1	Bonjour Daniel, bienvenue dans notre projet Kadea Chat !	2026-08-31 23:17:11.28771	\N	3	1	1
2	Bonjour Daniel, bienvenue dans notre projet Kadea Chat !	2026-09-05 15:34:41.54995	\N	1	1	1
3	Merci Christian ! Je suis prêt à commencer le projet.	2026-09-05 15:35:49.987788	\N	2	1	1
\.


--
-- TOC entry 4995 (class 0 OID 24616)
-- Dependencies: 223
-- Data for Name: conversation_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.conversation_users (id_conversation, id_user) FROM stdin;
1	3
1	4
\.


--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 227
-- Name: Messages_id_message_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Messages_id_message_seq"', 3, true);


--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 226
-- Name: conversations_id_conversation_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.conversations_id_conversation_seq', 1, true);


--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 224
-- Name: status_id_status_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.status_id_status_seq', 1, false);


--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 225
-- Name: users_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_user_seq', 4, true);


-- Completed on 2026-09-06 11:24:47

--
-- PostgreSQL database dump complete
--

\unrestrict gPF5eh1CtTfh7ALa7Hq9AtwceTCXIJCAqxVqtSD7ch6Gadx1Zqt5OQR1yKY9Vtr

