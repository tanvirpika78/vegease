<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        .ErrorMsg {
            font-size: 12px;
            color: #851010;
            font-weight: bold;
        }

        input[type="text"] {
            height: 20px;
            width:12rem;
}
        }
        
}

        fieldset {
            border: 2px solid #808080;
            border-radius: 4px 4px;
            padding: 10px 10px;
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 35px;
            margin-top: 10px;
        }

        .adLogin {
            height: 50px;
            width: 50px;
            margin-top: 20px;
             margin-left: 150px;
        }

        .invalidlogin {
            color: #851010;
            border: 1px solid black;
            background-color: #e6e6e6;
            position: relative;
            top: 10px;
            left: 115px;
            padding: 0px 5px;
            width: 100px;
        }
    </style>
</head>



<body style="padding-top: 8rem; width: 100%; height: 100%">
    <form id="form1" runat="server">
        <div style="width: 400px;
    margin: auto;
    height: 250px;
    background-color: white;
    border: double 10px #00000059;
">
            <span id="spnmsg" runat="server" visible="false" class="invalidlogin">Invalid Username / Password</span>
            <div>
                <legend style="font-size: 20px;">
                    <img src="../Images/login.png" class="adLogin" />
                    
                </legend>


                <table class="dtable" style="margin-left: 60px;font-size: 18px;">
                    <tr>
                        <td>UserName</td>
                        <td>
                            <asp:TextBox ID="txtUnameAd" runat="server" placeholder="UserName" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUnameAd" Display="Dynamic" CssClass="ErrorMsg" ErrorMessage="Required" />
                        </td>
                    </tr><br />
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txtPassAd" runat="server" TextMode="Password" placeholder="Password" style="width: 192px;
    height: 20px;" />

                        </td>
                        <td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassAd" Display="Dynamic" ErrorMessage="Required" CssClass="ErrorMsg" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnAdlogin" runat="server" Text="Login" CssClass="button" OnClick="btnAdlogin_Click" />
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:LinkButton ID="lnkRegister" runat="server" Text="New Registration" PostBackUrl="~/Registration.aspx" CausesValidation="False" />
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Home" PostBackUrl="~/Home.aspx" CausesValidation="False" />
                        </td>
                        <td></td>
                    </tr>
                </table>



            </div>
        </div>
    </form>
</body>

</html>
