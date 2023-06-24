declare 
    pv_name patient.p_name%type;
    pv_id patient.p_id%type;
    pv_branch patient.p_branch%type;
    pv_symptoms patient.p_symptoms%type;
    pv_age patient.p_age%type;
    pv_sex patient.p_sex%type;
    pv_hostel patient.p_hostel%type;
    pv_rn patient.p_rn%type;
    pv_mobile patient.p_mobile%type;

    dv_name doctor.d_name%type;
    dv_id doctor.d_id%type;
    dv_specs doctor.d_specs%type;
    dv_mobile doctor.d_mobile%type;

    sv_name staff.s_name%type;
    sv_id staff.s_id%type;
    sv_quali staff.s_quali%type;
    sv_mobile staff.s_mobile%type;

    mv_name medicine.m_name%type;
    mv_quantity medicine.m_quantity%type;
    mv_price medicine.m_price%type;
    mv_exp_date medicine.m_exp_date%type;
    
    num_doc number(2);
    num_staff number(2);
    num_medicine number(4);
    choice_one number(1);
    choice_two number(1);
    ch number(1);
    offline_v number(1);
    online_v number(1);
    counter number(3);
    final number(3);
    value number(3);
begin
    num_doc:=&number_of_doctors;
    for i in 1..num_doc loop
        dv_name:='&name_of_doctor';
        dv_id:=&id_of_doctor;
        dv_specs:='&Specializtions_of_doctor';
        dv_mobile:=&Mobile_Number_of_doctor;
        Insert_doctor(dv_name,dv_id,dv_specs,dv_mobile);
    end loop;
    num_staff:=&number_of_staff_members;
    for i in 1..num_staff loop
        sv_name:='&name_of_staff_member';
        sv_id:=&id_of_staff_member;
        sv_quali:='&Qualification_of_staff_member';
        sv_mobile:=&Mobile_Number_of_staff_member;
        Insert_staff(sv_name,sv_id,sv_quali,sv_mobile);
    end loop;
    num_medicine:=&number_of_medicines;
    for i in 1..num_medicine loop
        mv_name:='&name_of_medicine';
        mv_quantity:=&id_of_staff_member;
        mv_price:=&Price_of_medicine;
        mv_exp_date:=&Expiry_date_of_medicine;
        Insert_medicine(mv_name,mv_quantity,mv_price,mv_exp_date);
    end loop;
    dbms_output.put_line('Choices are : ');
    dbms_output.put_line('1. Patient: ');
    dbms_output.put_line('2. Doctor: ');
    dbms_output.put_line('3. Staff: ');
    dbms_output.put_line('4. Medicine: ');
    dbms_output.put_line('5. Assign: ');
    dbms_output.put_line('6. Prescribe: ');
    dbms_output.put_line('7. Check: ');
    choice_one:=&Enter_the_choice_from_above;
    dbms_output.put_line('Choices are : ');
    dbms_output.put_line('1. Insert: ');
    dbms_output.put_line('2. Delete: ');
    dbms_output.put_line('3. Update: ');
    choice_two:=&Enter_the_choice_from_above;
    if(choice_one=1) then
        if(choice_two=1) then
            pv_name:='&name_of_patient';
            pv_id:=&id_of_patient;
            pv_branch:='&branch_of_patient';
            pv_symptoms:='&symptoms_of_patient';
            pv_age:=&age_of_patient;
            pv_sex:='&sex_of_patient';
            pv_hostel:='&hostel_of_patient';
            pv_rn:=&room_number_of_patient;
            pv_mobile:=&mobile_number_of_patient;
            Insert_patient(pv_name,pv_id,pv_branch,pv_symptoms,pv_age,pv_sex,pv_hostel,pv_rn,pv_mobile);
        elsif(choice_two=2) then
            pv_id:=&id_of_patient;
            Delete_patient(pv_id);
        elseif(choice_two=3) then  
            pv_id:=&id_of_patient;
            pv_mobile:=&Enter_your_new_mobile_number;
            Update_patient(pv_id,pv_mobile);
        else
            dbms_output.put_line('Please enter a valid option');
        end if;
    elsif(choice_one=2) then 
        if(choice_two=1) then
            dv_name:='&name_of_doctor';
            dv_id:=&id_of_doctor;
            dv_specs:='&Specializtions_of_doctor';
            dv_mobile:=&Mobile_Number_of_doctor;
            Insert_doctor(dv_name,dv_id,dv_specs,dv_mobile);
        elsif(choice_two=2) then
            dv_id:=&id_of_doctor;
            Delete_doctor(dv_id);
        elseif(choice_two=3) then  
            dv_id:=&id_of_doctor;
            dv_mobile:=&Enter_your_new_mobile_number;
            Update_doctor(dv_id,dv_mobile);
        else
            dbms_output.put_line('Please enter a valid option');
        end if;
    elsif(choice_one=3) then
        if(choice_two=1) then
            sv_name:='&name_of_staff_member';
            sv_id:=&id_of_staff_member;
            sv_quali:='&Qualification_of_staff_member';
            sv_mobile:=&Mobile_Number_of_staff_member;
            Insert_staff(sv_name,sv_id,sv_quali,sv_mobile);
        elsif(choice_two=2) then
            sv_id:=&id_of_staff_member;
            Delete_staff(sv_id);
        elseif(choice_two=3) then  
            sv_id:=&id_of_staff_member;
            sv_mobile:=&Enter_your_new_mobile_number;
            Update_staff(sv_id,sv_mobile);
        else
            dbms_output.put_line('Please enter a valid option');
        end if;
    elsif(choice_one=4) then
        if(choice_two=1) then
            mv_name:='&name_of_medicine';
            mv_quantity:=&id_of_staff_member;
            mv_price:=&Price_of_medicine;
            mv_exp_date:=&Expiry_date_of_medicine;
            Insert_medicine(mv_name,mv_quantity,mv_price,mv_exp_date);
        elsif(choice_two=2) then
            mv_name:='&name_of_medicine';
            Delete_medicine(mv_name);
        elseif(choice_two=3) then 
            mv_name:='&name_of_medicine';
            mv_quantity:=&Enter_your_new_quantity;
            Update_medicine(mv_name,mv_quantity);
        else
            dbms_output.put_line('Please enter a valid option');
        end if;
    elsif(choice_one=5) then   
        if(choice_two=1) then
            dv_id:=&Enter_doctor_id;
            pv_id:=&Enter_patient_id;
            offline_v:=&Enter_Offline;
            online_v:=&Enter_Online;
            Insert_assign(dv_id,pv_id,offline_v,online_v);
        else    
            dbms_output.put_line('Please enter a valid option');
        end if;
    elsif(choice_one=6) then
        if(choice_two=1) then   
            dv_id:=&Enter_doctor_id;
            pv_id:=&Enter_patient_id;
            sv_id:=&Enter_staff_id;
            mv_name:='&Enter_medicine_name';
            Insert_prescribe(dv_id,pv_id,sv_id,mv_name);
        elsif(choice_two=3) then    
            dv_id:=&Enter_doctor_id;
            pv_id:=&Enter_patient_id;
            sv_id:=&Enter_staff_id;
            mv_name:='&Enter_medicine_name';
            Update_prescribe(dv_id,pv_id,sv_id,mv_name);
        else    
            dbms_output.put_line('Please enter a valid option');
        end if;
    elsif(choice_one=7) then
        mv_name:='&Enter_medicine_name';
        select m_quantity into counter from medicine where m_name=mv_name;
        final=Checker(mv_name,counter,value);
        dbms_output.put_line('Quantity available : ' | final);
    end if;
end;
commit
    
    