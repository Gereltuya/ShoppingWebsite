<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ResponsiveWebSite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <div class="form-horizontal" method="post" runat="server" > 
                    <fieldset>
                        <legend class="text-center header">Contact us</legend>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:Textbox ID="fname" name="name" runat="server" type="text" placeholder="First Name" class="form-control" MaxLength="50" OnTextChanged="fname_TextChanged"></asp:Textbox>
                                <!--   <asp:TextBox ID="tbUname" runat="server" class="form-control" placeholder="Username"></asp:TextBox>-->
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox ID="lname" name="name" runat="server" type="text" placeholder="Last Name" class="form-control" MaxLength="50"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:RequiredFieldValidator ID="enterEmail" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an email address" ControlToValidate="email">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="EnterValidEmailAddress" runat="server" ControlToValidate="email" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="email" name="email" runat="server" type="text" placeholder="Email Address" class="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:RequiredFieldValidator ID="Confirm_EmailAddress" runat="server" ControlToValidate="confirm_email" Display="Dynamic" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="email" ErrorMessage="The e-mail address don't match" ControlToValidate="confirm_email"></asp:CompareValidator>
                                <asp:TextBox ID="confirm_email" name="email_validate" runat="server" type="text" placeholder="Confirm Email Address" class="form-control" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">

                               <!--When you added the "CustomerValidator control, you set up two event handlers, one for the client-side and one for the 
                                   server side validation check  -->  
                                <asp:CustomValidator ID="phoneHomeValidator" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="phoneHomeValidator_ServerValidate">*</asp:CustomValidator>
                                <asp:TextBox  ID="phoneHome" name="phone" runat="server" type="text" placeholder="Home Phone Number" class="form-control" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox  ID="phoneBusiness" name="phone" runat="server" type="text" placeholder="Business Phone Number" class="form-control" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:RequiredFieldValidator ID="EnterComment" runat="server" ControlToValidate="message" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
                                <asp:TextBox class="form-control" ID="message" runat="server" name="message" placeholder="Enter your massage for us here. We will get back to you within 2 business days." rows="7" MaxLength="1000" TextMode="MultiLine">Enter a comment</asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <div class="form-horizontal" />
                                <asp:Button ID="btnSubmit" runat="server" type="submit" Text="Submit" class="btn btn-primary btn-lg" OnClick="btnSubmit_Click" ></asp:Button>

                                
                            </div>
                        </div>
                    </fieldset>
                    <br />
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <asp:ValidationSummary ID="ErrorSummary" runat="server" CssClass="ErrorMessage" HeaderText="Please corrent the following errors" ShowMessageBox="True" ShowSummary="False" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
                </div>
        </div>
    </div>

    <script> 

        function validatePhoneNumbers(source, args) {

            // in JavaScriot, it is common to write method names using camel casing, where the first word of the method name is written 
            // in lower case, followed by words with the first letter in uppercase 

            var phoneHome = document.getElementById('<%=phoneHome.ClientID%>');
            var phoneBusiness = document.getElementById('<%=phoneBusiness.ClientID %>');

            if (phoneHome.value != '' || phoneBusiness.value != '') {
                args.IsValid = true;
            }

            else { args.IsValid = false;}
        }
    </script>
<style>
    .header {
        color: #36A0FF;
        font-size: 27px;
        padding: 10px;
    }

    .bigicon {
        font-size: 35px;
        color: #36A0FF;
    }
</style>



</asp:Content>
