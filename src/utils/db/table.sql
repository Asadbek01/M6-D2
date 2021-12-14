CREATE TABLE IF NOT EXISTS products
(
    product_id integer PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
    product_name varchar(50)  NOT NULL,
    product_description varchar(50)  NOT NULL,
    product_brand varchar(50)  NOT NULL,
    product_price varchar(50)  NOT NULL,
    product_category varchar(50)  NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);
-- -- DROP TABLE IF EXISTS public.review;

CREATE TABLE IF NOT EXISTS reviews
(
    review_id integer PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY ,
    comment varchar(100) NOT NULL,
    rate text NOT NULL,
    product_id  integer REFERENCES products,
    created_at timestamp with time zone DEFAULT now()
);



