using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace my_app_aya
{
    public class StudentBL
    {
        public static int Insert(Student stud)
        {
            //var query = $"insert into Employees values ('{emp.Name}',{emp.Age},{emp.Salary},{emp.DeptId})";
            //var query = $"insert into Employees values (@name,@age,@salary,@deptid)";
            var query = "InsertNewStudent";

            SqlParameter[] parameters = new SqlParameter[]
            {

                // new SqlParameter("@Stud_id",stud.Id),
                 new SqlParameter("@Stud_name_ar",stud.NameAr),
                 new SqlParameter("@Stud_name_en ",stud.NameEn),
                 new SqlParameter("@Stud_Fname_en",stud.Fname),
                 new SqlParameter("@Stud_Lname_en",stud.Lname),
                 new SqlParameter("@stud_gender_id",stud.Gender_id),
                 new SqlParameter("@Stud_nid",stud.Nid),
                 new SqlParameter("@Stud_phone",stud.Mobile),
                 new SqlParameter("@Qual_university_id",stud.Qual_uni_id),
                 new SqlParameter("@Qual_faculty_id",stud.Qual_fac_id),
                 new SqlParameter("@Qual_Degree_id",stud.Qual_degree_id),
                 new SqlParameter("@Reg_university_id",stud.Reg_uni_id),
                 new SqlParameter("@Reg_faculty_id",stud.Reg_fac_id),
                 new SqlParameter("@Reg_degree_id",stud.Reg_degree_id),
                 new SqlParameter("@stud_job",stud.Job),
               //  new SqlParameter("@Group_id",stud.Group_id),
              //   new SqlParameter("@stud_exam_lang",stud.Exam_lang),
              //   new SqlParameter("@stud_Is_blocked",stud.Is_blocked),
              //   new SqlParameter("@stud_Is_active",stud.Is_active),
              //   new SqlParameter("@stud_Is_approved",stud.Is_approved),
              //   new SqlParameter("@stud_Is_join",stud.Is_join),
               //  new SqlParameter("@stud_Is_payment",stud.Is_payment),
               //  new SqlParameter("@stud_Is_success",stud.Is_success),
               //  new SqlParameter("@stud_user_exam",stud.User_eaxm),   
               //  new SqlParameter("@stud_pass_exam",stud.Pass_eaxm),
               new SqlParameter("@Type_id",stud.typeID),
               new SqlParameter("@Email",stud.mail),
               new SqlParameter("@Password",stud.password)
            };
            return DBManager.DMLfunction(query, parameters);

        }
    }
}