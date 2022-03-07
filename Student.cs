using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace my_app_aya
{
    
    public class Student
    {

        public int Id { get; set; }
        public string NameAr { get; set; }
        public string NameEn { get; set; }
        public string Fname { get; set; }
        public string Lname { get; set; }
        public int Gender_id { get; set; }
        public string Nid { get; set; }
        public string Mobile { get; set; }
        public int Qual_uni_id { get; set; }
        public int Qual_fac_id { get; set; }
        public int Qual_degree_id { get; set; }
        public int Reg_uni_id { get; set; }
        public int Reg_fac_id { get; set; }
        public int Reg_degree_id { get; set; }
        public string Job { get; set; }
        public int Group_id { get; set; }
        public string Exam_lang { get; set; }
        public int Is_blocked { get; set; }
        public int Is_active { get; set; }
        public int Is_approved { get; set; }
        public int Is_join { get; set; }
        public int Is_payment { get; set; }
        public int Is_success { get; set; }
        public string User_eaxm { get; set; }
        public string Pass_eaxm { get; set; }
        public int Account_ID { get; set; }
        public int Exam_ID { get; set; }
        public int TypeID { get; set; }
        public string Mail { get; set; }
        public string Password { get; set; }
    }
  
}
   
