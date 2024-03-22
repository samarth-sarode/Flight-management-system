let signupbtn = document.getElementById("signupbtn");

signupbtn.addEventListener("click" , () => {
	document.getElementById("login-form").style.display ="none"  ;
	document.getElementById("signup-form").style.display ="block"  ;

});

let loginbtn = document.getElementById("loginbtn");

loginbtn.addEventListener("click" , () => {
	document.getElementById("login-form").style.display ="block" ;
	document.getElementById("signup-form").style.display ="none"  ;
});