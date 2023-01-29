let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.navbar');


menu.onclick = () =>{
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
}

window.onscroll = () =>{
    menu.classList.remove('fa-times');
    navbar.classList.remove('active');
}


let home1=document.getElementById("home1");
let alreadylogin=document.getElementById("alreadylogin");

let login=document.getElementById("loginacc");

login.onclick=() =>{
    alreadylogin.classList.remove('active');
    home1.classList.add('active');
}