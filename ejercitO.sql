toc.dat                                                                                             0000600 0004000 0002000 00000020637 14516052225 0014451 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   -    "            	    {            ejercito    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    24576    ejercito    DATABASE     ~   CREATE DATABASE ejercito WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ejercito;
                postgres    false         �            1259    24577 	   compañia    TABLE     g   CREATE TABLE public."compañia" (
    numero integer NOT NULL,
    actividad character varying(100)
);
    DROP TABLE public."compañia";
       public         heap    postgres    false         �            1259    24580    cuartel    TABLE     �   CREATE TABLE public.cuartel (
    codigo integer NOT NULL,
    nombre character varying(50),
    ubicacion character varying(100)
);
    DROP TABLE public.cuartel;
       public         heap    postgres    false         �            1259    24583    cuerpo    TABLE     e   CREATE TABLE public.cuerpo (
    codigo integer NOT NULL,
    denominacion character varying(100)
);
    DROP TABLE public.cuerpo;
       public         heap    postgres    false         �            1259    24586 
   rotaciones    TABLE     �   CREATE TABLE public.rotaciones (
    rotacion integer NOT NULL,
    soldado integer,
    "compañia" integer,
    cuerpo integer,
    cuartel integer
);
    DROP TABLE public.rotaciones;
       public         heap    postgres    false         �            1259    24589 	   servicios    TABLE     g   CREATE TABLE public.servicios (
    codigo integer NOT NULL,
    descripcion character varying(100)
);
    DROP TABLE public.servicios;
       public         heap    postgres    false         �            1259    24592    soldados    TABLE     �   CREATE TABLE public.soldados (
    codigo integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    graduacion date,
    "compañia" integer,
    cuerpo integer,
    cuartel integer,
    servicio integer
);
    DROP TABLE public.soldados;
       public         heap    postgres    false         �          0    24577 	   compañia 
   TABLE DATA           8   COPY public."compañia" (numero, actividad) FROM stdin;
    public          postgres    false    215       4816.dat �          0    24580    cuartel 
   TABLE DATA           <   COPY public.cuartel (codigo, nombre, ubicacion) FROM stdin;
    public          postgres    false    216       4817.dat �          0    24583    cuerpo 
   TABLE DATA           6   COPY public.cuerpo (codigo, denominacion) FROM stdin;
    public          postgres    false    217       4818.dat �          0    24586 
   rotaciones 
   TABLE DATA           U   COPY public.rotaciones (rotacion, soldado, "compañia", cuerpo, cuartel) FROM stdin;
    public          postgres    false    218       4819.dat �          0    24589 	   servicios 
   TABLE DATA           8   COPY public.servicios (codigo, descripcion) FROM stdin;
    public          postgres    false    219       4820.dat �          0    24592    soldados 
   TABLE DATA           p   COPY public.soldados (codigo, nombre, apellido, graduacion, "compañia", cuerpo, cuartel, servicio) FROM stdin;
    public          postgres    false    220       4821.dat .           2606    24596    compañia compañia_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."compañia"
    ADD CONSTRAINT "compañia_pkey" PRIMARY KEY (numero);
 F   ALTER TABLE ONLY public."compañia" DROP CONSTRAINT "compañia_pkey";
       public            postgres    false    215         0           2606    24598    cuartel cuartel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cuartel
    ADD CONSTRAINT cuartel_pkey PRIMARY KEY (codigo);
 >   ALTER TABLE ONLY public.cuartel DROP CONSTRAINT cuartel_pkey;
       public            postgres    false    216         2           2606    24600    cuerpo cuerpo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cuerpo
    ADD CONSTRAINT cuerpo_pkey PRIMARY KEY (codigo);
 <   ALTER TABLE ONLY public.cuerpo DROP CONSTRAINT cuerpo_pkey;
       public            postgres    false    217         4           2606    24602    rotaciones rotarciones_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT rotarciones_pkey PRIMARY KEY (rotacion);
 E   ALTER TABLE ONLY public.rotaciones DROP CONSTRAINT rotarciones_pkey;
       public            postgres    false    218         6           2606    24604    servicios servicios_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (codigo);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public            postgres    false    219         8           2606    24606    soldados soldados_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT soldados_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.soldados DROP CONSTRAINT soldados_pkey;
       public            postgres    false    220         9           2606    24607    rotaciones compañi    FK CONSTRAINT     �   ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT "compañi" FOREIGN KEY ("compañia") REFERENCES public."compañia"(numero) NOT VALID;
 ?   ALTER TABLE ONLY public.rotaciones DROP CONSTRAINT "compañi";
       public          postgres    false    4654    218    215         =           2606    24612    soldados compañia    FK CONSTRAINT     �   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT "compañia" FOREIGN KEY ("compañia") REFERENCES public."compañia"(numero) NOT VALID;
 >   ALTER TABLE ONLY public.soldados DROP CONSTRAINT "compañia";
       public          postgres    false    215    220    4654         >           2606    24617    soldados cuartel    FK CONSTRAINT        ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuartel FOREIGN KEY (cuartel) REFERENCES public.cuartel(codigo) NOT VALID;
 :   ALTER TABLE ONLY public.soldados DROP CONSTRAINT cuartel;
       public          postgres    false    216    4656    220         :           2606    24622    rotaciones cuartel    FK CONSTRAINT     �   ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT cuartel FOREIGN KEY (cuartel) REFERENCES public.cuartel(codigo) NOT VALID;
 <   ALTER TABLE ONLY public.rotaciones DROP CONSTRAINT cuartel;
       public          postgres    false    218    216    4656         ?           2606    24627    soldados cuerpo    FK CONSTRAINT     |   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuerpo FOREIGN KEY (cuerpo) REFERENCES public.cuerpo(codigo) NOT VALID;
 9   ALTER TABLE ONLY public.soldados DROP CONSTRAINT cuerpo;
       public          postgres    false    217    220    4658         ;           2606    24632    rotaciones cuerpo    FK CONSTRAINT     ~   ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT cuerpo FOREIGN KEY (cuerpo) REFERENCES public.cuerpo(codigo) NOT VALID;
 ;   ALTER TABLE ONLY public.rotaciones DROP CONSTRAINT cuerpo;
       public          postgres    false    218    4658    217         @           2606    24637    soldados servicio    FK CONSTRAINT     �   ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT servicio FOREIGN KEY (servicio) REFERENCES public.servicios(codigo) NOT VALID;
 ;   ALTER TABLE ONLY public.soldados DROP CONSTRAINT servicio;
       public          postgres    false    4662    220    219         <           2606    24642    rotaciones soldado    FK CONSTRAINT     �   ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT soldado FOREIGN KEY (soldado) REFERENCES public.soldados(codigo) NOT VALID;
 <   ALTER TABLE ONLY public.rotaciones DROP CONSTRAINT soldado;
       public          postgres    false    4664    218    220                                                                                                         4816.dat                                                                                            0000600 0004000 0002000 00000000112 14516052225 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1144	Anti guerrila
