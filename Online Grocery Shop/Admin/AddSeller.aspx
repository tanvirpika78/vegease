<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/GSADMIN.master" AutoEventWireup="true" CodeFile="AddSeller.aspx.cs" Inherits="Admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <fieldset class="fieldsetmain">
        <legend style="font-size: 16px;">SELLER MANAGEMENT</legend>
        <div style="overflow: auto">
            <div align="center" style="height: 30px;">
                <asp:Label ID="lblMsg" runat="server" CssClass="lblresponse" />
            </div>
            <div align="center" style="margin-bottom:40px;">
                <fieldset class="fieldsetsub">
                    <legend>Create Seller Login</legend>
                    <table>
                        <tr>
                            <td>Seller Name:</td>
                            <td><asp:TextBox ID="txtAuser" runat="server" /></td>
                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAuser" ForeColor="#990000" ErrorMessage="Seller Name Required" /></td>
                        </tr>
                        <tr>
                            <td>Seller Password:</td>
                            <td><asp:TextBox ID="txtApwd" runat="server" TextMode="Password"/></td>
                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApwd" ForeColor="#990000" ErrorMessage="Password Required" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><asp:Button ID="btnAddSeller" runat="server" Text="Add Seller" CssClass="button" OnClick="btnAddSeller_Click" /></td>
                        </tr>
                    </table>
                </fieldset>
            </div>
            <div align="center">
                <asp:GridView ID="gvSeller" runat="server" Width="850px" CaptionAlign="Top"
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Vertical"
                    EmptyDataText="There Are No More Sellers" OnRowDeleting="gvSeller_RowDeleting">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:TemplateField HeaderText="Seller ID">
                            <ItemTemplate>
                                <asp:Label ID="lblAid" runat="server" Text='<%# Eval("SellerID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Seller Username">
                            <ItemTemplate>
                                <asp:Label ID="lblAname" runat="server" Text='<%# Eval("SellerName") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Seller Password">
                            <ItemTemplate>
                                <asp:Label ID="lblApwd" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" DeleteText="Remove" />
                    </Columns>
                    <EmptyDataRowStyle BackColor="#eeeeee" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="Large" ForeColor="#003104" HorizontalAlign="Center" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#003104" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#003104" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </div>
        </div>
    </fieldset>
</asp:Content>
