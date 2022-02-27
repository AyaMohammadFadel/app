<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudReg.aspx.cs" CodeFile="~/StudReg.aspx.cs" Inherits="my_app_aya.StudReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        textbox{
            align-content:center;
        }
        .auto-style4 {
            height: 24px;
        }
         .auto-style5 {
             height: 26px;
         }
         .auto-style6 {
             width: 440px;
         }
         .auto-style7 {
             height: 26px;
             width: 440px;
         }
         .auto-style8 {
             height: 35px;
             width: 440px;
         }
         .auto-style9 {
             width: 100px;
         }
         .auto-style10 {
             height: 26px;
             width: 100px;
         }
         .auto-style11 {
             height: 35px;
             width: 100px;
         }
         .auto-style14 {
             height: 35px;
             width: 226px;
         }
         .auto-style15 {
             width: 226px;
         }
         .auto-style16 {
             height: 26px;
             width: 226px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div>


              <%--البيانات الشخصية--%>
            <asp:Panel ID="p_sInfo" runat="server"  GroupingText="البيانات الشخصية" Direction="RightToLeft">
                <table dir="ltr" class="auto-style1">

                    <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_name_ar" runat="server" ControlToValidate="txt_sName_ar" ErrorMessage="برجاء ادخال الاسم كامل باللغة العربية" SetFocusOnError="True" ValidationGroup="registration" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sName_ar" runat="server" align="right"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sName_ar" runat="server" Text="الإسم كاملا باللغة العربية"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_name_en" runat="server" ControlToValidate="txt_sName_en" ErrorMessage="برجاء ادخال الاسم كامل باللغة الإنجليزية كما سيظهر بالشهادة" SetFocusOnError="True" ValidationGroup="registration">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sName_en" runat="server" align="right"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sName_en" runat="server" Text="الإسم كاملا باللغة الإنجليزية"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_fname" runat="server" ControlToValidate="txt_sName_fn" ErrorMessage="برجاء ادخال الاسم الأول باللغة الإنجليزية" SetFocusOnError="True" ValidationGroup="registration">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sName_fn" runat="server" align="right"></asp:TextBox>

                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sName_fn" runat="server" Text="الإسم الأول باللغة الإنجليزية"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_Lnzme" runat="server" ErrorMessage="برجاء ادخال الاسم الأخير باللغة الإنجليزية" ControlToValidate="txt_sName_ln" SetFocusOnError="True" ValidationGroup="registration">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txt_sName_ln" runat="server" align="right"></asp:TextBox>

                        </td>
                        <td class="auto-style16">
                            <asp:Label ID="lbl_sName_ln" runat="server" Text="الإسم الأخير باللغة الإنجليزية"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                        <td class="auto-style9">
                            <asp:RadioButton ID="rb_sMale" runat="server"  TextAlign="Left" Text="ذكر" GroupName="gender" Checked="True" />
                            <asp:RadioButton ID="rb_sFemale" runat="server"  TextAlign="Left" Text="أنثى" GroupName="gender" />
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sGender" runat="server" Text="النوع"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style7"></td>
                        <td class="auto-style10">
                            <asp:RadioButton ID="rb_sNationality_other"  Font-Size="Small" runat="server"  Text="غير مصري" GroupName="nationality" OnCheckedChanged="rb_sNationality_other_CheckedChanged" AutoPostBack="true" TextAlign="Left"  />
                         </td>
                        <td class="auto-style16">
                            <asp:RadioButton ID="rb_sNationality_egy" runat="server"  size="small" Text="مصري"  GroupName="nationality"  OnCheckedChanged="rb_sNationality_egy_CheckedChanged" AutoPostBack="true" TextAlign="Left" Checked="True" />
                           
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="lbl_sNationality" runat="server"  Text="الجنسية"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_nid" runat="server" ControlToValidate="txt_sNid" SetFocusOnError="True" ErrorMessage="برجاء ادخال الرقم  القومي" ValidationGroup="registration" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator_nid" runat="server" ControlToValidate="txt_sNid" ErrorMessage="برجاء ادخال الرقم القومي صحيح" ValidationExpression="^[0-9]{14}$" SetFocusOnError="True" ValidationGroup="registration" Display="Dynamic" ForeColor="Red"> برجاء ادخال الرقم القومي صحيح </asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sNid" runat="server" align="right" MaxLength="14"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sNid" runat="server" Text="الرقم القومي" Enabled="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_npassport" runat="server" ControlToValidate="txt_sPassport" SetFocusOnError="True" ErrorMessage="برجاء ادخال جواز السفر" ValidationGroup="registration" Visible="False">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sPassport" runat="server" align="right" Enabled="False" Visible="False"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sPassport" runat="server" Text="رقم جواز السفر" Enabled="False"></asp:Label>

                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_sMail" runat="server" ErrorMessage="برجاء ادخال البريد الاكتروني (الايميل)" ControlToValidate="txt_sMail" SetFocusOnError="True" ValidationGroup="registration">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator_mail" runat="server" ControlToValidate="txt_sMail" ErrorMessage="برجاء ادخال ايميل صحيح" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True" ValidationGroup="registration" ForeColor="Red">(________@____)برجاء ادخال الايميل صحيح </asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style11">
                            <asp:TextBox ID="txt_sMail" runat="server" align="right" Height="22px"></asp:TextBox>
                        </td>
                        <td class="auto-style14">
                            <asp:Label ID="lbl_sMail" runat="server" Text="   (email) البريد الإلكتروني "></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_sPass" runat="server" ControlToValidate="txt_sPassword" SetFocusOnError="True" ValidationGroup="registration" Display="Dynamic" ErrorMessage="برجاء تحديد كلمة مرور">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator_sPass" runat="server" ErrorMessage="كلمة السر يجب ان لا تقل عن 8 احرف" ControlToValidate="txt_sPassword" ValidationExpression="^.*(?=.{8,}).*$" Display="Dynamic">كلمة السر يجب ان لا تقل عن 8 احرف</asp:RegularExpressionValidator>
                         </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sPassword" runat="server" align="right"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sPassword" runat="server" Text="كلمة المرور "></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_aRepass" runat="server" ErrorMessage="برجاء اعادة ادخال كلمة المرور صحيحة" ControlToValidate="txt_sRe_Password" SetFocusOnError="True" ValidationGroup="registration">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator_sRe_Password" runat="server" ControlToCompare="txt_sPassword" ControlToValidate="txt_sRe_Password" Display="Dynamic" ErrorMessage="كلمة السر غير متطابقة" ValidationGroup="registration" ForeColor="Red"></asp:CompareValidator>
                         </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sRe_Password" runat="server" align="right"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sRe_Password" runat="server" Text="تأكيد كلمة المرور "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator_sPhone" Display="Dynamic" runat="server" ErrorMessage="برجاء ادخال رقم هاتف الواتس أب" ControlToValidate="txt_sMobile" SetFocusOnError="True"    ValidationGroup="registration">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularFieldValidator_sPhone" runat="server" ControlToValidate="txt_sMobile" ErrorMessage="برجاء كتابة رقم الهاتف  صحيح" ValidationExpression="^[0-9]+$" SetFocusOnError="True" ValidationGroup="registration" Display="Dynamic" ForeColor="Red"> رجاء كتابة رقم الهاتف  صحيح </asp:RegularExpressionValidator>
                        </td>
                        
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sMobile" runat="server" align="right"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sMobile" runat="server" Text="  (whatsapp mobile) الهاتف ">
                                
                            </asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_sJob" runat="server" align="right"></asp:TextBox>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="lbl_sJob" runat="server" Text="الوظيفة الحالية "></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>

              <%--بيانات المؤهل--%>
               <asp:Panel ID="p_sQual" runat="server"  GroupingText=" بيانات المؤهل" Direction="RightToLeft">
            <table dir="ltr" class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">

                        <asp:DropDownList ID="ddl_sQaul_uni" runat="server" DataSourceID="all_universities" DataTextField="university_name_Ar" DataValueField="University_id"  >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="all_universities" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [University_id], [university_name_Ar] FROM [University]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="university" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [university_name_Ar], [University_id] FROM [University] WHERE ([University_id] = @University_id)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="University_id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lbl_sQaul_uni" runat="server" Text=" الجامعة "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                         <asp:DropDownList ID="ddl_sQaul_fac" runat="server" DataSourceID="faculty" DataTextField="Facuty_name_Ar" DataValueField="Faculty_ID"  >
                        </asp:DropDownList>
                         <asp:SqlDataSource ID="faculty" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString  %>" SelectCommand="SELECT [Faculty_ID], [Facuty_name_Ar] FROM [Faculties]"></asp:SqlDataSource>
                    </td>
                    <td>
                         <asp:Label ID="lbl_sQaul_fac" runat="server" Text=" الكلية "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                         <asp:DropDownList ID="ddl_sQaul_dgree" runat="server" DataSourceID="degree" DataTextField="Degree_name_Ar" DataValueField="Degree_id"   >
                        </asp:DropDownList>
                         <asp:SqlDataSource ID="degree" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [Degree_id], [Degree_name_Ar] FROM [Degrees]"></asp:SqlDataSource>
                    </td>
                    <td>
                          <asp:Label ID="lbl_sQaul_dgree" runat="server" Text=" الدرجة العلمية "></asp:Label>
                    </td>
                </tr>
                  </table>
                   </asp:Panel>
                    <%--بيانات التسجيل--%>
             <asp:Panel ID="p_sReg" runat="server"  GroupingText=" بيانات التسجيل" Direction="RightToLeft">
            <table dir="ltr" class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">

                        <asp:DropDownList ID="ddl_sReg_uni" runat="server" DataSourceID="university"  DataTextField="university_name_Ar" DataValueField="University_id">
                            <asp:ListItem Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [university_name_Ar], [University_id] FROM [University] WHERE ([University_id] = @University_id)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="University_id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="lbl_sReg_uni" runat="server" Text=" الجامعة "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                         <asp:DropDownList ID="ddl_sReg_fac" runat="server" DataSourceID="faculty" DataTextField="Facuty_name_Ar" DataValueField="Faculty_ID"  >
                        </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [Faculty_ID], [Facuty_name_Ar] FROM [Faculties]"></asp:SqlDataSource>
                    </td>
                    <td>
                         <asp:Label ID="lbl_sReg_fac" runat="server" Text=" الكلية "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                         <asp:DropDownList ID="ddl_sReg_degree" runat="server" DataSourceID="degree" DataTextField="Degree_name_Ar" DataValueField="Degree_id"   >
                        </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dtuConnectionString %>" SelectCommand="SELECT [Degree_id], [Degree_name_Ar] FROM [Degrees]"></asp:SqlDataSource>
                    </td>
                    <td>
                          <asp:Label ID="lbl_sReg_degree" runat="server" Text=" الدرجة العلمية "></asp:Label>
                    </td>
                </tr>
                  </table>
                   </asp:Panel>
               <table>
                   <tr>
                       <td>
                           <asp:Button ID="btn_reg" runat="server" OnClick="btn_reg_Click" Text="click" ValidationGroup="registration" Width="143px" />
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:ValidationSummary ID="ValidationSummary_registration" ValidationGroup="registration" runat="server" Height="38px" HeaderText="Errors" ForeColor="Red" />
                       </td>
                       <td>
                           <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       </td>
                   </tr>
               </table>

        </div>

    </form>

   
</body>

</html>
