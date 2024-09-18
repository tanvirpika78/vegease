<%@ Page Title="" Language="C#" MasterPageFile="~/GrocerySite.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">Our Location
            </legend>
            <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.5472398780134!2d90.3649711759916!3d23.799131878637144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c127e32f031b%3A0x6f32f506f6278c4b!2s897%2C%201%20Addorsso%20Rd%2C%20Dhaka%201216%2C%20Bangladesh!5e0!3m2!1sen!2sus!4v1721223195618!5m2!1sen!2sus" width="570" height="440" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <%--<img src="Images/map.png" alt="map" />--%>

                <div style="border-left: 300px; width: 50%; float: right">
                    <form style="margin: 0px; height: 279px";>
                       <legend style="font-size: 45px;
              text-shadow: 2px 1px 2px black;
              font-weight: bold;
              color: green;
              text-align: center;
              padding-bottom: 40px;">
    Query
</legend>


                        <style>
    /* Reset default table styling */
    table {
        border-collapse: collapse;
        width: 100%;
    }

    table, th, td {
        border: 1px solid white;
    }

    /* Style labels */
    label {
        display: inline-block;
        width: 120px; /* Adjust width as needed */
        font-weight: bold;
        margin-bottom: 5px;
    }

    /* Style textboxes */
    input[type=text], textarea {
        width: calc(100% - 10px);
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    /* Style buttons */
    .button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 200px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 4px;
    border: none;
    margin-left: 50px;
}

    /* Style validators */
    .validatorMessage {
        color: #990000;
        font-size: 12px;
    }

    .lblresponse {
        font-size: 16px;
        color: #333;
        font-weight: bold;
    }
</style>
                        <table>
                            <tr>
                                <td>
                                   <asp:Label ID="lblName" runat="server" Text="Name" style="font-size: 25px; font-weight: bold;"></asp:Label>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Rf33" runat="server" ErrorMessage="Required" ControlToValidate="txtname" ForeColor="#990000" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblEmail" runat="server" Text="Email ID" style="font-size: 25px; font-weight: bold;" ></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Rf2" runat="server" ForeColor="#990000" ErrorMessage="Required" ControlToValidate="txtEmail" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblContact" runat="server" Text="Contact Number" style="font-size: 25px; font-weight: bold;"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator  runat="server" ForeColor="#990000" ErrorMessage="Required" ControlToValidate="txtContact" />
                                </td>
                               

                            </tr>
                            <tr>
                                 
                                <td>
                                   <asp:Label ID="lblMessage" runat="server" Text="Message" Style="font-size: 25px; font-weight: bold;"></asp:Label>

                                <td>
                                    <asp:TextBox ID="txtMessage" runat="server" Height="95px" TextMode="MultiLine"></asp:TextBox></td>

                            </tr>
                            <tr align="center">
                                <td></td>
                                <td>
                                    <span style="float: left; text-align: left">
                                        <asp:Button ID="btnSendMsg" runat="server" Text="Send" CssClass="button" OnClick="btnSendMsg_Click" /><br />
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" runat="server" ForeColor="#990000" ErrorMessage="Email not valid" Display="Dynamic"></asp:RegularExpressionValidator><br />
                                        <asp:RequiredFieldValidator ID="Rf1" runat="server" ForeColor="#990000" ErrorMessage="Message Required" ControlToValidate="txtMessage" /><br />
                                        <asp:Label ID="lblresp" runat="server" CssClass="lblresponse" />
                                    </span>
                                </td>


                            </tr>
                        </table>
                    </form>
                </div>
            </div>

            <div>
                <div style="width: 290px; float: left">
                    <fieldset >
                        <legend>Address
                        </legend>
                        <b>Phone : 01842134593</b>
                        <p>
                            897/1, Adorsso Road, Mirpur</p>
                        <p>
                            Dhaka,1216</p>
                       
                    </fieldset>
                </div>
                <div style="width: 280px; float: left">
                    <fieldset style="width: 88%;">
                        <legend>Contact Information
                        </legend>

                        <p>
                            <b>Email :</b> vegease@gmail.com<br /><br /><br />
                            <b>Owner Name :</b> Tanvir Ahmed<br />
                        </p>
                    </fieldset>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>

