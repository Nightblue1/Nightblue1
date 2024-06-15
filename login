<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">

    <!-- box icons -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    border: none;
    outline: none;
    scroll-behavior: smooth;
    font-family: 'Poppins', sans-serif;
}
body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: #000;
    overflow: scroll;
}
.wrapper {
    position: relative;
    width: 400px;
    height: 500px;
    background: black;
    box-shadow: 0 0 50px #0ef;
    border-radius: 30px;
    padding: 20px;
    overflow: hidden;
}
.wrapper: hover {
    animation: animate 1s linear infinite;
}

.form-wrapper{
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
    transition: 1s ease-in-out;
}

.wrapper.active .form-wrapper.sign-in {
    transform: translateY(-450px);
}

.wrapper.form-wrapper.sign-up{
    position: absolute;
    top:  450px;
    left: 0;
}

.wrapper.active .form-wrapper.sign-up {
    transform: translateY(-450px);
}


h2{
    font-size: 30px;
    color: #fff;
    text-align: center;
}
.input-group{
    position: relative;
    margin: 30px 0;
    border-bottom: 2px solid #fff;
}
.input-group label{
    position: absolute;
    Top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: .5px;
}
.input-group input{
    width:  320px;
    height: 40px;
    font: size 16px;
    color: #fff;
    padding: 0 5px;
    background: transparent;
    border: none;
    outline: none;
}

.input-group input:focus~label,
.input-group input:valid~label{
    top: -5px;
}
.remember{
    margin:  -5px 0 15px 5px;

}
.remember label{
    color: #fff;
    font-size: 14px;
}

.remember label input{
    accent-color: #0ef;
}

button{
    position: relative;
    width: 100%;
    height: 40px;
    background: #0ef;
    box-shadow: 0 0 10px #0ef;
    font-size: 16px;
    color: black;
    font-weight: 500;
    cursor: pointer;
    border-radius: 30px;
    border: none;
    outline: none;
}
.signUp-link{
    font-size: 14px;
    text-align: center;
    margin: 15px 0 ;
}

.signUp-link p {
    color: #fff;

}
.signUp-link p a{
    color: #0ef;
    text-decoration: none;
    font-weight: 500;
}

.signUp-link p a: hover{
    text-decoration: underline;
}
<script> const signInbtnlink = document.querySelector('.signInbtn-link');
const signUpbtnlink = document.querySelector('.signUpbtn-link');
const wrapper = document.querySelector('.wrapper');

signUpbtnlink.addEventListener('click', () => {
        wrapper.classList.toggle('active');
}
)
signInbtnlink.addEventListener
('click', () => 
{
    wrapper.classList.toggle('active');
}
)
</script>

<body>

    <div class="wrapper">
        <div class="form-wrapper sign-in">
            <form action="">
                <h2> Login </h2>
                <div class="input-group">
                    <input type="text" required>
                    <Label for="">Username</Label>
                </div>
                <div class="input-group">
                    <input type="password" required>
                    <Label for="">Password</Label>
                </div>
                <div class="remember">
                    <Label><input type="checkbox">   Remember me</Label>
                </div>
                <button type="submit">Login</button>
                <div class="signUp-link">
                    <p>Don't have an account? <a href="#" class="signUpbtn-link"> Sign Up </a></p>
                </div>
            </form>
        </div>

        
        <div class="form-wrapper sign-up">
            <form action="">
                <h2> Sign Up </h2>
                <div class="input-group">
                    <input type="text" required>
                    <Label for="">Username</Label>
                </div>
                <div class="input-group">
                    <input type="email" required>
                    <Label for="">Email</Label>
                </div>
                <div class="input-group">
                    <input type="password" required>
                    <Label for="">Password</Label>
                </div>
                <div class="remember">
                    <Label><input type="checkbox"> I agree to the terms & conditions</Label>
                </div>
                <button type="submit">Sign Up</button>
                <div class="signUp-link">
                    <p>Already have an account? <a href="#" class="signInbtn-link">Sign In</a></p>
                </div>
            </form>
        </div>
    </div>
    <script src="js/script.js"></script>
</body>

</html>
