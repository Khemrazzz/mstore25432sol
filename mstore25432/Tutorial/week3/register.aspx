<%@ Page Title="" Language="C#" MasterPageFile="~/guestmaster.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="mstore25432.Tutorial.week3.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function valPass_ClientValidate(source, args) {
            if (args.Value.length <= 7 || args.Value.length >= 12) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }
        }
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

    <div class="row">
        <div class="col-md-4">

            <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" HeaderText="There are errors in the form" ShowMessageBox="true" ForeColor="Green" runat="server" />



            <div class="d-none d-md-block p-4">
                <asp:Image ID="Image1" ImageUrl="~/images/regis.png"
                    Width="350px" runat="server" CssClass="img-fluid" />
            </div>
        </div>
        <div class="col-md-7 offset-md-1">
            <h4>Working with Server controls</h4>
            <hr />
            <fieldset>
                <legend>Personal Details</legend>
                <div class="mb-3">
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radMr" Checked="true" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Mr</asp:Label>
                    </div>
                    <div class="form-check-inline">
                        <asp:RadioButton runat="server" GroupName="gender" ID="radMrs" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Mrs</asp:Label>
                    </div>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">First name</asp:Label>
                    <asp:TextBox runat="server" ID="txtFName"
                        CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" Display="Dynamic" SetFocusOnError="true" ForeColor="red" ErrorMessage="RequiredFieldValidator">First name is required!" </asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Last name</asp:Label>
                    <asp:TextBox runat="server" ID="txtLName"
                        CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLName" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ErrorMessage="RequiredFieldValidator">Last name is required!"</asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Date of Birth</asp:Label>
                    <asp:TextBox runat="server" ID="txtDOB" TextMode="Date"
                        CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="frvdob" runat="server" ControlToValidate="txtDOB" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" ErrorMessage="RequiredFieldValidator">Date is required!"</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvdob" runat="server" ControlToValidate="txtDOB" Type="Date" Display="Dynamic" ForeColor="Red" ErrorMessage="Age should be between 18 and 25"></asp:RangeValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Upload Picture</asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server"
                        CssClass="form-control" />

                </div>
            </fieldset>
            <fieldset>
                <legend>Contact Details</legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Email</asp:Label>
                    <asp:TextBox runat="server" ID="txtemail"
                        CssClass="form-control" />
                    <asp:RegularExpressionValidator ID="revemail" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+[.])+[a-z]{2,5}$" runat="server" ErrorMessage="invalid email"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Mobile Number</asp:Label>
                    <asp:TextBox runat="server" ID="txtmob"
                        CssClass="form-control" />
                    <asp:CompareValidator ID="cvmnum" ControlToValidate="txtmob" Operator="DataTypeCheck" Type="Integer" runat="server" ErrorMessage="Mobile number should be numeric" ForeColor="Red"></asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="revmnum" runat="server" ControlToValidate="txtmob" ValidationExpression="\d{9}" ErrorMessage="Mobile number must consist of 9 digits!" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Street</asp:Label>
                    <asp:TextBox runat="server" ID="txtStreet"
                        CssClass="form-control" />
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Country</asp:Label>
                    <asp:DropDownList runat="server" ID="ddlcountry"
                        CssClass="form-control">
                        <asp:ListItem Value="0">Choose Country</asp:ListItem>
                        <asp:ListItem Value="1">Spain</asp:ListItem>
                        <asp:ListItem Value="2">Italy</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="frvddlcountry" ControlToValidate="ddlcountry" runat="server" ErrorMessage="Country is mandatory!" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">City</asp:Label>
                    <asp:DropDownList runat="server" ID="ddlcity"
                        CssClass="form-control">
                    </asp:DropDownList>
                </div>
            </fieldset>
            <fieldset>
                <legend>Login Details</legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Username</asp:Label>
                    <asp:TextBox runat="server" ID="txtuname"
                        CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvUname" runat="server" ControlToValidate="txtuname" ForeColor="Red" ErrorMessage="RequiredFieldValidator">Username is required!</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revUname" runat="server" ControlToValidate="txtuname" ValidationExpression="\w{5,10}" ForeColor="Red" ErrorMessage="invalid username"></asp:RegularExpressionValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Password</asp:Label>
                    <asp:TextBox runat="server" ID="txtpass" TextMode="Password"
                        CssClass="form-control" />
                    <asp:CustomValidator ID="cuspassword" ControlToValidate="txtpass" ForeColor="Red" runat="server" ErrorMessage="password should be 7 to 12 characters!" OnServerValidate="cuspassword_ServerValidate" ClientValidationFunction="valPass_ClientValidate"></asp:CustomValidator>
                </div>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Confirm password</asp:Label>
                    <asp:TextBox runat="server" ID="txtcpass" TextMode="Password"
                        CssClass="form-control" />
                    <asp:CompareValidator ID="cvpassword" runat="server" ControlToValidate="txtcpass" ControlToCompare="txtpass" Operator="Equal" Display="Dynamic" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                </div>
            </fieldset>
            <fieldset>
                <legend>Your favourite movies</legend>
                <div class="mb-3">
                    <asp:Label runat="server"
                        CssClass="form-label">Description</asp:Label>
                    <span id="notif" runat="server" class="bg-primary badge badge-pill"></span>
                    <asp:TextBox runat="server" ID="txtafavmovies" OnTextChanged="txtafavmovies_TextChanged" AutoPostBack="true"
                        TextMode="Multiline" CssClass="form-control" />
                </div>
            </fieldset>
            <fieldset>
                <div class="mb-3">
                    <div class="form-check-inline">
                        <asp:CheckBox runat="server" OnCheckedChanged="chkagreement_CheckedChanged" AutoPostBack="true" ID="chkagreement" />
                        <asp:Label runat="server"
                            CssClass="form-check-label">Do you agree with our term & Conditions and Privacy Statement?</asp:Label>
                        <asp:Image ID="imgsmiley" runat="server" />
                    </div>
                    <div class="mb-3">
                        <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" CssClass="btn
btn-outline-primary btn-block"
                            Text="Register" />
                        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" CssClass="btn
btn-outline-danger btn-block"
                            Text="Clear All" />
                        <br />
                        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
                    </div>
            </fieldset>
        </div>
    </div>
</asp:Content>

