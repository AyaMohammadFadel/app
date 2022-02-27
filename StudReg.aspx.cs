using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace my_app_aya
{
    public partial class StudReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rb_sNationality_egy_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_sNationality_egy.Checked)
            {
                lbl_sNid.Enabled = true;
                txt_sNid.Enabled = true;
                txt_sNid.Visible = true;

                lbl_sPassport.Enabled = false;
                txt_sPassport.Enabled = false;
                /*txt_sPassport.Visible = false;*/

                RequiredFieldValidator_nid.Enabled = true;
                RequiredFieldValidator_npassport.Enabled = false;
            }
        }

        protected void rb_sNationality_other_CheckedChanged(object sender, EventArgs e)
        {
            if (rb_sNationality_other.Checked)
            {
                lbl_sPassport.Enabled = true;
                txt_sPassport.Enabled = true;
                txt_sPassport.Visible = true;

                lbl_sNid.Enabled = false;
                txt_sNid.Enabled = false;
                /* txt_sNid.Visible = false;*/

                RequiredFieldValidator_npassport.Enabled = true;
                RequiredFieldValidator_nid.Enabled = false;
            }
        }

        protected void btn_reg_Click(object sender, EventArgs e)
        {
           Student studentObj = new Student();
           

            if (!Page.IsValid)
            {
                return;

            }
            else
            {
                studentObj.NameAr = txt_sName_ar.Text;
                studentObj.NameEn = txt_sName_en.Text;
                studentObj.Fname = txt_sName_fn.Text;
                studentObj.Lname = txt_sName_ln.Text;

                
                if (rb_sFemale.Checked)
                {
                    studentObj.Gender_id = 1;
                }
                else
                    studentObj.Gender_id = 2;


                if (rb_sNationality_egy.Checked)
                {
                    studentObj.Nid = txt_sNid.Text;
                }
                else
                    studentObj.Nid = txt_sPassport.Text;

                studentObj.Mobile = txt_sMobile.Text;
                studentObj.mail = txt_sMail.Text;

                if (txt_sPassword.Text == txt_sRe_Password.Text)
                {
                    studentObj.password = txt_sPassword.Text;
                }

                studentObj.Qual_uni_id =int.Parse(ddl_sQaul_uni.SelectedValue);
                studentObj.Qual_fac_id =int.Parse(ddl_sQaul_fac.SelectedValue) ;
                studentObj.Qual_degree_id = int.Parse(ddl_sQaul_dgree.SelectedValue);

                studentObj.Reg_uni_id = int.Parse(ddl_sReg_uni.SelectedValue);
                studentObj.Reg_fac_id = int.Parse (ddl_sReg_uni.SelectedValue);
                studentObj.Reg_degree_id =  int.Parse(ddl_sReg_degree.SelectedValue);

                studentObj.Job = txt_sJob.Text;

                studentObj.Group_id = 0;

                studentObj.typeID = 1;

                int sendingObj = StudentBL.Insert(studentObj);
                Label1.Text = sendingObj.ToString();
            }
        }
    }
}