<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="FinallWebProject.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body{
              background-color:#d0a8ce;      
              color:black;    
              font-family:Bradley Hand ITC;          
             font-weight:bold;
        }
       
        .auto-style2 {
            width: 70%;
            border-color: #800080;
        }
        .auto-style3 {
            width: 183px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style9 {
            height: 34px;
            width: 183px;
        }
        .auto-style10 {
            width: 171px;
        }
        .auto-style11 {
            height: 34px;
            width: 171px;
        }
    </style>
</head>
<body style="height: 478px; width: 1017px;">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <table align="center" cellpadding="2" class="auto-style2">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10"><h1>Welcome </h1></td>
                <td><h1>
                    <asp:Label ID="Label1" runat="server"></asp:Label></h1>
                </td><
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">Customer Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">Customer SSN:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="phone_number must star with[059.......]" ValidationExpression="(059)?\d{7}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11">Customer Phone:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="email must be [___@gmail.com]" ValidationExpression="\w+([-+.']\w+)*@gmail.com"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11">Customer Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" Display="None" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,10}" ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character" ></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11">Customer Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button2" runat="server" Text="update" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6" colspan="2">The Room&#39;s you have reserve it:&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="view" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6" colspan="2">
                    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Width="679px">
                        <Columns>
                            <asp:BoundField DataField="RID" HeaderText="Booking ID" />
                            <asp:BoundField DataField="roomid" HeaderText="Room ID" />
                            <asp:BoundField DataField="startdate" HeaderText="End Date" />
                            <asp:BoundField DataField="enddate" HeaderText="Start Date" />
                            <asp:BoundField DataField="payment" HeaderText="Payment" />
                        </Columns>
                        <EmptyDataTemplate>
                            Booking ID
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
