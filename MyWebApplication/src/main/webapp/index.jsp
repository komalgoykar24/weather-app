<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather App</title>
     <link rel="stylesheet" href="style.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Ubuntu", sans-serif;
    }

    body {
        display: flex;
        height: 100vh;
        align-items: center;
        justify-content: center;
        background: url('images/back.jpeg')
        background-size: cover;
    }

    .mainContainer {
        width: 30rem;  /* Increased the width */
        height: auto;
        padding: 1rem;  /* Added padding */
        border-radius: 1rem;
        background: rgba(255, 255, 255, 0.9);  /* Slightly transparent white background */
        box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
    }

    .searchInput {
        width: 70%;
        display: flex;
        padding: 1rem 1rem;
        justify-content: center;
    }

    .searchInput input {
        width: 100%;
        height: 2rem;
        outline: none;
        font-size: 1rem;
        color: #525050;
        padding: 0.2rem 0.5rem;
        border-radius: 1.5rem;
        border: 1px solid #b3b3b3;
    }

    .searchInput input:focus {
        border: 1px solid #9c9dde;
    }

    .searchInput button {
        width: 2.2rem;
        height: 2rem;
        cursor: pointer;
        color: #9b9b9b;
        border-radius: 50%;
        margin-left: 0.4rem;
        transition: all 0.3s ease;
        background-color: #fff;
        border: 1px solid #b3b3b3;
    }

    .searchInput button:hover {
        color: #fff;
        background-color: #9c9dde;
        border: 1px solid #9c9dde;
    }

    .weatherIcon {
        display: flex;
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
        justify-content: center;
    }

    .weatherIcon img {
        max-width: 70%;
        width: 4rem;
    }

    .weatherDetails .temp {
        font-size: 2rem;
    }

    .cityDetails {
        color: #323232;
        font-size: 2rem;
        text-align: center;
        margin-bottom: 0.5rem;
    }

    .cityDetails .date {
        color: #323232;
        font-size: 1.5rem;
        text-align: center;
        margin-bottom: 0.5rem;
    }

    .windDetails {
        display: flex;
        margin-top: 1rem;
        margin-bottom: 1.5rem;
        justify-content: space-around;
    }

    .windDetails .humidityBox {
        display: flex;
        font-size: 1rem;
        color: #323232;
    }

    .windDetails .humidity .humidityValue {
        text-align: center;
        font-size: 2rem;
        color: #323232;
    }

    .windDetails .humidityBox img {
        max-height: 3rem;
        margin-right: 0.5rem;
    }

    .windDetails .windSpeed {
        display: flex;
        font-size: 1rem;
        color: #323232;
    }

    .windDetails .windSpeed img {
        max-height: 3rem;
        margin-right: 0.5rem;
    }

    .image-logo {
        height: auto;
        width: auto;
        filter: drop-shadow(20px 10px 10px black);
    }
</style>

<body>

    <div class="mainContainer">
        <form action="MyServlet" method="post" class="searchInput">
            <input type="text" placeholder="Enter City Name" id="searchInput" value="Enter City Name" name="city"/>
            <button id="searchButton"><i class="fa-solid fa-magnifying-glass"></i></button>
        </form>
        <div class="weatherDetails">
            <div class="weatherIcon">
                <img src="" alt="Clouds" id="weather-icon">
                <h2>${temperature} °C</h2>
                <input type="hidden" id="wc" value="${weatherCondition}">
            </div>
            <div class="cityDetails">
                <div class="desc"><strong>${city}</strong></div>
                <div class="date">${date}</div>
            </div>
            <div class="windDetails">
                <div class="humidityBox">
                    <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhgr7XehXJkOPXbZr8xL42sZEFYlS-1fQcvUMsS2HrrV8pcj3GDFaYmYmeb3vXfMrjGXpViEDVfvLcqI7pJ03pKb_9ldQm-Cj9SlGW2Op8rxArgIhlD6oSLGQQKH9IqH1urPpQ4EAMCs3KOwbzLu57FDKv01PioBJBdR6pqlaxZTJr3HwxOUlFhC9EFyw/s320/thermometer.png" alt="Humidity">
                    <div class="humidity">
                        <span>Humidity </span>
                        <h2>${humidity}% </h2>
                    </div>
                </div>
                <div class="windSpeed">
                    <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiyaIguDPkbBMnUDQkGp3wLRj_kvd_GIQ4RHQar7a32mUGtwg3wHLIe0ejKqryX8dnJu-gqU6CBnDo47O7BlzCMCwRbB7u0Pj0CbtGwtyhd8Y8cgEMaSuZKrw5-62etXwo7UoY509umLmndsRmEqqO0FKocqTqjzHvJFC2AEEYjUax9tc1JMWxIWAQR4g/s320/wind.png">
                    <div class="wind">
                        <span>Wind Speed</span>
                        <h2>${windSpeed} km/h</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="myScript.js"></script>
  
</body>

</html>