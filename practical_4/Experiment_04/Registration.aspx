<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs"
    Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Event Registration Form</title>

    <style>

        body {
            font-family: Arial;
            background-color: #f5f5f5;
            margin: 0;
            padding: 40px;
        }

        /* Main Form Box */
        .form-box {
            width: 750px;
            margin: auto;
            background-color: white;
            border: 2px solid #333;
            border-radius: 10px;
            padding: 30px 40px;
            box-shadow: 0px 3px 10px #aaa;
        }

        /* Heading */
        .heading {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        table {
            border-collapse: collapse;
            margin: auto;
        }

        td {
            padding: 7px;
            vertical-align: top;
            font-size: 18px;
        }

        .label {
            width: 140px;
        }

        .input {
            width: 180px;
            height: 28px;
        }

        .address {
            width: 300px;
            height: 100px;
        }

        .validation {
            color: red;
            font-weight: bold;
            font-size: 16px;
            padding-left: 25px;
        }

        .register {
            padding: 7px 20px;
            font-size: 16px;
            cursor: pointer;
        }

        .result {
            color: blue;
            font-weight: bold;
            font-size: 16px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <!-- Main Form Container -->

    <div class="form-box">

        <div class="heading">
            Event Registration Form
        </div>

        <table>

            <!-- NAME -->
            <tr>
                <td class="label">
                    Name
                </td>

                <td>
                    <asp:TextBox
                        ID="txtName"
                        runat="server"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td class="validation">

                    <asp:RequiredFieldValidator
                        ID="rfvName"
                        runat="server"
                        ControlToValidate="txtName"
                        ErrorMessage="Enter Name"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>


            <!-- EMAIL -->
            <tr>
                <td class="label">
                    Email
                </td>

                <td>
                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td class="validation">

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Enter Email"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <br />

                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Invalid Email"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </td>
            </tr>


            <!-- MOBILE -->
            <tr>
                <td class="label">
                    Mobile
                </td>

                <td>
                    <asp:TextBox
                        ID="txtMobile"
                        runat="server"
                        CssClass="input"
                        MaxLength="10">
                    </asp:TextBox>
                </td>

                <td class="validation">

                    <asp:RequiredFieldValidator
                        ID="rfvMobile"
                        runat="server"
                        ControlToValidate="txtMobile"
                        ErrorMessage="Enter Mobile"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <br />

                    <asp:RegularExpressionValidator
                        ID="revMobile"
                        runat="server"
                        ControlToValidate="txtMobile"
                        ValidationExpression="^[0-9]{10}$"
                        ErrorMessage="Enter 10 Digit Mobile"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </td>
            </tr>


            <!-- COLLEGE -->
            <tr>
                <td class="label">
                    College
                </td>

                <td>
                    <asp:TextBox
                        ID="txtCollege"
                        runat="server"
                        CssClass="input">
                    </asp:TextBox>
                </td>

                <td class="validation">

                    <asp:RequiredFieldValidator
                        ID="rfvCollege"
                        runat="server"
                        ControlToValidate="txtCollege"
                        ErrorMessage="Enter College"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </td>
            </tr>


            <!-- DEPARTMENT -->
            <tr>
                <td class="label">
                    Department
                </td>

                <td colspan="2">

                    <asp:RadioButtonList
                        ID="rblDepartment"
                        runat="server">

                        <asp:ListItem>Computer</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>Mechanical</asp:ListItem>
                        <asp:ListItem>Civil</asp:ListItem>

                    </asp:RadioButtonList>

                </td>
            </tr>


            <!-- EVENT -->
            <tr>
                <td class="label">
                    Event
                </td>

                <td colspan="2">

                    <asp:DropDownList
                        ID="ddlEvent"
                        runat="server"
                        Width="200px">

                        <asp:ListItem Value="">
                            Select Event
                        </asp:ListItem>

                        <asp:ListItem Value="Hackathon">
                            Hackathon
                        </asp:ListItem>

                        <asp:ListItem Value="Coding Competition">
                            Coding Competition
                        </asp:ListItem>

                        <asp:ListItem Value="Workshop">
                            Workshop
                        </asp:ListItem>

                        <asp:ListItem Value="Seminar">
                            Seminar
                        </asp:ListItem>

                    </asp:DropDownList>

                </td>
            </tr>


            <!-- GENDER -->
            <tr>
                <td class="label">
                    Gender
                </td>

                <td colspan="2">

                    <asp:RadioButtonList
                        ID="rblGender"
                        runat="server"
                        RepeatDirection="Horizontal">

                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>

                    </asp:RadioButtonList>

                </td>
            </tr>


            <!-- SKILLS -->
            <tr>
                <td class="label">
                    Skills
                </td>

                <td colspan="2">

                    <asp:CheckBoxList
                        ID="cblSkills"
                        runat="server">

                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>AI</asp:ListItem>

                    </asp:CheckBoxList>

                </td>
            </tr>


            <!-- ADDRESS -->
            <tr>
                <td class="label">
                    Address
                </td>

                <td colspan="2">

                    <asp:TextBox
                        ID="txtAddress"
                        runat="server"
                        TextMode="MultiLine"
                        CssClass="address">
                    </asp:TextBox>

                </td>
            </tr>


            <!-- TERMS -->
            <tr>
                <td class="label">
                    Terms
                </td>

                <td colspan="2">

                    <asp:CheckBox
                        ID="chkTerms"
                        runat="server"
                        Text="I Accept Terms &amp; Conditions" />

                </td>
            </tr>


            <!-- REGISTER -->
            <tr>
                <td></td>

                <td colspan="2">

                    <asp:Button
                        ID="btnRegister"
                        runat="server"
                        Text="Register"
                        CssClass="register"
                        OnClick="btnRegister_Click" />

                </td>
            </tr>


            <!-- RESULT -->
            <tr>
                <td colspan="3">

                    <asp:Label
                        ID="lblResult"
                        runat="server"
                        CssClass="result">
                    </asp:Label>

                </td>
            </tr>

        </table>

    </div>

</form>

</body>
</html>