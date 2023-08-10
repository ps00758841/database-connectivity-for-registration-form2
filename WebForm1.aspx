<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <table class="auto-style1">  
               <tr>  
                   
     <td>REGISTRATION FORM :</td>  
   
  
       </tr>  
         
                <tr> 
                    
                    <td>FirstName :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
               <tr>  
     <td>LastName :</td>  
     <td>  
         <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
     </td>  
  
</tr>  
                <tr>  
                    <td>Password</td>  
                     <td> <asp:TextBox ID="TextBox2" TextMode="Password"  runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>Confirm Password</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>  
                    </td>  
                </tr> 
                     <tr>  
                    <td>City</td>  
                     <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>  
                </tr>
              <tr>  
                <td>Zip</td>  
                 <td> <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>  
                </tr>
              <tr>  
                <td>Address</td>  
                <td>  
                    <asp:TextBox ID="TextBox8"  runat="server"></asp:TextBox>  
                </td>  
            </tr> 
                <tr>  
                    <td>State</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server">  
                            <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="MP" Value="MP"></asp:ListItem>  
                            <asp:ListItem Text="UP" Value="UP"></asp:ListItem>  
                            <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr> 
              <tr>  
                 <td>Country</td>  
                 <td>  
                       <asp:DropDownList ID="DropDownList2" runat="server">  
                        <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>  
                        <asp:ListItem Text="India" Value="India"></asp:ListItem>  
                        <asp:ListItem Text="pakistan" Value="pakistan"></asp:ListItem>  
                        <asp:ListItem Text="bangladesh" Value="bangladesh"></asp:ListItem>  
                         </asp:DropDownList>  
                    </td>  
                </tr> 
                <tr>  
                    <td>Gender</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td>Email</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr> 
                <tr>  
                      <td>Profile picture</td>  
                       <td> <asp:FileUpload ID="FileUpload1" runat="server" /></td>  
                 </tr>
              <tr>
                  <td> Area of Intrest</td>
                       <td>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Reading" />  
            <asp:CheckBox ID="CheckBox2" runat="server" Text="writing" />  
            <asp:CheckBox ID="CheckBox3" runat="server" Text="travelling" />  
                           <asp:CheckBox ID="CheckBox4" runat="server" Text="others" />  
                  </td>
              </tr>

                <tr>  

                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Button" Height="38px" OnClick="Button1_Click" Width="92px" />  
                    </td>  
                </tr>  
              <tr>  

                <td>  
                    <asp:Button ID="Button2" runat="server" Text="Reset" Height="38px" OnClick="ButtonReset_Click" Width="92px" />  
                </td>  
            </tr> 
            
            </table>  
        </div>
    </form>
</body>
</html>
