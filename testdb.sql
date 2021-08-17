-- Database: testdb

-- DROP DATABASE testdb;

CREATE DATABASE testdb
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Indonesian_Indonesia.1252'
    LC_CTYPE = 'Indonesian_Indonesia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

CREATE TABLE public.tutorials
(
    id integer NOT NULL DEFAULT nextval('tutorials_id_seq'::regclass),
    title character varying(255) COLLATE pg_catalog."default",
    description character varying(255) COLLATE pg_catalog."default",
    published boolean,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    CONSTRAINT tutorials_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tutorials
    OWNER to postgres;