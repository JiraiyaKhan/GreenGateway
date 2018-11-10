<%@ Page Title="" Language="C#" MasterPageFile="~/GreenGateway.Master" AutoEventWireup="true" CodeBehind="CreateTransaction.aspx.cs" Inherits="Project4.CreateTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="header-form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h1 class="title">Create Transaction</h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Body -->
    <div class="body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h3 class="smallTitle">Account Info</h3>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-7">
                    <asp:Label ID="lblError" ForeColor="#CC0000" runat="server" Text="Status"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvFirstName" runat="server" ControltoValidate="txtFirstName" ErrorMessage="First Name Field May Not Be Left Emply">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvFirstName" runat="server" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="First Name Field Must Be A Valid Name" ControlToValidate="txtFirstName">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvLastName" runat="server" ErrorMessage="Last Name Field May Not Be Left Emply" ControlToValidate="txtLastName">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvLastName" runat="server" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="Last Name Field Must Be A Valid Name" ControlToValidate="txtLastName">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblBillingAddress" runat="server" Text="Billing Address: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtBillingAddress" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvBillingAddress" runat="server" ErrorMessage="Billing Address Field May Not Be Left Emply" ControlToValidate="txtBillingAddress">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblCity" runat="server" Text="City: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvCity" runat="server" ErrorMessage="City Field May Not Be Left Emply" ControlToValidate="txtCity">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvCity" runat="server" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="City Field Must Be A Valid Name" ControlToValidate="txtCity">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblState" runat="server" Text="Sate: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvState" runat="server" ErrorMessage="State Field May Not Be Left Emply" ControlToValidate="txtState">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvState" runat="server" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="State Field Must Be A Valid Name" ControlToValidate="txtState">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblZip" runat="server" Text="Zip: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvZip" runat="server" ErrorMessage="Zip Field May Not Be Left Emply" ControlToValidate="txtZip">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvZip" runat="server" ValidationExpression="^(\d{5}-\d{4}|\d{5}|\d{9})$|^([a-zA-Z]\d[a-zA-Z] \d[a-zA-Z]\d)$" ErrorMessage="Zip Field Must Be A Valid Zip" ControlToValidate="txtZip">*</asp:RegularExpressionValidator>
                     </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-7">
                    <h3 class="smallTitle">Card Info</h3>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblCardNumber" runat="server" Text="Card Number: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvCardNumber" runat="server" ErrorMessage="Card Number Field May Not Be Left Emply" ControlToValidate="txtCardNumber">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvCardNumber" runat="server" ErrorMessage="Card Field Must Be A Valid Number" ValidationExpression="^\d+$" ControlToValidate="txtCardNumber">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblExp" runat="server" Text="Expiry Date: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtExp" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvExp" runat="server" ErrorMessage="Expiry Date Field May Not Be Left Emply" ControlToValidate="txtExp">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvExp" runat="server" ValidationExpression="^(0[1-9]|1[0-2])/\d{2}$" ErrorMessage="Expiry Date Must Be In Format (dd/yy)" ControlToValidate="txtExp">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblCVV" runat="server" Text="CVV: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCVV" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvCVV" runat="server" ErrorMessage="CVV Field May Not Be Left Emply" ControlToValidate="txtCVV">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvCVV" runat="server" ValidationExpression="^[0-9]{3,4}$" ErrorMessage="CVV Field Must Be A Valid CVV" ControlToValidate="txtCVV">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblAmount" runat="server" Text="Amount: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvAmount" runat="server" ErrorMessage="Amount Field May Not Be Left Emply" ControlToValidate="txtAmount">*</asp:RequiredFieldValidator>
                    
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblDate" runat="server" Text="Date: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvDate" runat="server" ErrorMessage="Date Field May Not Be Left Emply" ControlToValidate="txtDate">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="#CC0000" ID="rgvDate" runat="server" ValidationExpression="^(0[1-9]|1[0-2])/\d{2}$" ErrorMessage="Date Must Be In Format (dd/yy)" ControlToValidate="txtDate">*</asp:RegularExpressionValidator>
                </div>
            </div>            
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:ValidationSummary ID="valErrorList" runat="server" ForeColor="#CC0000" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="btnSubmit" runat="server" class="SubmitButton" Text="Submit" OnClick="btnSubmit_Click"/>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
