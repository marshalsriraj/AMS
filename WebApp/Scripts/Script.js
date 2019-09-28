

function FnValidate() {

    var ROleId = document.getElementById('ddlList').value;
    if (ROleId == '1') {

        document.getElementById('RegSuperadmin').style.display = '';

    }

    else {

        document.getElementById('RegSuperadmin').style.display = 'none';

    }

    if (ROleId == '2') {

        document.getElementById('RegAdmin').style.display = '';

    }

    else {

        document.getElementById('RegAdmin').style.display = 'none';

    }

    if (ROleId == '3') {

        document.getElementById('RegManager').style.display = '';

    }

    else {

        document.getElementById('RegManager').style.display = 'none';

    }

    if (ROleId == '4') {

        document.getElementById('RegPilot').style.display = '';

    }

    else {

        document.getElementById('RegPilot').style.display = 'none';

    }

}
function admin_validate() {
    var uname = document.getElementById('txtusername').value;

    var name1 = document.getElementById('txtFirstName').value;

    var fn = name1.length;

    var fn = /^[a-zA-Z]*$/;

    var name2 = document.getElementById('txtLastName').value;

    var ln = name1.length;

    var ln = /^[a-zA-Z]*$/;

    var age = document.getElementById('txtAge').value;

    var age1 = /^[0-9]*$/;

    var select = document.getElementById('txtGender').value;

    var contact = document.getElementById('txtCN').value;

    var contact1 = /^[0-9]*$/;

    var altcontact = document.getElementById('txtALTcn').value;

    var altcontact1 = /^[0-9]*$/;

    var email_Pattern = /^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+.)+[a-z]{2,5}$/;

    var email = document.getElementById('txtEmail').value;

    var password = document.getElementById('txtPwd').value;

    var addressline = /^[a-zA-Z0-9@]*$/;



    if (uname == "") {

        alert("Please update the highlighted mandatory User Name field(s)");
        document.getElementById("txtusername").style.borderColor = "#FF0000";
        document.getElementById("txtusername").focus();
        return false;

    }


   else  if (name1 == "") {

        alert("Please update the highlighted mandatory firstname field(s)");
        document.getElementById("txtFirstName").style.borderColor = "#FF0000";
        document.getElementById("txtFirstName").focus();
        return false;

    }



    else if (name1.length <= 3 || name1.length >= 50) {

        alert("firstName should be in between 3 and 50");

        document.getElementById("txtFirstName").style.borderColor = "#FF0000";
        document.getElementById("txtFirstName").focus();
        return false;

    }



    else if (fn.test(name1) == false) {

        alert("firstName should be in Alphabetic");

        document.getElementById("txtFirstName").style.borderColor = "#FF0000";
        document.getElementById("txtFirstName").focus();
        return false;

    }

    else if (name2 == "") {

        alert("Please update the highlighted mandatory lastname field(s)");

        document.getElementById("txtLastName").style.borderColor = "#FF0000";
        document.getElementById("txtLastName").focus();
        return false;

    }

    else if (name2.length <= 3 || name2.length >= 50) {

        alert("lastName should be in between 3 and 50");

        document.getElementById("txtLastName").style.borderColor = "#FF0000";
        document.getElementById("txtLastName").focus();
        return false;

    }

    else if (ln.test(name2) == false) {

        alert("firstName should be in Alphabetic");

        document.getElementById("txtLastName").style.borderColor = "#FF0000";
        document.getElementById("txtLastName").focus();
        return false;

    }

    else if (age == "") {

        alert("Please update the highlighted mandatory age field(s)");

        document.getElementById("txtAge").style.borderColor = "#FF0000";
        document.getElementById("txtAge").focus();
        return false;

    }

    else if (age1.test(age) == false) {

        alert("Please enter a valid age");

        document.getElementById("txtAge").style.borderColor = "#FF0000";
        document.getElementById("txtAge").focus();
        return false;

    }

    else if (age <= 1 || age >= 110) {

        alert("Please enter a valid age");

        document.getElementById("txtAge").style.borderColor = "#FF0000";
        document.getElementById("txtAge").focus();
        return false;

    }

    else if (select == "") {

        alert("Please update the highlighted mandatory select field(s)");

        document.getElementById("txtGender").style.borderColor = "#FF0000";
        document.getElementById("txtGender").focus();
        return false;

    }

    else if (contact == "") {

        alert("Please update the highlighted mandatory contact field(s)");

        document.getElementById("txtCN").style.borderColor = "#FF0000";
        document.getElementById("txtCN").focus();
        return false;

    }

    else if (contact.length != 10 || contact1.test(contact) == false) {

        alert("contact number should be only valid number");

        document.getElementById("txtCN").style.borderColor = "#FF0000";
        document.getElementById("txtCN").focus();
        return false;

    }
    else if (contact == "") {

        alert("Please update the highlighted mandatory contact field(s)");

        document.getElementById("txtALTcn").style.borderColor = "#FF0000";
        document.getElementById("txtALTcn").focus();
        return false;

    }

    else if (contact.length != 10 || contact1.test(contact) == false) {

        alert("contact number should be only valid number");

        document.getElementById("txtALTcn").style.borderColor = "#FF0000";
        document.getElementById("txtALTcn").focus();
        return false;

    }



    else if (email == "") {

        alert("Please update the highlighted mandatory email field(s)");

        document.getElementById("txtEmail").style.borderColor = "#FF0000";
        document.getElementById("txtEmail").focus();
        return false;

    }



    else if (email_Pattern.test(email) == false) {

        alert("Email should be of correct format");

        document.getElementById("txtEmail").style.borderColor = "#FF0000";
        document.getElementById("txtEmail").focus();
        return false;

    }

    else if (password == "") {

        alert("Please update the highlighted mandatory password field(s)");

        document.getElementById("txtPwd").style.borderColor = "#FF0000";
        document.getElementById("txtPwd").focus();
        return false;

    }

    else if (password.length < 8 || password.length > 15) {

        alert("Give strong password");

        document.getElementById("txtPwd").style.borderColor = "#FF0000";
        document.getElementById("txtPwd").focus();


        return false;

    }


}
function manager_validate() {
    var uname1 = document.getElementById('txtusernam').value;

    var name1 = document.getElementById('txtMFname').value;

    var fn = name1.length;

    var fn = /^[a-zA-Z]*$/;

    var name2 = document.getElementById('txtMLname').value;

    var ln = name1.length;

    var ln = /^[a-zA-Z]*$/;

    var age = document.getElementById('txtMage').value;

    var age1 = /^[0-9]*$/;

    var select = document.getElementById('ddlMGender').value;

    var contact = document.getElementById('txtMCN').value;

    var contact1 = /^[0-9]*$/;

    var altcontact = document.getElementById('txtACN').value;

    var altcontact1 = /^[0-9]*$/;

    var email_Pattern = /^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+.)+[a-z]{2,5}$/;

    var email = document.getElementById('txtMEmail').value;

    var password = document.getElementById('txtMPwd').value;

    var addressline = /^[a-zA-Z0-9@]*$/;

    if (uname1 == "") {

        alert("Please update the highlighted mandatory User Name field(s)");
        document.getElementById("txtusernam").style.borderColor = "#FF0000";
        document.getElementById("txtusernam").focus();
        return false;

    }

   else if (name1 == "") {

        alert("Please update the highlighted mandatory firstname field(s)");

        document.getElementById("txtMFname").style.borderColor = "#FF0000";
        document.getElementById("txtMFname").focus();
        return false;

    }



    else if (name1.length <= 3 || name1.length >= 50) {

        alert("firstName should be in between 3 and 50");

        document.getElementById("txtMFname").style.borderColor = "#FF0000";
        document.getElementById("txtMFname").focus();
        return false;

    }



    else if (fn.test(name1) == false) {

        alert("firstName should be in Alphabetic");

        document.getElementById("txtMFname").style.borderColor = "#FF0000";
        document.getElementById("txtMFname").focus();
        return false;

    }

    else if (name2 == "") {

        alert("Please update the highlighted mandatory lastname field(s)");

        document.getElementById("txtMLname").style.borderColor = "#FF0000";
        document.getElementById("txtMLname").focus();
        return false;

    }

    else if (name2.length <= 3 || name2.length >= 50) {

        alert("lastName should be in between 3 and 50");

        document.getElementById("txtMLname").style.borderColor = "#FF0000";
        document.getElementById("txtMLname").focus();
        return false;

    }

    else if (ln.test(name2) == false) {

        alert("firstName should be in Alphabetic");

        document.getElementById("txtMLname").style.borderColor = "#FF0000";
        document.getElementById("txtMLname").focus();
        return false;

    }

    else if (age == "") {

        alert("Please update the highlighted mandatory age field(s)");

        document.getElementById("txtMage").style.borderColor = "#FF0000";
        document.getElementById("txtMage").focus();
        return false;

    }

    else if (age1.test(age) == false) {

        alert("Please enter a valid age");

        document.getElementById("txtMage").style.borderColor = "#FF0000";
        document.getElementById("txtMage").focus();
        return false;

    }

    else if (age <= 1 || age >= 110) {

        alert("Please enter a valid age");

        document.getElementById("txtMage").style.borderColor = "#FF0000";
        document.getElementById("txtMage").focus();
        return false;

    }

    else if (select == "") {

        alert("Please update the highlighted mandatory select field(s)");

        document.getElementById("ddlMGender").style.borderColor = "#FF0000";
        document.getElementById("ddlMGender").focus();
        return false;

    }

    else if (contact == "") {

        alert("Please update the highlighted mandatory contact field(s)");

        document.getElementById("txtMCN").style.borderColor = "#FF0000";
        document.getElementById("txtMCN").focus();
        return false;

    }

    else if (contact.length != 10 || contact1.test(contact) == false) {

        alert("contact number should be only valid number");

        document.getElementById("txtMCN").style.borderColor = "#FF0000";
        document.getElementById("txtMCN").focus();
        return false;

    }
    else if (contact == "") {

        alert("Please update the highlighted mandatory contact field(s)");

        document.getElementById("txtACN").style.borderColor = "#FF0000";
        document.getElementById("txtACN").focus();
        return false;

    }

    else if (contact.length != 10 || contact1.test(contact) == false) {

        alert("contact number should be only valid number");

        document.getElementById("txtACN").style.borderColor = "#FF0000";
        document.getElementById("txtACN").focus();
        return false;

    }



    else if (email == "") {

        alert("Please update the highlighted mandatory email field(s)");

        document.getElementById("txtMEmail").style.borderColor = "#FF0000";
        document.getElementById("txtMEmail").focus();
        return false;

    }



    else if (email_Pattern.test(email) == false) {

        alert("Email should be of correct format");

        document.getElementById("txtMEmail").style.borderColor = "#FF0000";
        document.getElementById("txtMEmail").focus();
        return false;

    }

    else if (password == "") {

        alert("Please update the highlighted mandatory password field(s)");

        document.getElementById("txtMPwd").style.borderColor = "#FF0000";
        document.getElementById("txtMPwd").focus();
        return false;

    }

    else if (password.length < 8 || password.length > 15) {

        alert("Give strong password");

        document.getElementById("txtMPwd").style.borderColor = "#FF0000";
        document.getElementById("txtMPwd").focus();


        return false;

    }
}
function pilot_validate() {
    var uname2 = document.getElementById('txtusernamee').value;

    var pln = document.getElementById('txtPLno').value;
    var ni = pln.length;

    var ni = /^[a-zA-Z0-9]*$/;

    var addl = document.getElementById('txtAddressLine').value;

    var nik = addl.length;

    var nik = /^[a-zA-Z0-9]*$/;

    var addl2 = document.getElementById('txtAddress').value;

    var lnn = addl2.length;

    var lnn = /^[a-zA-Z]*$/;

    var city = document.getElementById('txtCity').value;

    var nikh = city.length;

    var nikh = /^[a-zA-Z]*$/;

    var state = document.getElementById('txtState').value;
    var nikhi = state.length;

    var nikhi = /^[a-zA-Z]*$/;



    var zip = document.getElementById('txtZip').value;
    var zip1 = zip.length;

    var zip1 = /^[0-9]*$/;

    var ssn = document.getElementById('txtSSN').value;
    var ssn1 = ssn.length;

    var ssn1 = /^[0-9]*$/;




    var password = document.getElementById('txtPPwd').value;

    var pass1 = /^[a-zA-Z0-9@]*$/;

    if (uname2 == "") {

        alert("Please update the highlighted mandatory User Name field(s)");
        document.getElementById("txtusernamee").style.borderColor = "#FF0000";
        document.getElementById("txtusernamee").focus();
        return false;

    }

    else  if (pln == "") {

        alert("Please update the highlighted mandatory licence number field(s)");

        document.getElementById("txtPLno").style.borderColor = "#FF0000";
        document.getElementById("txtPLno").focus();
        return false;

    }

    else if (ni.test(pln) == false) {

        alert("Please enter a valid Licence number");

        document.getElementById("txtPLno").style.borderColor = "#FF0000";
        document.getElementById("txtPLno").focus();
        return false;

    }


    else if (addl == "") {

        alert("Please update the highlighted mandatory Adressline field(s)");

        document.getElementById("txtAddressLine").style.borderColor = "#FF0000";
        document.getElementById("txtAddressLine").focus();
        return false;

    }



    else if (addl2 == "") {

        alert("Please update the highlighted mandatory Adressline field(s)");

        document.getElementById("txtAddress").style.borderColor = "#FF0000";
        document.getElementById("txtAddress").focus();
        return false;

    }

    else if (lnn.test(addl2) == false) {

        alert("address should be in Alphabetic");

        document.getElementById("txtAddress").style.borderColor = "#FF0000";
        document.getElementById("txtAddress").focus();
        return false;

    }
    else if (city == "") {

        alert("Please update the highlighted mandatory city field(s)");

        document.getElementById("txtCity").style.borderColor = "#FF0000";
        document.getElementById("txtCity").focus();
        return false;

    }


    else if (nikh.test(city) == false) {

        alert("city should be in Alphabetic");

        document.getElementById("txtCity").style.borderColor = "#FF0000";
        document.getElementById("txtCity").focus();
        return false;

    }
    else if (state == "") {

        alert("Please update the highlighted mandatory state field(s)");

        document.getElementById("txtState").style.borderColor = "#FF0000";
        document.getElementById("txtState").focus();
        return false;

    }


    else if (nikhi.test(state) == false) {

        alert("state should be in Alphabetic");

        document.getElementById("txtState").style.borderColor = "#FF0000";
        document.getElementById("txtState").focus();
        return false;

    }

    else if (zip == "") {

        alert("Please update the highlighted mandatory zip code field(s)");

        document.getElementById("txtZip").style.borderColor = "#FF0000";
        document.getElementById("txtZip").focus();
        return false;

    }

    else if (zip1.test(zip) == false) {

        alert("Please enter a valid zip number");

        document.getElementById("txtZip").style.borderColor = "#FF0000";
        document.getElementById("txtZip").focus();
        return false;

    }
    else if (ssn == "") {

        alert("Please update the highlighted mandatory ssn field(s)");

        document.getElementById("txtSSN").style.borderColor = "#FF0000";
        document.getElementById("txtSSN").focus();
        return false;

    }

    else if (ssn1.test(ssn) == false) {

        alert("Please enter a valid  ssn");

        document.getElementById("txtSSN").style.borderColor = "#FF0000";
        document.getElementById("txtSSN").focus();
        return false;

    }




    else if (password == "") {

        alert("Please update the highlighted mandatory password field(s)");

        document.getElementById("txtPPwd").style.borderColor = "#FF0000";
        document.getElementById("txtPPwd").focus();
        return false;

    }

    else if (password.length < 8 || password.length > 15) {

        alert("Give strong password");

        document.getElementById("txtPPwd").style.borderColor = "#FF0000";
        document.getElementById("txtPPwd").focus();


        return false;

    }
    else if (pass1.test(password) == false) {

        alert("Please enter a valid  password");

        document.getElementById("txtPPwd").style.borderColor = "#FF0000";
        document.getElementById("txtPPwd").focus();
        return false;

    }
}



