<%@ Page Title="" Language="C#" MasterPageFile="~/ass1/MasterPage.master" %>

<script runat="server">

    protected void qq(object source,ServerValidateEventArgs args)
      {
        if (CheckBox1.Checked)
            args.IsValid = true;
            else
            args.IsValid = false;
        }


    private void rec(object sender, EventArgs e)
    {
        
        label2.Text = "";
        label3.Text = ""; 
        label4.Text = ""; 
        label5.Text = ""; 
        label6.Text = ""; 
        label7.Text = ""; 
        label8.Text = ""; 
        label9.Text = ""; 
        label10.Text = "";
        label12.Text = "";
        label13.Text = "";
        
        if (!(Page.IsValid))
        {
            return;
        }
        else
        {
            p1.Visible = true;
            label2.Text = "UserName:" + TextBox1.Text;
            label3.Text = "Password:" + TextBox2.Text;
            label4.Text = "Confirm Password:" + TextBox3.Text;
            label5.Text = "Name:" + Text1.Text;
            label6.Text = "Gender:" + Genderlist.SelectedValue;
            label7.Text = "Email:" + Text3.Text;
            label8.Text = "Re-Email:" + reemail.Text;
            label9.Text = "Phone:" + Text5.Text;
            label10.Text = "State:" + Statelist.SelectedValue;
            label12.Text = "Preference:" + drop1.SelectedValue;
            label13.Text = "Address:" + Text4.Text;
            
        }
    }    

   

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />





<div class="registtxt">

    <br /><br /><br />


    <asp:Label ID="nametxt" CssClass="a" Text="UserName:" runat="server"/>
    <asp:TextBox ID="TextBox1" runat="server" Text=""/><br />
    <asp:RequiredFieldValidator ID="vTextBox1" ControlToValidate="TextBox1" ErrorMessage="Please Enter UserName" runat="server"/>
    <p />


    <asp:Label ID="passwordtxt" CssClass="a" Text="Password:" runat="server"/>
    <asp:TextBox ID="TextBox2" runat="server" Text=""/><br />
    <asp:RequiredFieldValidator ID="vTextBox2" ControlToValidate="TextBox2"  ErrorMessage="Please Enter Password" runat="server" />
    <p/>
    

    <asp:Label ID="confirmPasswordtxt" CssClass="a" Text="Confirm Password:" runat="server"/>
    <asp:TextBox ID="TextBox3" runat="server" Text=""/><br />	
	<asp:RequiredFieldValidator ID="vTextBox3" ControlToValidate="TextBox3" ErrorMessage="Please re-Enter Password" runat="server"/><br />
	<asp:CompareValidator ID="comPassword" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Don't Match" runat="server"/><br />
    <p />

    
  -------------------------------------------------------<p />


    <asp:label ID="Name2txt" CssClass="a" runat="server" Text="Name:" />
    <asp:TextBox ID="Text1" runat="server" Text="" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Text1"  ErrorMessage="Please Enter Name" runat="server"/>
    <p />


    <asp:Label ID="Gendertxt" runat="server" Text="Gender:" CssClass="a" />
    <asp:RadioButtonList ID="Genderlist" runat="server"  >
    <asp:ListItem Selected="True">Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList> 
    <p />


    <asp:Label ID="Emailtxt" CssClass="a" runat="server" Text="Email:" />
    <asp:TextBox ID="Text3" runat="server"/><br />
    <asp:RequiredFieldValidator ID="vemail" ControlToValidate="Text3" ErrorMessage="Please Enter Email" runat="server" />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Text3" ValidationExpression=".*@.*\..*" runat="server"/>
    <p />


    <asp:Label ID="ReEmailtxt" CssClass="a" runat="server" Text="Re-Email:" />
    <asp:TextBox ID="reemail" runat="server"/><br />
    <asp:RequiredFieldValidator ID="vremail" ControlToValidate="reemail" ErrorMessage="Please re-Enter Email" runat="server" />
    <asp:CompareValidator ID="comEmail" ControlToCompare="Text3" ControlToValidate="reemail"  ErrorMessage="Email Address Don't Match" runat="server"/>
    <p />


    <asp:Label ID="Phonetxt" CssClass="a" runat="server" Text="Phone:" />
    <asp:TextBox ID="Text5" runat="server"/><br />
    <asp:RequiredFieldValidator ID="vPhone" ControlToValidate="Text5" ErrorMessage="Please enter your phone number" runat="server" />
    <asp:RangeValidator ID="rvPhone" ControlToValidate="Text5" MinimumValue="99999999" MaximumValue="900000000" Type="Integer" runat="server" />
    <p />


    <asp:Label ID="Statetxt" CssClass="a" runat="server" Text="State:" />
    <asp:DropDownList id="Statelist" runat="server" >
    <asp:ListItem Selected="True">Victoria</asp:ListItem>
    <asp:ListItem>New South Wales</asp:ListItem>
    <asp:ListItem>Queensland</asp:ListItem>
    <asp:ListItem>Canberra</asp:ListItem>
    <asp:ListItem>South Australia</asp:ListItem>
    <asp:ListItem>Northern Territory</asp:ListItem>
    </asp:DropDownList>
    <p />


    <asp:Label ID="Pre" runat="server" CssClass="a" Text="Preference:" />
    <asp:ListBox id="drop1" runat="server">
    <asp:ListItem selected="true">MIN 闵</asp:ListItem>
    <asp:ListItem>Xiang 湘</asp:ListItem>
    <asp:ListItem>Hui 徽</asp:ListItem>
    <asp:ListItem>Lu 鲁</asp:ListItem>
    <asp:ListItem>Yue 粤</asp:ListItem>
    <asp:ListItem>Su 苏</asp:ListItem>
    <asp:ListItem>Zhe 浙</asp:ListItem>
    <asp:ListItem>Chuan 川</asp:ListItem>
    </asp:ListBox>
    <p />



    <asp:Label ID="Addresstxt" CssClass="a" runat="server" Text="Address:" />
    <asp:TextBox ID="Text4" runat ="server" TextMode="MultiLine"/><br />
    <asp:RequiredFieldValidator ID="vAddress" ControlToValidate="Text4" ErrorMessage="Please enter your address" runat="server" />
    <p />


    <asp:Label ID="Label11" CssClass="a" runat="server" Text="Have read and agree to the agreement" />
    <asp:CheckBox ID="CheckBox1" runat="server"/><br/>
    <asp:CustomValidator ID="vCheckBox1" runat="server" onservervalidate="qq"/>
    <p />



    <asp:Button ID="button1" OnClick="rec" runat="server" Text="Register" /><br />
   


    -------------------------------------------------------<p />

