/*
 * Corendal NetApps Framework - Java framework for web applications
 * Copyright (C) Thierry Danard
 * 
 * This program is free software; you can redistribute it and|or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 * Version: $Id: create_email_attr_table_mysql.sql,v 1.5 2007/01/03 17:43:28 tdanard Exp $
 */

drop table if exists email_attr;

create table email_attr
   (id varchar(36) primary key not null
   ,email_id varchar(36) not null
   ,attr_id varchar(36) not null
   ,attr_value longtext
   ,enabled_flag varchar(1) not null
   ) type = innodb;
   
drop table if exists email_attr_seq;
   
create table email_attr_seq
    (id int not null primary key auto_increment
    ,timestamp datetime);

insert into email_attr_seq(id, timestamp) values (2000, now());
