<%@ Page Title="" Language="C#" MasterPageFile="~/ass1/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="mainpagetxt" >
        <asp:AdRotator AdvertisementFile="~/ass1/Ad.xml" runat="server"  />
    </div>


    <div class="homepic">
        <img src="3.jpg" />
    </div>
    

    <div class="href">
        -------------------------------------------------------------------------------------------<br />
        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm" style="color:blue">Monash Disclaimer</a><br />
        E-mail:<a href="mailto:blei2@student.monash.edu" style="color:blue">Author</a><br />
        E-mail:<a href="mailto:blei2@student.monash.edu" style="color:blue">Webmaster</a><br />
        The acknowledgement of copyright is on page <a href="Documentation.aspx">Documentation</a>.<br /> 
        -------------------------------------------------------------------------------------------
    </div>

</asp:Content>
