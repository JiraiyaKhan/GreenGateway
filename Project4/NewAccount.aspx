<%@ Page Title="" Language="C#" MasterPageFile="~/GreenGateway.Master" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="Project4.NewAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="header-form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h1 class="title">Create New Account</h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Body Text -->
    <div class="body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h3 class="smallTitle">Account Info</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <asp:Label ID="lblError" ForeColor="#CC0000" runat="server" Text="Status"></asp:Label>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvFirstName" runat="server" ControltoValidate="txtFirstName" ErrorMessage="First Name Field May Not Be Left Emply">*</asp:RequiredFieldValidator>
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
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblLimit" runat="server" Text="Limit: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtLimit" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvLimit" runat="server" ErrorMessage="Limit Field May Not Be Left Emply" ControlToValidate="txtLimit">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Label ID="lblBalance" runat="server" Text="Balance: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvBalance" runat="server" ErrorMessage="Balance Field May Not Be Left Emply" ControlToValidate="txtBalance">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:ValidationSummary ID="valErrorList" runat="server" ForeColor="#CC0000" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="btnSubmit" runat="server" class="SubmitButton" Text="Submit" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
