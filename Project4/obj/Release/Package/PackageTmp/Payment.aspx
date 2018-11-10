<%@ Page Title="" Language="C#" MasterPageFile="~/GreenGateway.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Project4.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="header-form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h1 class="title">Make Payment</h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Body -->
    <div class="body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h3 class="smallTitle">Payment Details</h3>
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
                    <asp:Label ID="lblPayment" runat="server" Text="Payment Amount: "></asp:Label>
                </div>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPayment" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <asp:RequiredFieldValidator ForeColor="#CC0000" ID="rfvAmount" runat="server" ErrorMessage="Limit Field May Not Be Left Emply" ControlToValidate="txtPayment">*</asp:RequiredFieldValidator>
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