1143	Apoyo relampago\n
1142	Desminado
1141	Frente
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                      4817.dat                                                                                            0000600 0004000 0002000 00000000102 14516052225 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Cuartel Rt12	Cauca
1	Alto de las palmas	Alto de las palmas
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                              4818.dat                                                                                            0000600 0004000 0002000 00000000041 14516052225 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Recluta\n
1	Profesionales
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               4819.dat                                                                                            0000600 0004000 0002000 00000000045 14516052225 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1102	1142	1	2
2	1130	1143	2	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4820.dat                                                                                            0000600 0004000 0002000 00000000102 14516052225 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Patrulla corta
2	Patrulla Activa\n
3	Patrulla perimetral\n
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                              4821.dat                                                                                            0000600 0004000 0002000 00000000254 14516052225 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1130	Miguel	Armando Berrio	\N	1141	1	2	3
1131	Federico	Armando venedeti	\N	1143	1	2	2
1102	David	Murcia Guzman	\N	1142	1	2	2
1103	Jairo\n	Velez Muñoz\n	\N	1142	2	1	3
\.


                                                                                                                                                                                                                                                                                                                                                    restore.sql                                                                                         0000600 0004000 0002000 00000016077 14516052225 0015401 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE ejercito;
--
-- Name: ejercito; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ejercito WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE ejercito OWNER TO postgres;

\connect ejercito

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
-- Name: compañia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."compañia" (
    numero integer NOT NULL,
    actividad character varying(100)
);


ALTER TABLE public."compañia" OWNER TO postgres;

