create database houses;
create extension if not exists "uuid-ossp";
create table company(
    id uuid default uuid_generate_v4() primary key,
    name text not null,
    created_at timestamp with time zone not null default current_timestamp,
    email text not null,
    media text [] not null,
    link text not null
);
create table complex (
    id uuid default uuid_generate_v4() primary key,
    name text not null,
    created_at timestamp with time zone not null default current_timestamp,
    media text [] not null,
    complex_ref_company uuid,
    foreign key (complex_ref_company)
    references company(id)
    on delete cascade   
);
create table apartment(
    id uuid default uuid_generate_v4() primary key,
    room int not null,
    area int not null,
    price bigint not null,
    begin_plot text not null,
    end_plot text not null,
    media text [] not null,
    apartment_ref_complex uuid,
    foreign key (apartment_ref_complex)
    references complex(id)
    on delete cascade
);
create table banks(
    id uuid default uuid_generate_v4() primary key,
    name text not null,
    limit_money float not null,
    limit_year smallint not null,
    prosent smallint not null,
    email text not null,
    link text not null
);
create table orders(
    id uuid default uuid_generate_v4() primary key,
    fname text not null,
    lname text not null,
    email text not null,
    company_ref_order uuid,
    foreign key (company_ref_order)
    references company(id)
    on delete cascade,
    complex_ref_order uuid,
    foreign key (complex_ref_order)
    references complex(id)
    on delete cascade,
    apartment_ref_order uuid,
    foreign key (apartment_ref_order)
    references apartment(id)
    on delete cascade,
    bank_ref_order uuid,
    foreign key (bank_ref_order)
    references banks(id)
    on delete cascade

);

create table imgs(
    media text [] not null
)


--///////////////////////    INSERT  COMPANY ///////////////////

  insert into company(
        name,email,media,link
    )values('Murad buildings','rpardayev861@gmail.com','{"https://www.mbc.uz/includes/images/new_layout/logo.svg"}','https://www.mbc.uz/'),('Ramazon buildings','rpardayev861@gmail.com','{"https://www.mbc.uz/files/estates/optimized/opt__1920__6207bc34d490cd2450c3345937df4155_80.jpg","https://www.mbc.uz/files/estates/optimized/opt__1920__8781b29a5be5b3ee8689ed8e67001b79_80.jpg"}','https://github.com/Ramazon-hub'),('Dream city buildings','rpardayev861@gmail.com','{"https://dreamcity.uz/img/logo.svg"}','https://dreamcity.uz/'),
    ('Kamoliddin buildings','rpardayev861@gmail.com','{"https://dreamcity.uz/img/business1.jpg"}','https://github.com/toxir-brat'),
    ('Akay city','rpardayev861@gmail.com','{"https://akaycity.com/themes/default/img/akay-logo-white.png"}','https://akaycity.com/');

-- /////////////////////  insert complex //////////////////////
--////////////// Murad buildings ///////////////
insert into complex(
    name,media,complex_ref_company
)values(
    'KISLOROD','{"https://kislorod.mbc.uz/files/content/images/a00406a320baec7ae6a9b38261b7d0d7.png?w=1500","https://kislorod.mbc.uz/files/content/images/5d8138160997896fa0763809135750ae.jpg?w=367"}','41a772ac-2250-4aa4-87a6-d927a4a7de86'
),(
    'NEST ONE','{"https://nestone.uz/img/full-bg.png","https://nestone.uz/img/2.jpg"}','41a772ac-2250-4aa4-87a6-d927a4a7de86'
),(
    'CAMBRIDGE RESIDANCE','{"https://cr.mbc.uz/files/content/images/ea0f9ef59a970e48a42185adbbea0308.jpeg","https://cr.mbc.uz/files/content/images/optimized/2474fe4a50565a6fa61c13abd4d8c45d_80.jpg"}','41a772ac-2250-4aa4-87a6-d927a4a7de86'
),(
    'DOSTLAR','{"https://www.mbc.uz/files/estates/optimized/opt__1920__122b7e5edc74afb599834c355fecfc54_80.jpg","https://www.mbc.uz/files/images/optimized/opt__1600__2e7a9b151b61682c6e5031a3b9704691_30.jpg"}','41a772ac-2250-4aa4-87a6-d927a4a7de86'
);
--////////////// DREAM CITY ///////////////

