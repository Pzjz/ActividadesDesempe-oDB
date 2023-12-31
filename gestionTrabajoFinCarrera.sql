toc.dat                                                                                             0000600 0004000 0002000 00000014434 14516052177 0014455 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       "            	    {            GestionTrabajoFinCarrera    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    24647    GestionTrabajoFinCarrera    DATABASE     �   CREATE DATABASE "GestionTrabajoFinCarrera" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
 *   DROP DATABASE "GestionTrabajoFinCarrera";
                postgres    false         �            1259    24648    alumnos    TABLE     �   CREATE TABLE public.alumnos (
    matricula integer NOT NULL,
    "CI" integer,
    nombres character varying,
    apellidos character varying,
    tfc integer
);
    DROP TABLE public.alumnos;
       public         heap    postgres    false         �            1259    24682    grupotrabajo    TABLE     �   CREATE TABLE public.grupotrabajo (
    id integer NOT NULL,
    integrantes integer,
    "fechaCreacion" date,
    "numeroGrupo" integer
);
     DROP TABLE public.grupotrabajo;
       public         heap    postgres    false         �            1259    24667 
   profesores    TABLE     {   CREATE TABLE public.profesores (
    ci integer NOT NULL,
    nombre character varying(50),
    domicilio character(50)
);
    DROP TABLE public.profesores;
       public         heap    postgres    false         �            1259    24655    tfc    TABLE     e   CREATE TABLE public.tfc (
    numero integer NOT NULL,
    tema character varying,
    fecha date
);
    DROP TABLE public.tfc;
       public         heap    postgres    false         �            1259    24692    tribunal    TABLE     �   CREATE TABLE public.tribunal (
    id integer NOT NULL,
    "fechaExamen" date,
    jurados integer,
    evaluado integer,
    "tribunalNumero" integer
);
    DROP TABLE public.tribunal;
       public         heap    postgres    false         �          0    24648    alumnos 
   TABLE DATA           K   COPY public.alumnos (matricula, "CI", nombres, apellidos, tfc) FROM stdin;
    public          postgres    false    215       4806.dat �          0    24682    grupotrabajo 
   TABLE DATA           W   COPY public.grupotrabajo (id, integrantes, "fechaCreacion", "numeroGrupo") FROM stdin;
    public          postgres    false    218       4809.dat �          0    24667 
   profesores 
   TABLE DATA           ;   COPY public.profesores (ci, nombre, domicilio) FROM stdin;
    public          postgres    false    217       4808.dat �          0    24655    tfc 
   TABLE DATA           2   COPY public.tfc (numero, tema, fecha) FROM stdin;
    public          postgres    false    216       4807.dat �          0    24692    tribunal 
   TABLE DATA           Z   COPY public.tribunal (id, "fechaExamen", jurados, evaluado, "tribunalNumero") FROM stdin;
    public          postgres    false    219       4810.dat ,           2606    24661    tfc TFC_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tfc
    ADD CONSTRAINT "TFC_pkey" PRIMARY KEY (numero);
 8   ALTER TABLE ONLY public.tfc DROP CONSTRAINT "TFC_pkey";
       public            postgres    false    216         *           2606    24654    alumnos alumnos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);
 >   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT alumnos_pkey;
       public            postgres    false    215         0           2606    24686    grupotrabajo grupotrabajo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.grupotrabajo
    ADD CONSTRAINT grupotrabajo_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.grupotrabajo DROP CONSTRAINT grupotrabajo_pkey;
       public            postgres    false    218         .           2606    24673    profesores profesores_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (ci);
 D   ALTER TABLE ONLY public.profesores DROP CONSTRAINT profesores_pkey;
       public            postgres    false    217         2           2606    24696    tribunal tribunal_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tribunal
    ADD CONSTRAINT tribunal_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tribunal DROP CONSTRAINT tribunal_pkey;
       public            postgres    false    219         5           2606    24702    tribunal evaluado    FK CONSTRAINT     �   ALTER TABLE ONLY public.tribunal
    ADD CONSTRAINT evaluado FOREIGN KEY (evaluado) REFERENCES public.alumnos(matricula) NOT VALID;
 ;   ALTER TABLE ONLY public.tribunal DROP CONSTRAINT evaluado;
       public          postgres    false    215    4650    219         4           2606    24687 *   grupotrabajo grupotrabajo_integrantes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.grupotrabajo
    ADD CONSTRAINT grupotrabajo_integrantes_fkey FOREIGN KEY (integrantes) REFERENCES public.alumnos(matricula) NOT VALID;
 T   ALTER TABLE ONLY public.grupotrabajo DROP CONSTRAINT grupotrabajo_integrantes_fkey;
       public          postgres    false    4650    215    218         6           2606    24697    tribunal jurado    FK CONSTRAINT     }   ALTER TABLE ONLY public.tribunal
    ADD CONSTRAINT jurado FOREIGN KEY (jurados) REFERENCES public.profesores(ci) NOT VALID;
 9   ALTER TABLE ONLY public.tribunal DROP CONSTRAINT jurado;
       public          postgres    false    217    4654    219         3           2606    24662    alumnos tfc    FK CONSTRAINT     r   ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT tfc FOREIGN KEY (tfc) REFERENCES public.tfc(numero) NOT VALID;
 5   ALTER TABLE ONLY public.alumnos DROP CONSTRAINT tfc;
       public          postgres    false    216    4652    215                                                                                                                                                                                                                                            4806.dat                                                                                            0000600 0004000 0002000 00000000121 14516052177 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        11234	1234543	Jaime	Gomez Alzate	1
