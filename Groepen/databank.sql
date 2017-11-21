/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Wouter Mauriën & Jeroen Streulens
 * Created: 21-nov-2017
 */


drop table AP_Groepen;
drop table AP_Voorkeur;
drop table AP_Docent;
drop table AP_Student;

create table AP_Student(
        snr             integer not null,
        snaam           varchar2(30) not null,
        spwoord         varchar2(30) not null,
        bevestigd       char,
	primary key(snr)
);


create table AP_Docent(
	dnr             integer not null,
        dnaam           varchar2(30) not null,
        dpwoord         varchar2(30) not null,
	primary key(dnr)
);

create table AP_Voorkeur(
	vsnr             int references AP_Student(snr),
	osnr             int references AP_Student(snr),
        voorkeur         char,
        primary key(vsnr,osnr)
        
);

create table AP_Groepen(
	gnr             integer not null,
        gsnr            int references AP_Student(snr),
        primary key(gnr)
);


insert into AP_Student VALUES(0,'Wouter Mauriën', 'qwerty', 'n');
insert into AP_Student VALUES(1,'Jeroen Streulens', 'azerty', 'n');
insert into AP_Student VALUES(2, 'Mathias Wens', 'ikkomuitdekast', 'n');
insert into AP_Docent VALUES (0,'Den Herman','unix');
insert into AP_Docent VALUES (1,'Dessie','sponzenridder');