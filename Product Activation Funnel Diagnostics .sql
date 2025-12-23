{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 DROP TABLE IF EXISTS activation_steps;\
\
CREATE TABLE activation_steps (\
    user_id INTEGER,\
    s1 TEXT,   -- signup done\
    s2 TEXT,   -- email verified\
    s3 TEXT,   -- kyc submitted\
    s4 TEXT,   -- kyc approved\
    s5 TEXT,   -- payment linked\
    s6 TEXT    -- first payment success\
);\
\
INSERT INTO activation_steps VALUES\
(1, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),\
(2, 'Yes', 'No',  'No',  'No',  'No',  'No'),\
(3, 'Yes', 'Yes', 'No',  'No',  'No',  'No'),\
(4, 'Yes', 'Yes', 'Yes', 'No',  'No',  'No'),\
(5, 'Yes', 'Yes', 'Yes', 'Yes', 'No',  'No'),\
(6, 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No'),\
(7, 'Yes', 'No',  'Yes', 'Yes', 'Yes', 'Yes'),\
(8, 'Yes', 'Yes', 'No',  'Yes', 'No',  'No'),\
(9, 'Yes', 'Yes', 'Yes', 'No',  'Yes', 'No'),\
(10,'Yes','Yes', 'Yes', 'Yes', 'Yes', 'Yes');\
\
SELECT\
    AVG(CASE WHEN s1 = 'Yes' THEN 1 ELSE 0 END) AS signup_rate,\
    AVG(CASE WHEN s2 = 'Yes' THEN 1 ELSE 0 END) AS email_verify_rate,\
    AVG(CASE WHEN s3 = 'Yes' THEN 1 ELSE 0 END) AS kyc_submit_rate,\
    AVG(CASE WHEN s4 = 'Yes' THEN 1 ELSE 0 END) AS kyc_approve_rate,\
    AVG(CASE WHEN s5 = 'Yes' THEN 1 ELSE 0 END) AS payment_link_rate,\
    AVG(CASE WHEN s6 = 'Yes' THEN 1 ELSE 0 END) AS activation_rate\
FROM activation_steps;\
\
\
}