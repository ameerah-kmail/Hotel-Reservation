<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits=" WebApplication2.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" id="newstyle2">
       
        h1{
            color:black;
          
            text-align:center;
            
            font-family:Bradley Hand ITC;
            margin-right:100px;
            
            font-weight:bold;
            
        }
        h2{
            color:black;
           
            text-align:center;
            margin-top:70px;
          
            font-family:Bradley Hand ITC;
            margin-right:100px;
            
            font-weight:bold;

            }
        body{
           /*background-image:url("images/hotel2.jpg");
           background-repeat:no-repeat;
           background-size:100% 100%;*/
         
            background-color:aquamarine;
        }

        .auto-style1 {
            width: 30%;
            margin-left:560px;
        }

        .auto-style2 {
            width: 54px;
        }
        .auto-style3 {
            width: 54px;
            height: 32px;
        }
        .auto-style4 {
            height: 32px;
        }
        img{
            width:200px;
            height:200px;
        }
    </style>
</head>
    
<body class="newstyle2">
    <form id="form1" runat="server">
        <h2>&nbsp;</h2>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to</h2>
       <h1> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Palestine Hotel</h1>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table cellspacing="1" class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:Label ID="Label3" runat="server" Text="      Username" AssociatedControlID="TextBox1"></asp:Label>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/172626-32.png" Height="16px" Width="16px" />
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server">     </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:Label ID="Label4" runat="server" Text="      Password" AssociatedControlID="TextBox2"></asp:Label>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;<asp:Image ID="Image4" runat="server" ImageUrl="~/images/622405-32.png" Height="16px" Width="16px" />
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password">         </asp:TextBox>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" Text="LogIn" OnClick="Button1_Click" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="White" Font-Size="Medium" Text="NOT a member?"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" Text="create account" Width="98px" OnClick="Button2_Click" />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>
            </table>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
