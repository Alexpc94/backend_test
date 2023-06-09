PGDMP     )    "                {            test    14.8    14.8                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    test    DATABASE     h   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE test;
                postgres    false            �            1259    16396    cliente    TABLE       CREATE TABLE public.cliente (
    id integer NOT NULL,
    nombre character varying DEFAULT ''::character varying NOT NULL,
    apellidos character varying DEFAULT ''::character varying NOT NULL,
    celular character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16395    cliente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cliente_id_seq;
       public          postgres    false    210                       0    0    cliente_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;
          public          postgres    false    209            �            1259    16403    comprobante    TABLE     >  CREATE TABLE public.comprobante (
    id integer NOT NULL,
    fecha timestamp without time zone DEFAULT now() NOT NULL,
    id_remitente integer NOT NULL,
    id_destinatario integer NOT NULL,
    tipo_cambio numeric(10,2) NOT NULL,
    tipo_montomm numeric(20,2) NOT NULL,
    tipo_montome numeric(20,2) NOT NULL
);
    DROP TABLE public.comprobante;
       public         heap    postgres    false            �            1259    16402    comprobante_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comprobante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.comprobante_id_seq;
       public          postgres    false    212                       0    0    comprobante_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.comprobante_id_seq OWNED BY public.comprobante.id;
          public          postgres    false    211            �            1259    16431    comprobante_post    TABLE     �   CREATE TABLE public.comprobante_post (
    id integer NOT NULL,
    nombre character varying DEFAULT ''::character varying NOT NULL,
    apellidos character varying DEFAULT ''::character varying NOT NULL
);
 $   DROP TABLE public.comprobante_post;
       public         heap    postgres    false            �            1259    16430    comprobante_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comprobante_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.comprobante_post_id_seq;
       public          postgres    false    216                       0    0    comprobante_post_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.comprobante_post_id_seq OWNED BY public.comprobante_post.id;
          public          postgres    false    215            �            1259    16420 	   feed_post    TABLE     �   CREATE TABLE public.feed_post (
    id integer NOT NULL,
    nombre character varying DEFAULT ''::character varying NOT NULL,
    apellidos character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.feed_post;
       public         heap    postgres    false            �            1259    16419    feed_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feed_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.feed_post_id_seq;
       public          postgres    false    214                       0    0    feed_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.feed_post_id_seq OWNED BY public.feed_post.id;
          public          postgres    false    213            k           2604    16399 
   cliente id    DEFAULT     h   ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);
 9   ALTER TABLE public.cliente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            o           2604    16406    comprobante id    DEFAULT     p   ALTER TABLE ONLY public.comprobante ALTER COLUMN id SET DEFAULT nextval('public.comprobante_id_seq'::regclass);
 =   ALTER TABLE public.comprobante ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            t           2604    16434    comprobante_post id    DEFAULT     z   ALTER TABLE ONLY public.comprobante_post ALTER COLUMN id SET DEFAULT nextval('public.comprobante_post_id_seq'::regclass);
 B   ALTER TABLE public.comprobante_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            q           2604    16423    feed_post id    DEFAULT     l   ALTER TABLE ONLY public.feed_post ALTER COLUMN id SET DEFAULT nextval('public.feed_post_id_seq'::regclass);
 ;   ALTER TABLE public.feed_post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214                      0    16396    cliente 
   TABLE DATA           A   COPY public.cliente (id, nombre, apellidos, celular) FROM stdin;
    public          postgres    false    210   �#                 0    16403    comprobante 
   TABLE DATA           x   COPY public.comprobante (id, fecha, id_remitente, id_destinatario, tipo_cambio, tipo_montomm, tipo_montome) FROM stdin;
    public          postgres    false    212   =$                 0    16431    comprobante_post 
   TABLE DATA           A   COPY public.comprobante_post (id, nombre, apellidos) FROM stdin;
    public          postgres    false    216   �$                 0    16420 	   feed_post 
   TABLE DATA           :   COPY public.feed_post (id, nombre, apellidos) FROM stdin;
    public          postgres    false    214   %                  0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 18, true);
          public          postgres    false    209                       0    0    comprobante_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.comprobante_id_seq', 18, true);
          public          postgres    false    211                       0    0    comprobante_post_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.comprobante_post_id_seq', 16, true);
          public          postgres    false    215                       0    0    feed_post_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.feed_post_id_seq', 1, false);
          public          postgres    false    213            |           2606    16429 (   feed_post PK_1dd475e18c5436c2bd0e56db39a 
   CONSTRAINT     h   ALTER TABLE ONLY public.feed_post
    ADD CONSTRAINT "PK_1dd475e18c5436c2bd0e56db39a" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.feed_post DROP CONSTRAINT "PK_1dd475e18c5436c2bd0e56db39a";
       public            postgres    false    214            ~           2606    16440 /   comprobante_post PK_9c2f7357a7e31df2df91e137239 
   CONSTRAINT     o   ALTER TABLE ONLY public.comprobante_post
    ADD CONSTRAINT "PK_9c2f7357a7e31df2df91e137239" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.comprobante_post DROP CONSTRAINT "PK_9c2f7357a7e31df2df91e137239";
       public            postgres    false    216            x           2606    16401    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    210            z           2606    16408    comprobante comprobante_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.comprobante
    ADD CONSTRAINT comprobante_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.comprobante DROP CONSTRAINT comprobante_pkey;
       public            postgres    false    212               �   x�M̽
A�z�>�x�[�p�xx��\��+G�]���JR�0_*42��,��AS������p̬h���㔃�-$-P�)k�XY�Sв��X���K��{�8�������~���6h�c��A�-�r uc"� s�3�         j   x�e���0Cѳ<E�@J�{��?G�6@a��O$M�;�n��Or��W(�R@
��o�j&sҴ,�~�X�=���\� s\;�o���G�������O%X         H   x�3���2bcN΂Ԣ�*.��0�1�aÒ31'��14@����Px�(<��\�� hW� ��&�            x������ � �     