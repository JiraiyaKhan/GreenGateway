<%@ Page Title="" Language="C#" MasterPageFile="~/GreenGateway.Master" AutoEventWireup="true" CodeBehind="ViewAccount.aspx.cs" Inherits="Project4.ViewAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header -->
    <div class="header-form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h1 class="title">View Account</h1>
                </div>
            </div>
        </div>
    </div>

    <!-- Body -->
    <div class="body">
        <div class="container-fluid">
            <div class="row">
                <br />
                <div class="col-md-2">
                    <asp:Label ID="lblEnterCardNum" runat="server" Text="Enter Card Number:"></asp:Label>
                </div>
                <div class="col-md-1">
                    <asp:TextBox ID="txtSearch" ValidationGroup="vgSearch" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-1">
                    <asp:RequiredFieldValidator ID="rfvSearch" runat="server" ErrorMessage="Search Field May Not Be Left Empty" ControlToValidate="txtSearch">*</asp:RequiredFieldValidator>
                </div>
                <div class="col-md-1">
                    <asp:Button ID="btnTransactions" ValidationGroup="vgSearch" class="SubmitButton" runat="server" Text="Transactions" OnClick="btnTransactions_Click"/>
                </div>
            </div>
            <div class="row">
                <br />
                <div class="col-md-2">
                    <asp:Label ID="lblError" class="receipt" runat="server" Text="Staus"></asp:Label>
                </div>
            </div>
            <div class="row">
                <br />          
                <div class="col-md-3">
                    <asp:Button ID="btnDelete" class="deleteButton" runat="server" Text="Delete" OnClick="btnDelete_Click"/>
                    <asp:Label ID="lblDelete" runat="server" Text="(Delete/Deactivate Account)"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:GridView ID="gvTransactions" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="CardNumber" HeaderText="Card Number" />
                            <asp:BoundField DataField="Amount" DataFormatString="{0:c}" HeaderText="Amount" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
