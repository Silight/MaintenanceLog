<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maintenance Request Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 183px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style4 {
            width: 194px;
        }
        #Reset1 {
            width: 139px;
        }
        .auto-style5 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style6 {
            width: 183px;
            text-align: right;
            font-weight: bold;
            height: 26px;
        }
        .auto-style7 {
            width: 194px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 183px;
            text-align: right;
            font-weight: bold;
            height: 23px;
        }
        .auto-style10 {
            width: 194px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 183px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>  
        <table class="auto-style1" align="center" border="0">
            <caption class="auto-style5">
                <h1>Maintenance Request Form</h1>
            </caption>
            <tr>
                <td class="auto-style6">Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="Name" runat="server" Width="180px" TabIndex="1"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="*" runat="server" ControlToValidate="Name" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Department:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownDepartment" runat="server" Width="180px" TabIndex="2">
                        <asp:ListItem>Choose Department</asp:ListItem>
                        <asp:ListItem>911</asp:ListItem>
                        <asp:ListItem>Aging</asp:ListItem>
                        <asp:ListItem>Assessment</asp:ListItem>
                        <asp:ListItem>Auditors</asp:ListItem>
                        <asp:ListItem>Board of Elections</asp:ListItem>
                        <asp:ListItem>C &amp; Y</asp:ListItem>
                        <asp:ListItem>Commissioners Office</asp:ListItem>
                        <asp:ListItem>Community Pantry</asp:ListItem>
                        <asp:ListItem>Conservation</asp:ListItem>
                        <asp:ListItem>Coroner</asp:ListItem>
                        <asp:ListItem>Court Admin.</asp:ListItem>
                        <asp:ListItem>D &amp; A</asp:ListItem>
                        <asp:ListItem>Dietary</asp:ListItem>
                        <asp:ListItem>District Attorney</asp:ListItem>
                        <asp:ListItem>Domestic Relations</asp:ListItem>
                        <asp:ListItem>Emergency Management Agency</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
                        <asp:ListItem>GIS</asp:ListItem>
                        <asp:ListItem>Job Training</asp:ListItem>
                        <asp:ListItem>Jury Comm.</asp:ListItem>
                        <asp:ListItem>Law Library</asp:ListItem>
                        <asp:ListItem>Maintenance</asp:ListItem>
                        <asp:ListItem>MHMR</asp:ListItem>
                        <asp:ListItem>Microfilm</asp:ListItem>
                        <asp:ListItem>MIS</asp:ListItem>
                        <asp:ListItem>Penn State CoOp</asp:ListItem>
                        <asp:ListItem>Planning</asp:ListItem>
                        <asp:ListItem>Prison</asp:ListItem>
                        <asp:ListItem>Probation, Adult</asp:ListItem>
                        <asp:ListItem>Probation, Juvenile</asp:ListItem>
                        <asp:ListItem>Prothonotary</asp:ListItem>
                        <asp:ListItem>Public Defender</asp:ListItem>
                        <asp:ListItem>Recycling</asp:ListItem>
                        <asp:ListItem>Register of Wills</asp:ListItem>
                        <asp:ListItem>Sheriff</asp:ListItem>
                        <asp:ListItem>Tax Claim Bureau</asp:ListItem>
                        <asp:ListItem>Transportation</asp:ListItem>
                        <asp:ListItem>Treasurer</asp:ListItem>
                        <asp:ListItem>Veterans Affairs</asp:ListItem>
                        <asp:ListItem>Volunteer Program</asp:ListItem>
                        <asp:ListItem>WINFO</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Text="*" runat="server" ErrorMessage="Choose your Department" ControlToValidate="DropDownDepartment" ForeColor="Red" InitialValue="Choose Department"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Building:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownBuilding" runat="server" Width="180px" TabIndex="3">
                        <asp:ListItem>Choose Building</asp:ListItem>
                        <asp:ListItem>Aging</asp:ListItem>
                        <asp:ListItem>Courthouse</asp:ListItem>
                        <asp:ListItem>Dimmick</asp:ListItem>
                        <asp:ListItem>Park Street</asp:ListItem>
                        <asp:ListItem>Group Home</asp:ListItem>
                        <asp:ListItem>Hamlin Center</asp:ListItem>
                        <asp:ListItem>Hawley Center</asp:ListItem>
                        <asp:ListItem>Job Training</asp:ListItem>
                        <asp:ListItem>Drug and Alcohol</asp:ListItem>
                        <asp:ListItem>Recycling</asp:ListItem>
                        <asp:ListItem>EOC</asp:ListItem>
                        <asp:ListItem>Prison</asp:ListItem>
                        <asp:ListItem>Drop In</asp:ListItem>
                        <asp:ListItem Value="Other">Other (Specify in Problem)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select a Building" ForeColor="Red" InitialValue="Choose Building" ControlToValidate="DropDownBuilding">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Ext:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Ext" runat="server" Width="180px" TabIndex="4" MaxLength="4"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Ext" ErrorMessage="Enter a valid Extension" ForeColor="Red" MaximumValue="9999" MinimumValue="1" SetFocusOnError="True">*</asp:RangeValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="*" runat="server" ErrorMessage="Enter an Extension " ControlToValidate="Ext" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Priority:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownUrgency" runat="server" TabIndex="5" Width="180px">
                        <asp:ListItem>Select Priority</asp:ListItem>
                        <asp:ListItem>Low</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>High</asp:ListItem>
                        <asp:ListItem>Apocalypse</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownUrgency" ErrorMessage="Select a Priority Level" ForeColor="Red" InitialValue="Select Priority">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Problem:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Problem" runat="server" Height="180px" Width="600px" TextMode="MultiLine" TabIndex="6"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="*" runat="server" ErrorMessage="Enter details about the problem" ControlToValidate="Problem" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <div style="float:left">
                    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit Request" OnClick="ButtonSubmit_Click" TabIndex="7" Width="139px" />
                    </div>
                    <div style="float:right">
                    <asp:Button ID="reset1" runat="server"  CausesValidation="false" Text="Reset Page" OnClick="reset1_Click" TabIndex ="8" width="139px"  /></td>
                    </div>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" ForeColor="#CC0000" HeaderText="Please correct the following information: " />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
            </tr>
           
        </table>
    </div>
    </form>


</body>
</html>
