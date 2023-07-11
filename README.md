# Healthcare_Automation
DBMS Project to automate the dispensary of the University <br>
Below is the ER diagram of how Medicines, Doctors and Patients are connected.<br>
# Details about the project: <br>
Healthcare Management System is a database that is developed to facilitate the basic working of pharmacy here at Thapar Institute of Engineering and Technology. This project will help to store the student’s medical record, the doctors assigned to that student, and what medicines are prescribed for what underlying symptoms. This project will also help the staff to keep the record of medicines in their stock and provide them with the basic details like the amount of medicine present and their respective expiry dates. We are also trying to make a website for this project so that the basic things like booking an appointment and calling an ambulance (in case of emergencies) can be easily provided to the student here at Thapar. <br>
# Purpose:
Purpose:
As we know health is the most important thing in our life. So how we manage our health records should also be given the same importance. The purpose of developing a Healthcare Management system is to automate the ways followed to store the medical information of a student. We hope that this project would help our staff members and doctors to store the records in a proper and secure manner and the students should also be able to access their records easily.<br>
# Tables After Normalization: <br>
1.	Patient Table
Name 	Patient ID/ Roll Number 	Branch	Symptoms	Age	Sex	Hostel	Room Number	Mobile Number <br>
Primary key: Patient ID<br>

2.	Doctor Table<br>
Name	Doctor ID	Specialty	Mobile Number<br>
Primary key: Doctor ID<br>

3.	Staff Table
Name	Staff ID	Qualifications	Mobile Number<br>
Primary key: Staff ID<br>

4.	Medicine Stock Table
Name 	Quantity	Price	Expiry Date<br>
Primary key: Name<br>

5.	Assign Table
Doctor ID (FK)	Patient ID (FK)	Offline	Online<br>
Primary key: (Doctor ID, Patient ID)<br>

6.	Prescribe Table
Doctor ID (FK)	Patient ID (FK)	Staff ID (FK)	Medicine Name<br>
Primary key: (Doctor ID, Patient ID, Staff ID)<br>

# Images of the Procedures: <br>
1. Checker procedure<br>
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/a419fc66-f735-4b03-b740-29e047d65a00)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/6528ff8c-3047-4dc8-8ba3-180f2a13a28d)<br>
2. Doctor procedure and its calling<br>
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/5f9dcff1-3240-4ddd-b9b8-dba4dc7dbe5a)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/f99ba5da-19bb-408a-b11c-d980a81362c6)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/e53ff3b8-827c-4344-b996-bd4614a6efe3)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/8fc8dace-aee1-46df-8bae-07ef9d23c7d1)<br>
3. Patient procedure and its calling<br>
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/0fc20453-26d0-4389-8791-e9ad92f3069d)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/7dad1e2e-c017-4578-9403-95de79d7001d)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/8cd1342c-223c-418b-8c9f-b2dd5a4eddf6)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/39f98879-68f5-48ae-ba12-34494fef2a95)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/6bfa6249-eb6a-40e2-93d9-b41a5dcfe549)<br>
4. Medicine procedures and its calling <br>
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/a9cdac31-c807-4429-a341-daa4067f724b)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/b5514e35-2d78-4dca-86a3-f8bc6c81b1ae)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/13c0c927-218a-4e00-95c7-4850bab5cc3f)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/bc51eab5-a892-4c9c-b144-bfc27edd8ce7)<br>
5. Assign procedure and its calling<br>
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/bf7deb46-1a68-4dd6-abc2-b9e6b41867f6)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/6e02391c-7a19-4292-bf8e-89d1fcf35ee3)<br>
6. Prescribe procedure and its calling<br> 
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/11a490db-5baa-48fa-b7ff-2834858a0e85)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/69a8748b-c95d-4dc5-aa27-9b3200261e7a)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/1988af6f-8212-4e14-bdc1-29055739123d)<br>
7. Staff procedure and its calling<br> 
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/ba660794-df54-4ee7-b521-8414f15c82b6)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/5e1869bb-d1e7-41df-b681-976acaf6d2d7)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/1a7e3883-2bbd-4a8e-9f01-8ddeff4a93b6)
![image](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/60353023-9b1b-4b01-8870-c33d4be63ff3)<br>
# Entity-Relation Diagram for the DBMS project:<br>
![ER](https://github.com/anantmehta33/Healthcare_Automation/assets/87894541/c961da81-2d45-447d-83e0-e67f121f2ace)
