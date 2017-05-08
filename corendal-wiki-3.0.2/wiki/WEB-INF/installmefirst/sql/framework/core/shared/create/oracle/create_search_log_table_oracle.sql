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
 * Version: $Id: create_search_log_table_oracle.sql,v 1.6 2007/01/03 17:43:27 tdanard Exp $
 */

drop table search_log;

create table search_log
   (id varchar2(36) primary key not null
   ,app_id varchar2(36) not null
   ,block_id varchar2(36) not null
   ,criteria varchar2(255) not null
   ,cardinal number not null
   ,enabled_flag varchar2(1) not null
   ) ;
   
create index search_log_criteria_ctx on search_log(criteria) indextype is ctxsys.context parameters ('sync(on commit)');

drop sequence search_log_seq;

create sequence search_log_seq start with 2001 order;
