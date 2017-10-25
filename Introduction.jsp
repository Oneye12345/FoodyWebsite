<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body, html {
  height: 100%;
  margin: 0;
  font: 400 15px/1.8 "Lato", sans-serif;
  color: #777;
}

.bgimg-1, .bgimg-2, .bgimg-3 {
  position: relative;
  opacity: 0.65;
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

}
.bgimg-1 {
  background-image: url("https://static.pexels.com/photos/54455/cook-food-kitchen-eat-54455.jpeg");
  min-height: 100%;
}

.bgimg-2 {
  background-image: url("https://static.pexels.com/photos/461198/pexels-photo-461198.jpeg");
  min-height: 400px;
}

.bgimg-3 {
  background-image: url("https://static.pexels.com/photos/196643/pexels-photo-196643.jpeg");
  min-height: 400px;
}

.caption {
  position: absolute;
  left: 0;
  top: 50%;
  width: 100%;
  text-align: center;
  color: #000;
}

.caption span.border {
  background-color: #111;
  color: #fff;
  padding: 18px;
  font-size: 25px;
  letter-spacing: 10px;
}

h3 {
  letter-spacing: 5px;
  text-transform: uppercase;
  font: 20px "Lato", sans-serif;
  color: #111;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3, {
        background-attachment: scroll;
    }
}
</style>
</head>
<body>

<div class="bgimg-1">
  <div class="caption">
    <span class="border">Iron Grub</span>
  </div>
</div>

<div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
  <h3 style="text-align:center;">About Us</h3>
  <p>This company was founded by four innovators who want to change the way everyone eats their food. Using fresh ingrediants to create mouth watering
  dishes that are not only healthy, but also delicious. This company was created over 10 days ago, and already has positive feedback from
  athelets, people who want to go on a diet, and even first timers who want to try something new. Our slogan for the company is,Food when you're out of time.
  This slogan means that for all the people who are either too busy, a first timer, or an athelete, no matter who you are, food is there.

  </p>
</div>

<div class="bgimg-2">
  <div class="caption">
    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;">HEALTHY,FAST,EASY</span>
  </div>
</div>

<div style="position:relative;">
  <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
    <p>LA Times-
    "Rated 10/10, excellent customer service!"</p>
  </div>
</div>

<div class="bgimg-3">
  <div class="caption">
    <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;">FRESH INGREDIENTS</span>
  </div>
</div>

<div style="position:relative;">
  <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
    <p>9/10 gyms would recommend</p>
  </div>
</div>

<div class="bgimg-1">
  <div class="caption">
    <span class="border"><a href = "Homepage">GO TO WEBSITE</a></span>
  </div>
</div>

</body>
</html>