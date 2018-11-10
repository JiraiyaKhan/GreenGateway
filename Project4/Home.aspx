<%@ Page Title="" Language="C#" MasterPageFile="~/GreenGateway.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project4.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <!-- Header -->
    <div class="header-form">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <h1 class="title">Green Gateway</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <asp:Image ID="imgGreen" class="img" runat="server" ImageUrl="~/green.jpeg" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <h4 class="smallTitle"> An All Inclusive Solution</h4>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>