</div>



<div class="divpanel">

    <asp:Panel ID="p1" runat="server" Visible="false">

    <table border="1" style="width:600px">
        <tr>
            <td>
            <asp:Label ID="label2" runat="server" Text="Username"/>
            </td>

            <td>
             <asp:Label ID="label3" runat ="server" Text="Password"/>
            </td>
        </tr>  
        
        <tr>     
            <td>
            <asp:Label ID="label4" runat ="server" Text ="Repassword"/>
            </td>

            <td>
            <asp:Label ID="label5" runat ="server" Text ="Name"/>
            </td>
        </tr>

         <tr>  
            <td>               
            <asp:Label ID ="label6" runat="server" Text ="Gender"/>
            </td>

            <td>
            <asp:Label ID="label7" runat ="server" Text="Email"/>
            </td>
         </tr>

         <tr>  
            <td>
            <asp:Label ID="label8" runat ="server" Text="Reemail"/>
            </td>
    
            <td>
            <asp:Label ID="label9" runat ="server" Text="Phone" />
            </td>
         </tr>

         <tr>  
            <td>
            <asp:Label ID="label10" runat ="server" Text="State"/>
            </td>

            <td>
            <asp:Label ID="label12" runat ="server" Text="Preference"/>
            </td>
         </tr>  


         <tr>        
            <td>
            <asp:Label ID="label13" runat ="server" Text="Address"/>
            </td>
         </tr>

        <tr>
            <td>
         <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm" style="color:blue">LINK US</a>
            </td>
        </tr>

     </table>
     </asp:Panel>
</div>





</asp:Content>