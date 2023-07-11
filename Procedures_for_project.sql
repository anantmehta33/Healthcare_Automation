create table patient(p_name varchar2(20),p_id number(9),p_branch varchar2(20),p_symp varchar2(1000),p_age number(2),p_sex varchar2(2),p_hostel varchar2(5),p_rn number(3),p_mobile number(10),primary key (p_id));
create table doctor(d_name varchar2(20),d_id number(3),d_specs varchar2(1000),d_mobile number(10),primary key (d_id));
create table staff(s_name varchar2(20),s_id number(3),s_quali varchar2(1000),s_mobile number(10),primary key (s_id));
create table medicine(m_name varchar2(50),m_quantity number(3),m_price number(5),m_exp_date date,primary key (m_name));
create table assign(doc_id number(3),pat_id number(9),is_offline bit,is_online bit,foreign key (doc_id) references doctor(d_id),foreign key (pat_id) references patient(p_id) ON DELETE SET CASCADE,primary key(doc_id,pat_id));
create table prescribe(doc_id number(3),pat_id number(9),staff_id number(3),med_name varchar2(50),foreign key (doc_id) references doctor(d_id),foreign key (pat_id) references patient(p_id) ON DELETE SET CASCADE,foreign key (staff_id) references staff(s_id) ON DELETE SET CASCADE,primary key(doc_id,pat_id,staff_id));
create table checker(st_id number(3),medi_name_pres varchar2(50),available bit,foreign key (medi_name_pres) references prescribe(med_name) ON DELETE SET CASCADE,primary key(st_id,medi_name_pres));

create or replace procedure Insert_patient(name in varchar2(20),id in number(9),branch in varchar2(20),symp in varchar2(1000),age in number(2),sex in varchar2(2),hostel in varchar2(5),rn in number(3),mobile in number(10));
is
begin   
    insert into patient values(name,id,branch,symp,age,sex,hostel,rn,mobile);
end;
create or replace procedure Insert_doctor(name in varchar2(20),id in number(3),specs in varchar2(1000),mobile in number(10)) is
begin  
    insert into doctor values(name,id,specs,mobile);
end;
create or replace procedure Insert_staff(name in varchar2(20),id in number(3),quali in varchar2(1000),mobile in number(10)) is
begin  
    insert into staff values(name,id,quali,mobile);
end;
create or replace procedure Insert_medicine(name in varchar2(50),quantity in number(3),price in number(5),exp_date in date) is
begin  
    insert into medicine values(name,quantity,price,exp_date);
end;
create or replace procedure Delete_patient(id in number(9)) is  
begin   
    delete from patient where p_id=id;
end;
create or replace procedure Delete_doctor(id in number(3)) is  
begin   
    delete from doctor where d_id=id;
end;
create or replace procedure Delete_staff(id in number(3)) is  
begin   
    delete from staff where s_id=id;
end;
create or replace procedure Delete_medicine(name in varchar(50)) is  
begin   
    delete from medicine where m_name=name;
end;

    
create or replace procedure Insert_assign(doctor_id in number(3), patient_id in number(9), offline in bit, online in bit) is
begin
    insert into assign values(doctor_id, patient_id, offline, online);
end;
create or replace procedure Insert_prescribe(doctor_id in number(3), patient_id in number(9), staffs_id in number(3), medicine_name in varchar2(50)) is
begin   
    insert into prescribe values(doctor_id, patient_id, staffs_id, medicine_name);
end;
create or replace procedure Checker(medicine_name_pres in varchar2(50),c in number(3)) is
begin
    if(c=0) then
        return 0;
    else
        update medicine set m_quantity = m_quantity-1 where med_name=medicine_name;
        return m_quantity;
end;
create or replace procedure Update_prescribe(doctor_id in number(3),patient_id in number(9),staffer_id in number(3),medicine_name in varchar2(50)) is
begin
    update prescribe
        set med_name = medicine_name
        where pat_id= patient_id and doc_id=doctor_id and staff_id=staffer_id;
        commit;
end; 


create or replace procedure Update_patient(id in number(9),inputer in varchar2(100),ch in number(1)) is
begin
    declare
        mb number(10);
    if(c=1) then
        update patient set p_name=inputer where p_id=id;
    elseif(c=2)
        update patient set p_branch=inputer where p_id=id;
    elseif(c=3)
        update patient set p_symp=inputer where p_id=id; 
    elseif(c=4)
        update patient set p_hostel=inputer where p_id=id;  
    else
        select CAST(inputer as number(10)) into mb from dual;
    update patient set p_mobile=mb where p_id=id;
end; 

create or replace procedure Update_staff(id in number(3),mobile in number(10),ch in number(1)) is
begin
    declare
        mb number(10);
    if(c=1) then
        update staff set s_name=inputer where s_id=id;
    elseif(c=2)
        update staff set s_quali=inputer where s_id=id;
    else
        select CAST(inputer as number(10)) into mb from dual;
    update staff set s_mobile=mb where s_id=id;
end;

create or replace procedure Update_doctor(id in number(3),mobile in number(10),ch in number(1)) is
begin
    declare
        mb number(10);
    if(c=1) then
        update doctor set d_name=inputer where d_id=id;
    elseif(c=2)
        update doctor set d_specs=inputer where d_id=id;
    else
        select CAST(inputer as number(10)) into mb from dual;
    update doctor set d_mobile=mb where d_id=id;
end;

create or replace procedure Update_medicine(medicine_name in varchar2(50),medicine_qt in number(3)) is
begin
    update medicine set m_quantity=medicine_qt where m_name=medicine_name;
end;