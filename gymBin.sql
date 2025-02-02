PGDMP     (            
        x            gym    9.6.17    9.6.17     f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            i           1262    16476    gym    DATABASE     �   CREATE DATABASE gym WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE gym;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            j           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            k           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16477    reserva    TABLE     �   CREATE TABLE public.reserva (
    id integer NOT NULL,
    nombre text,
    email character(250),
    celular text,
    hora text,
    fecha date,
    mensaje text
);
    DROP TABLE public.reserva;
       public         postgres    false    3            �            1259    16483    agenda_id_seq    SEQUENCE     v   CREATE SEQUENCE public.agenda_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.agenda_id_seq;
       public       postgres    false    185    3            l           0    0    agenda_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.agenda_id_seq OWNED BY public.reserva.id;
            public       postgres    false    186            �            1259    16510    boletin    TABLE     S   CREATE TABLE public.boletin (
    id integer NOT NULL,
    email character(400)
);
    DROP TABLE public.boletin;
       public         postgres    false    3            �            1259    16513    boletin_id_seq    SEQUENCE     w   CREATE SEQUENCE public.boletin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.boletin_id_seq;
       public       postgres    false    189    3            m           0    0    boletin_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.boletin_id_seq OWNED BY public.boletin.id;
            public       postgres    false    190            �            1259    16485    contacto    TABLE     w   CREATE TABLE public.contacto (
    id integer NOT NULL,
    nombre text,
    mensaje text,
    email character(250)
);
    DROP TABLE public.contacto;
       public         postgres    false    3            �            1259    16491    contacto_id_seq    SEQUENCE     x   CREATE SEQUENCE public.contacto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacto_id_seq;
       public       postgres    false    3    187            n           0    0    contacto_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacto_id_seq OWNED BY public.contacto.id;
            public       postgres    false    188            �           2604    16515 
   boletin id    DEFAULT     h   ALTER TABLE ONLY public.boletin ALTER COLUMN id SET DEFAULT nextval('public.boletin_id_seq'::regclass);
 9   ALTER TABLE public.boletin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189            �           2604    16502    contacto id    DEFAULT     j   ALTER TABLE ONLY public.contacto ALTER COLUMN id SET DEFAULT nextval('public.contacto_id_seq'::regclass);
 :   ALTER TABLE public.contacto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187            �           2604    16501 
   reserva id    DEFAULT     g   ALTER TABLE ONLY public.reserva ALTER COLUMN id SET DEFAULT nextval('public.agenda_id_seq'::regclass);
 9   ALTER TABLE public.reserva ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185            o           0    0    agenda_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.agenda_id_seq', 49, true);
            public       postgres    false    186            b          0    16510    boletin 
   TABLE DATA               ,   COPY public.boletin (id, email) FROM stdin;
    public       postgres    false    189          p           0    0    boletin_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.boletin_id_seq', 42, true);
            public       postgres    false    190            `          0    16485    contacto 
   TABLE DATA               >   COPY public.contacto (id, nombre, mensaje, email) FROM stdin;
    public       postgres    false    187   e       q           0    0    contacto_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contacto_id_seq', 55, true);
            public       postgres    false    188            ^          0    16477    reserva 
   TABLE DATA               S   COPY public.reserva (id, nombre, email, celular, hora, fecha, mensaje) FROM stdin;
    public       postgres    false    185   �       �           2606    16505    reserva agenda_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT agenda_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.reserva DROP CONSTRAINT agenda_pkey;
       public         postgres    false    185    185            �           2606    16523    boletin boletin_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.boletin
    ADD CONSTRAINT boletin_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.boletin DROP CONSTRAINT boletin_pkey;
       public         postgres    false    189    189            �           2606    16507    contacto contacto_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT contacto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacto DROP CONSTRAINT contacto_pkey;
       public         postgres    false    187    187            b   =   x�31��)-NM�,IL�Lq��/�M���K��U�L�8S�Rs2��G#cp �=... �p      `   8   x�35�K�K-.NT������)-NM�,IL�Lq��/�M���K��U��+F��� �|*�      ^   �   x��б�0����ݜ WZ�e"&l�N.�z�h	-&���Ň���3�O!��>mk���>S�j�f��@+��Z<"(�c6X�����ɫ>�,:�%�)��8�P�I�y��C!z߆G*;��u�s�2T�#���k-�� 7Ff�     