insert into complex(
    name,media,complex_ref_company
)values(
    'SEUL MUN','{"https://seoulmun.uz/img/seoulNew.jpg","https://seoulmun.uz/img/phase2.jpg"}','4a116dac-5630-434e-8c9f-ff31f5e8d2fd'
),(
    'BOULEVARD','{"https://dreamcity.uz/img/more-1.png","https://dreamcity.uz/img/moreBg.jpg"}','4a116dac-5630-434e-8c9f-ff31f5e8d2fd'
),(
    'GARDENS','{"https://dreamcity.uz/img/business1.jpg"}','4a116dac-5630-434e-8c9f-ff31f5e8d2fd'
);
--//////////////////// AKAY CITY ////
insert into complex(
    name,media,complex_ref_company
)values(
    'MANZARA','{"https://akaycity.com/themes/default/img/akay-bg-wallpaper.jpg","https://akaycity.com/themes/default/img/article.png"}','aeb86efa-fffb-40e2-9e1a-cc7b8ed17baa'
),(
    'ROHAT','{"https://akaycity.com/themes/default/img/article_left.png","https://akaycity.com/themes/default/img/Akay-City-Facade-031.jpg"}','aeb86efa-fffb-40e2-9e1a-cc7b8ed17baa'
); 
--///////////////////////// RAMAZON BUILDINGS /////
insert into complex(
    name,media,complex_ref_company
)values(
    'TERMIZ CITY','{"https://domtut.uz/wp-content/uploads/2019/11/ch3-1170x738.jpg","https://domtut.uz/wp-content/uploads/2019/11/ch5-1170x738.jpg"}','29df2707-1bbe-4572-a870-2db14a2a8510'
),(
    'DENAU CITY','{"https://domtut.uz/wp-content/uploads/2019/12/zh1-1170x738.jpg","https://domtut.uz/wp-content/uploads/2019/12/zh3-1170x738.jpg"}','29df2707-1bbe-4572-a870-2db14a2a8510'
); 
--/////////////////////////// KAMOLIDDIN BUILDINGS /////
insert into complex(
    name,media,complex_ref_company
)values(
    'NAMUNA','{"https://domtut.uz/wp-content/uploads/2019/11/dd1-1170x738.jpg","https://domtut.uz/wp-content/uploads/2019/11/dd2-1170x738.jpg"}','9d1dafe1-6dfa-4c86-a16b-f0aee7d49a9f'
),(
    'SOHIL','{"https://domtut.uz/wp-content/uploads/2019/09/photo_2019-09-27_15-23-29-1170x738.jpg","https://domtut.uz/wp-content/uploads/2019/10/oazis3.jpg"}','9d1dafe1-6dfa-4c86-a16b-f0aee7d49a9f'
); 
insert into apartment(
    room,area,price,begin_plot,end_plot,media,apartment_ref_complex
)values
(2,46,5500000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(2,59,6000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(3,76,7000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(3,81,74000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(4,95,9000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(4,118,10000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(6,142,15000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5'),
(8,169,17000000,'2019.09.17','2022.01.05','{"https://nestone.uz/img/gallery-small-4.webp","https://nestone.uz/img/gallery-small-6.webp","https://nestone.uz/terrace/img/galeri2/1.png"}','f8b350f4-45b6-43bc-ad84-baf8e5bcbaa5');


--////////////////////  BAKNS ///
insert into banks(
    name,limit_money,limit_year,prosent,email,link
)values
('Davr bank',300000000,10,22,'ramazon2021pardayev@gmail.com','https://www.davrbank.uz/uz'),
('Xalq bank',3000000000,25,24,'ramazon2021pardayev@gmail.com','http://xb.uz/uz/page/physical'),
('Aloqabank',900000000,15,22,'ramazon2021pardayev@gmail.com','https://aloqabank.uz/'),
('Agrobank',2000000000,10,24,'ramazon2021pardayev@gmail.com','https://agrobank.uz/'),
('Ipoteka bank',1700000000,17,22,'ramazon2021pardayev@gmail.com','https://www.ipotekabank.uz/uz/'),
('Infin bank',600000000,12,24,'ramazon2021pardayev@gmail.com','https://www.infinbank.com/ru/'),
('Asaka bank',2400000000,22,22,'ramazon2021pardayev@gmail.com','https://asakabank.uz/');