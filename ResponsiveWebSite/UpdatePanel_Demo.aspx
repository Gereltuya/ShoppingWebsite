<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeBehind="UpdatePanel_Demo.aspx.cs" Inherits="ResponsiveWebSite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> <!--- 
        This is important AJAX extension control. 
        The "ScriptManager"- is requirement for most Ajax functionality in an ASPX page to operate correctly. 
        It serves as the bridge between the client page
        and the Microsofr ASP.NET AJAX Framework and takes care of the things 
        like registering the correct JavScript files that are used in the browser. 

        --> 
    <!--- by wrapping the content in an UpdatePanel,
         region is defined in page that can be refreshened without affecting the entire page
        --> 

    <asp:UpdatePanel runat="server">
        
         
        <ContentTemplate>

    <asp:Label ID="Label1" runat="server"></asp:Label>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" /> <!--
            Button control inside the UpdatePanel caused a postback and thus a refres of just a region i which the control is defined.
            Rather than replacing the entire page, only the part of the page that is wrapped in the UpdatePanel is refreshed, 
            causing a flicker free reload page. 
            -->
    </p>
            </ContentTemplate>
        </asp:UpdatePanel>

</asp:Content>
