<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Đăng nhập - Fruit Shop</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Segoe UI", sans-serif;
    }

 body {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: url("https://img.freepik.com/free-photo/sliced-fruits-background_144627-38748.jpg") no-repeat center/cover;
}


    .overlay {
      position: absolute;
      top: 0; left: 0;
      width: 100%; height: 100%;
      background: rgba(0, 128, 0, 0.55);
      z-index: 0;
    }

    .login-box {
      position: relative;
      z-index: 1;
      background: #fff;
      padding: 40px 35px;
      border-radius: 20px;
      width: 350px;
      box-shadow: 0 8px 25px rgba(0,0,0,0.2);
      text-align: center;
      animation: fadeIn 1s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-30px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .login-box h2 {
      margin-bottom: 20px;
      color: #2e7d32;
    }

    .login-box input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 10px;
      outline: none;
      transition: 0.3s;
    }

    .login-box input:focus {
      border-color: #2e7d32;
      box-shadow: 0 0 8px rgba(46,125,50,0.5);
    }

    /* Hiệu ứng rung khi input có class error */
    @keyframes shake {
      0% { transform: translateX(0); }
      20% { transform: translateX(-5px); }
      40% { transform: translateX(5px); }
      60% { transform: translateX(-5px); }
      80% { transform: translateX(5px); }
      100% { transform: translateX(0); }
    }

    .error {
      border-color: red !important;
      animation: shake 0.3s;
    }

    .login-box button {
      width: 100%;
      padding: 12px;
      margin-top: 15px;
      border: none;
      border-radius: 10px;
      background: #2e7d32;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: transform 0.2s, background 0.3s;
    }

    .login-box button:hover {
      background: #1b5e20;
      transform: scale(0.97);
    }

    .login-box .extra {
      margin-top: 15px;
      font-size: 14px;
    }

    .login-box .extra a {
      color: #2e7d32;
      text-decoration: none;
      font-weight: 500;
    }

    .login-box .extra a:hover {
      text-decoration: underline;
    }

    .logo {
      width: 70px;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <div class="overlay"></div>

  <div class="login-box">
    <img src="${pageContext.request.contextPath}/resources/images/watermelon.png" alt="Fruit Logo" class="logo">

    <h2>Đăng nhập GreenFruit</h2>
    <form onsubmit="return validateForm(event)">
      <input type="text" id="username" placeholder="Tên đăng nhập" required>
      <input type="password" id="password" placeholder="Mật khẩu" required>
      <button type="submit">Đăng nhập</button>
      <div class="extra">
        <p>Chưa có tài khoản? <a href="#">Đăng ký ngay</a></p>
      </div>
    </form>
  </div>

  <script>
    function validateForm(event) {
      event.preventDefault();
      const user = document.getElementById("username");
      const pass = document.getElementById("password");

      if (user.value.trim() === "" || pass.value.trim() === "") {
        if (user.value.trim() === "") {
          user.classList.add("error");
          setTimeout(() => user.classList.remove("error"), 500);
        }
        if (pass.value.trim() === "") {
          pass.classList.add("error");
          setTimeout(() => pass.classList.remove("error"), 500);
        }
        return false;
      }

      alert("Đăng nhập thành công!");
      return true;
    }
  </script>
</body>
</html>