11235	436376	Carlos	Guitierrez Jimenez	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                               4809.dat                                                                                            0000600 0004000 0002000 00000000057 14516052177 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	11235	2023-10-24	1
2	11234	2023-10-24	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 4808.dat                                                                                            0000600 0004000 0002000 00000000233 14516052177 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12345678	Miguel Gomez	La mina                                           
87654321	Federico Murcia	La ceja\n                                          
\.


                                                                                                                                                                                                                                                                                                                                                                     4807.dat                                                                                            0000600 0004000 0002000 00000000140 14516052177 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Aprovechamiento de desechos	2023-10-23
2	Mejora de imagen en circuito cerrado	2023-10-15
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                4810.dat                                                                                            0000600 0004000 0002000 00000000101 14516052177 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2023-10-26	12345678	11235	1
2	2023-10-26	87654321	11235	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000013173 14516052177 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE "GestionTrabajoFinCarrera";
--
-- Name: GestionTrabajoFinCarrera; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "GestionTrabajoFinCarrera" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE "GestionTrabajoFinCarrera" OWNER TO postgres;

\connect "GestionTrabajoFinCarrera"

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
-- Name: alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alumnos (
    matricula integer NOT NULL,
    "CI" integer,
    nombres character varying,
    apellidos character varying,
    tfc integer
);


ALTER TABLE public.alumnos OWNER TO postgres;

--
-- Name: grupotrabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grupotrabajo (
    id integer NOT NULL,
    integrantes integer,
    "fechaCreacion" date,
    "numeroGrupo" integer
);


ALTER TABLE public.grupotrabajo OWNER TO postgres;

--
-- Name: profesores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profesores (
    ci integer NOT NULL,
    nombre character varying(50),
    domicilio character(50)
);


ALTER TABLE public.profesores OWNER TO postgres;

--
-- Name: tfc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tfc (
    numero integer NOT NULL,
    tema character varying,
    fecha date
);


ALTER TABLE public.tfc OWNER TO postgres;

--
-- Name: tribunal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tribunal (
    id integer NOT NULL,
    "fechaExamen" date,
    jurados integer,
    evaluado integer,
    "tribunalNumero" integer
);


ALTER TABLE public.tribunal OWNER TO postgres;

--
-- Data for Name: alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alumnos (matricula, "CI", nombres, apellidos, tfc) FROM stdin;
\.
COPY public.alumnos (matricula, "CI", nombres, apellidos, tfc) FROM '$$PATH$$/4806.dat';

--
-- Data for Name: grupotrabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grupotrabajo (id, integrantes, "fechaCreacion", "numeroGrupo") FROM stdin;
\.
COPY public.grupotrabajo (id, integrantes, "fechaCreacion", "numeroGrupo") FROM '$$PATH$$/4809.dat';

--
-- Data for Name: profesores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profesores (ci, nombre, domicilio) FROM stdin;
\.
COPY public.profesores (ci, nombre, domicilio) FROM '$$PATH$$/4808.dat';

--
-- Data for Name: tfc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tfc (numero, tema, fecha) FROM stdin;
\.
COPY public.tfc (numero, tema, fecha) FROM '$$PATH$$/4807.dat';

--
-- Data for Name: tribunal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tribunal (id, "fechaExamen", jurados, evaluado, "tribunalNumero") FROM stdin;
\.
COPY public.tribunal (id, "fechaExamen", jurados, evaluado, "tribunalNumero") FROM '$$PATH$$/4810.dat';

--
-- Name: tfc TFC_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tfc
    ADD CONSTRAINT "TFC_pkey" PRIMARY KEY (numero);


--
-- Name: alumnos alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT alumnos_pkey PRIMARY KEY (matricula);


--
-- Name: grupotrabajo grupotrabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupotrabajo
    ADD CONSTRAINT grupotrabajo_pkey PRIMARY KEY (id);


--
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (ci);


--
-- Name: tribunal tribunal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tribunal
    ADD CONSTRAINT tribunal_pkey PRIMARY KEY (id);


--
-- Name: tribunal evaluado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tribunal
    ADD CONSTRAINT evaluado FOREIGN KEY (evaluado) REFERENCES public.alumnos(matricula) NOT VALID;


--
-- Name: grupotrabajo grupotrabajo_integrantes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grupotrabajo
    ADD CONSTRAINT grupotrabajo_integrantes_fkey FOREIGN KEY (integrantes) REFERENCES public.alumnos(matricula) NOT VALID;


--
-- Name: tribunal jurado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tribunal
    ADD CONSTRAINT jurado FOREIGN KEY (jurados) REFERENCES public.profesores(ci) NOT VALID;


--
-- Name: alumnos tfc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alumnos
    ADD CONSTRAINT tfc FOREIGN KEY (tfc) REFERENCES public.tfc(numero) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     