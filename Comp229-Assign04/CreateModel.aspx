<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CreateModel.aspx.cs" Inherits="Comp229_Assign04.CreateModel" %>

<%-----------------
   Phuong Linh Pham
    300923800
    Assignment 04
 -----------------%>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server">
    <div class="container">
        <h1 class="display-2" style="font-family:Rockwell">Create new model</h1>
        <p class="lead">Please fill in the following form to create new model</p>
            
        <div class="row">
            <div class="col-md-4">
                <asp:Label ID="lbName" runat="server" Text="Name: " />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbName" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbFaction" runat="server" Text="Faction: " />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbFaction" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbRank" runat="server" Text="Rank: " />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbRank" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbBase" runat="server" Text="Base: " />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbBase" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbSize" runat="server" Text="Size: " />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbSize" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbDZone" runat="server" Text="Deployment Zone" />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbDZone" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbMobility" runat="server" Text="Mobility" />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbMobility" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbWillpower" runat="server" Text="Willpower" />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbWillpower" runat="server" />
            </div>
            <div class="col-md-4">
                <asp:Label ID="lbResiliance" runat="server" Text="Resiliance" />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbResiliance" runat="server" />
            </div>
             <div class="col-md-4">
                <asp:Label ID="lbWounds" runat="server" Text="Wounds" />
            </div>
            <div class="col-md-8">
                <asp:TextBox ID="tbWounds" runat="server" />
            </div>
            <div class="col-md-6">
                   <asp:Button ID="createModel" Text="Create" CssClass="btn btn-warning" runat="server" OnClick="createModel_Click" />
            </div>
            <div class="col-md-6">
               <asp:Button ID="cancelBtn" Text="Cancel" CssClass="btn btn-danger" runat="server" OnClick="cancelBtn_Click" />            
            </div>

               <div style="color:red" id="errorMsg" runat="server"></div>
    </div>
        </div>
</asp:Content>