--
-- Name: cuartel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuartel (
    codigo integer NOT NULL,
    nombre character varying(50),
    ubicacion character varying(100)
);


ALTER TABLE public.cuartel OWNER TO postgres;

--
-- Name: cuerpo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuerpo (
    codigo integer NOT NULL,
    denominacion character varying(100)
);


ALTER TABLE public.cuerpo OWNER TO postgres;

--
-- Name: rotaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rotaciones (
    rotacion integer NOT NULL,
    soldado integer,
    "compañia" integer,
    cuerpo integer,
    cuartel integer
);


ALTER TABLE public.rotaciones OWNER TO postgres;

--
-- Name: servicios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicios (
    codigo integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.servicios OWNER TO postgres;

--
-- Name: soldados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soldados (
    codigo integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    graduacion date,
    "compañia" integer,
    cuerpo integer,
    cuartel integer,
    servicio integer
);


ALTER TABLE public.soldados OWNER TO postgres;

--
-- Data for Name: compañia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."compañia" (numero, actividad) FROM stdin;
\.
COPY public."compañia" (numero, actividad) FROM '$$PATH$$/4816.dat';

--
-- Data for Name: cuartel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuartel (codigo, nombre, ubicacion) FROM stdin;
\.
COPY public.cuartel (codigo, nombre, ubicacion) FROM '$$PATH$$/4817.dat';

--
-- Data for Name: cuerpo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuerpo (codigo, denominacion) FROM stdin;
\.
COPY public.cuerpo (codigo, denominacion) FROM '$$PATH$$/4818.dat';

--
-- Data for Name: rotaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rotaciones (rotacion, soldado, "compañia", cuerpo, cuartel) FROM stdin;
\.
COPY public.rotaciones (rotacion, soldado, "compañia", cuerpo, cuartel) FROM '$$PATH$$/4819.dat';

--
-- Data for Name: servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.servicios (codigo, descripcion) FROM stdin;
\.
COPY public.servicios (codigo, descripcion) FROM '$$PATH$$/4820.dat';

--
-- Data for Name: soldados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soldados (codigo, nombre, apellido, graduacion, "compañia", cuerpo, cuartel, servicio) FROM stdin;
\.
COPY public.soldados (codigo, nombre, apellido, graduacion, "compañia", cuerpo, cuartel, servicio) FROM '$$PATH$$/4821.dat';

--
-- Name: compañia compañia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."compañia"
    ADD CONSTRAINT "compañia_pkey" PRIMARY KEY (numero);


--
-- Name: cuartel cuartel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuartel
    ADD CONSTRAINT cuartel_pkey PRIMARY KEY (codigo);


--
-- Name: cuerpo cuerpo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuerpo
    ADD CONSTRAINT cuerpo_pkey PRIMARY KEY (codigo);


--
-- Name: rotaciones rotarciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT rotarciones_pkey PRIMARY KEY (rotacion);


--
-- Name: servicios servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (codigo);


--
-- Name: soldados soldados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT soldados_pkey PRIMARY KEY (codigo);


--
-- Name: rotaciones compañi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT "compañi" FOREIGN KEY ("compañia") REFERENCES public."compañia"(numero) NOT VALID;


--
-- Name: soldados compañia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT "compañia" FOREIGN KEY ("compañia") REFERENCES public."compañia"(numero) NOT VALID;


--
-- Name: soldados cuartel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuartel FOREIGN KEY (cuartel) REFERENCES public.cuartel(codigo) NOT VALID;


--
-- Name: rotaciones cuartel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT cuartel FOREIGN KEY (cuartel) REFERENCES public.cuartel(codigo) NOT VALID;


--
-- Name: soldados cuerpo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT cuerpo FOREIGN KEY (cuerpo) REFERENCES public.cuerpo(codigo) NOT VALID;


--
-- Name: rotaciones cuerpo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT cuerpo FOREIGN KEY (cuerpo) REFERENCES public.cuerpo(codigo) NOT VALID;


--
-- Name: soldados servicio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soldados
    ADD CONSTRAINT servicio FOREIGN KEY (servicio) REFERENCES public.servicios(codigo) NOT VALID;


--
-- Name: rotaciones soldado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rotaciones
    ADD CONSTRAINT soldado FOREIGN KEY (soldado) REFERENCES public.soldados(codigo) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 