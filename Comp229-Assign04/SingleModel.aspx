<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleModel.aspx.cs" Inherits="Comp229_Assign04.SingleModel" %>

<%-----------------
   Phuong Linh Pham
    300923800
    Assignment 04
 -----------------%>

<asp:Content ContentPlaceHolderID="MainContent" ID="Content" runat="server">
    <div class="container">
        <p class="characterName display-2">- <asp:Label ID="nameLbl" runat="server" /> -</p>
        <asp:Image CssClass="col-md-4 col-sx-12" Width="200px" ID="modelImage" runat="server" />
                <table class="table table-stripped col-md-8 col-xs-12">
                    <tr>
                        <td><strong>Faction:</strong> </td>
                        <td><asp:Label ID="factionLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Rank: </strong> </td>
                         <td><asp:Label ID="rankLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Base: </strong> </td>
                        <td><asp:Label ID="baseLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Size </strong></td>
                       <td><asp:Label ID="sizeLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Deployment Zone:</strong></td>
                         <td><asp:Label ID="deploymentZonelbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>- Traits: </strong></td>
                        <asp:Repeater ID="traitsRepeater" runat="server">
                            <ItemTemplate>
                                <td><%# Container.DataItem.ToString() %></td> 
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td><strong>- Types: </strong></td>
                        <asp:Repeater ID="typesRepeater" runat="server">
                            <ItemTemplate>
                                <td><%# Container.DataItem.ToString() %></td> 
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td class="special"><strong>Defensive chart</strong></td>
                    </tr>
                    
                    <asp:Repeater ID="defenseChartRepeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# (10 - Container.ItemIndex).ToString() %></td> 
                                <td><%# Container.DataItem.ToString() %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr>
                        <td><strong>Mobility:</strong></td>
                         <td><asp:Label ID="mobilityLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Willpower:</strong></td>
                         <td><asp:Label ID="willpowerLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Resiliance:</strong></td>
                         <td><asp:Label ID="resilianceLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Wounds:</strong></td>
                         <td><asp:Label ID="woundsLbl" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="special"><strong>Actions</strong></td>

                        <asp:Repeater ID="actionsRepeater" runat="server" >
                            <ItemTemplate>
                                <tr>
                                    <td><strong>- Name: </strong></td>
                                    <td><%# Eval("name") %></td>
                                   </tr>   
                                <tr>
                                    <td><Strong>- Type:</Strong> </td>
                                    <td><%# Eval("type") %></td>
                                    </tr>
                                <tr>
                                    <td><strong>- Rating: </strong></td>
                                    <td><%# Eval("rating") %></td>
                                    </tr>
                                <tr>
                                    <td><strong>- Range: </strong></td>
                                    <td><%# Eval("range") %></td>
                                    </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                    <tr>
                        <td class="special"><strong>Special Abilities</strong></td>
                        <asp:Repeater ID="specialAbilitiesRepeater" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><strong>- Name: </strong></td>
                                    <td><%# Eval("name") %></td>
                                </tr>
                                <tr>
                                    <td><strong>- Description: </strong></td>
                                    <td><%# Eval("description") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tr>
                </table>
        <asp:Button ID="updateBtn" runat="server" Text="Update" CssClass="btn btn-info" OnClick="updateBtn_Click" />
        <asp:Button ID="deleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="deleteBtn_Click" />
    </div>
</asp:Content>
