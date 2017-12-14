<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Comp229_Assign04.HomePage" %>

<%-----------------
   Phuong Linh Pham
    300923800
    Assignment 04
 -----------------%>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server" >
     <div class="container-fluid bg-1">
    </div>
    <br />
    <div class="container text-center">
        <fieldset>
        <legend>LIST OF MODELS</legend>
        <table class="table">
            <asp:Repeater ID="modelsRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><a id="modelLinks" href="<%# String.Format("SingleModel.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>"><%# "Name: " + Eval("name") + " | " + "Faction: " + Eval("faction") %></a></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr>
                <td><asp:Button ID="newModel" CssClass="btn btn-warning" Text="Create New Model" OnClick="newModel_Click" runat="server" /></td>
            </tr>
        </table>
       </fieldset>
        <div class="text-center contact">
        <p class="lead">Want an updated JSON file of models? Provide an email and your name and we'll send it to you!</p>
        <h3>Contact Us: </h3>
        <asp:Label ID="Username" runat="server" Text="Name:"> </asp:Label>
        <br />
        <asp:TextBox ID="nameText" CssClass="textbox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Usermail" runat="server" Text="Email:"></asp:Label>
        <br />
        <asp:TextBox ID="emailText"  CssClass="textbox" runat="server"></asp:TextBox>
        <br />

         <asp:Label ID="Message" runat="server" Text="Message:"> </asp:Label>
        <br />
        <asp:TextBox ID="messageText"  CssClass="textbox" runat="server" Height="116px"  Width="290px"></asp:TextBox>
        <br />
        <br />
         <asp:Button ID="sendMail" CssClass="btn btn-info" Text="Send" runat="server" OnClick="sendMail_Click" />
  
    </div>
            </div>
</asp:Content>
