-- DROP TABLES (in dependency-safe order)
drop table if exists Sale_Item;
drop table if exists Sale_transaction;
drop table if exists Inventory;
drop table if exists Supplies;
drop table if exists Product;
drop table if exists Vendor;
drop table if exists Store;
drop table if exists Customer;

-- CREATE TABLES

create table Customer (
    loyalty_id      varchar(20)     not null,
    customer_name   varchar(30)     not null,
    email_address   varchar(50)     not null check (email_address like '%@%'),
    phone_number    varchar(20)     not null,
    primary key (loyalty_id)
);

create table Store (
    store_id        varchar(20)     not null,
    store_name      varchar(50)     not null,
    address         varchar(150)    not null,
    ownership_type  varchar(20)     not null check (ownership_type in ('Franchise', 'Corporate')),
    open_time       time            not null,
    close_time      time            not null,
    primary key (store_id)
);

create table Vendor (
    vendor_id       varchar(30)     not null,
    vendor_name     varchar(50)     not null,
    email_address   varchar(50)     not null check (email_address like '%@%'),
    phone_number    varchar(20)     not null,
    address         varchar(150)    not null,
    primary key (vendor_id)
);

create table Product (
    product_UPC     varchar(30)     not null,
    product_name    varchar(50)     not null,
    brand           varchar(50)     not null,
    package_type    varchar(50)     not null,
    size            varchar(20)     not null,
    price           numeric(10,2)   not null check (price >= 0),
    primary key (product_UPC)
);

create table Sale_transaction (
    transaction_id    varchar(20)     not null,
    transaction_date  datetime        not null,
    total_amount      numeric(10,2)   not null check (total_amount >= 0),
    payment_method    varchar(20)     not null check (payment_method in ('cash', 'card', 'online')),
    loyalty_id        varchar(20),
    store_id          varchar(20)     not null,
    primary key (transaction_id),
    foreign key (loyalty_id) references Customer(loyalty_id),
    foreign key (store_id) references Store(store_id)
);

create table Sale_Item (
    transaction_id  varchar(20)     not null,
    product_UPC     varchar(30)     not null,
    quantity        int             not null check (quantity > 0),
    price_at_sale   numeric(10,2)   not null check (price_at_sale >= 0),
    primary key (transaction_id, product_UPC),
    foreign key (transaction_id) references Sale_transaction(transaction_id),
    foreign key (product_UPC) references Product(product_UPC)
);

create table Supplies (
    vendor_id       varchar(30)     not null,
    product_UPC     varchar(30)     not null,
    primary key (vendor_id, product_UPC),
    foreign key (vendor_id) references Vendor(vendor_id),
    foreign key (product_UPC) references Product(product_UPC)
);

create table Inventory (
    product_UPC         varchar(30)     not null,
    store_id            varchar(20)     not null,
    inventory_level     int             not null check (inventory_level >= 0),
    reorder_threshold   int             not null check (reorder_threshold >= 0),
    reorder_quantity    int             not null check (reorder_quantity >= 0),
    last_order_date     date            not null,
    primary key (product_UPC, store_id),
    foreign key (product_UPC) references Product(product_UPC),
    foreign key (store_id) references Store(store_id)
);
