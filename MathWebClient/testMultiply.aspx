<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="testMultiply.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Share Price Client</title>
</head>

<script runat="server">

   public void CalClick(Object sender, EventArgs E)
   {
       localhost.MathWebService service = new localhost.MathWebService();

       
       service.Url = "http://" + "localhost" +"/MathWebService/MathWebService.asmx";
        
       if (int1.Text!="" | int2.Text!="")
       {
           int timedelay = 2000;
           
           System.Threading.Thread.Sleep(timedelay);
           
           long result = service.Multiply(long.Parse(int1.Text), long.Parse(int2.Text));
           res.Text = Convert.ToString(result);
       }
       else
       {
           msg.Text = "Enter Valid Inputs!";
       }
       
   }    
</script>

<body>
    <form id="form1" runat="server" action="testMultiply.aspx">
    <div>
        <h3><b><asp:Label ID="Label4" runat="server" Text="Multiply via Web Services"></asp:Label><br /></b></h3>
        <b><asp:Label ID="Label3" runat="server" Text="Enter two numbers:"></asp:Label></b><br />
        <br />
        <asp:TextBox ID="int1" runat="server" Width="124px" Text="0"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="int2" runat="server" Width="124px" Text="0"></asp:TextBox>
        <br />
	<br />
        <asp:Button ID="Button1" runat="server" Text="Multiply" OnClick="CalClick" /><br />
        <br />
        <b><asp:Label ID="label5" runat="server" Text="Result"></asp:Label></b>
        &nbsp;&nbsp;
        <asp:TextBox ID="res" runat="server" ReadOnly="true" Width="164px"></asp:TextBox><br />
        <br />
        <br />
        <br />
        <font color="red"><b><asp:Label ID="msg" runat="server" Text=" "></asp:Label></b></font>
        </div>
    </form>
</body>
</html>
