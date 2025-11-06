<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Smart Retail Connect | Reduce Surplus & Improve Sustainability</title>
  <link rel="stylesheet" href="homedemostyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>
  <header>
    <nav class="navbar">
      <h2 class="logo">
        <img src="https://img-cdn.pixlr.com/image-generator/history/66fb628907245903aa3c8f4b/9152c62d-487d-4f00-848a-10fe113d87d2/preview.webp" alt="Smart Retail Logo" class="logo-image">
        <a href="#">SMART RETAIL CONNECT</a>
      </h2>

      <input type="checkbox" id="menu-toggler">
      <label for="menu-toggler" id="hamburger-btn">
        <svg xmlns="http://www.w3.org/2000/svg" fill="white" width="24px" height="24px" viewBox="0 0 24 24">
          <path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"/>
        </svg>
      </label>
      <ul class="all-links">
        <li><a href="#services">Solutions</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="adminlogin.jsp">Admin</a></li>
        <li><a href="donorlogin.jsp">Retailer</a></li>
        <li><a href="recipientlogin.jsp">NGO</a></li>
      </ul>
    </nav>
  </header>

  <section class="homepage" id="home">
    <div class="content">
      <div class="text">
        <h2>Reduce Retail Surplus & Drive Sustainability</h2>
        <p>
          Empowering retailers to reduce food waste through smart surplus tracking and donation solutions. <br>
          Connect, contribute, and build a responsible future today.
        </p>
      </div>
      <a href="#services">Our Solutions</a>
    </div>
  </section>

  <section class="services" id="services">
    <h2>Our Solutions</h2>
    <p>Smart tools to transform surplus management and build greener retail ecosystems.</p>
    <ul class="cards">
      <li class="card">
        <img src="https://images.pexels.com/photos/4397028/pexels-photo-4397028.jpeg" alt="Smart Surplus Listing">
        <h3>Smart Surplus Listing</h3>
        <p>Retailers can list surplus food and goods for donation, avoiding unnecessary waste.</p>
      </li>
      <li class="card">
        <img src="https://images.pexels.com/photos/267447/pexels-photo-267447.jpeg" alt="Retailer & NGO Registration">
        <h3>Quick Registration</h3>
        <p>Easy onboarding for retailers and NGOs to join and contribute to the surplus ecosystem.</p>
      </li>
      <li class="card">
        <img src="https://img.freepik.com/free-vector/profile-analysis-concept-illustration_114360-26673.jpg" alt="Profile Dashboard">
        <h3>Profile Dashboard</h3>
        <p>Retailers and NGOs can manage and update their organizational profiles securely.</p>
      </li>
      <li class="card">
        <img src="https://images.pexels.com/photos/6995221/pexels-photo-6995221.jpeg" alt="Inventory Management">
        <h3>Inventory Management</h3>
        <p>Track listed surplus items, update donations, and view analytics to optimize operations.</p>
      </li>
      <li class="card">
        <img src="https://img.freepik.com/free-vector/user-panel-template-infographic-dashboard_23-2148378206.jpg" alt="Real-time Dashboards">
        <h3>Real-time Dashboards</h3>
        <p>Stay updated with real-time data for both surplus tracking and recipient requests.</p>
      </li>
      <li class="card">
        <img src="https://img.freepik.com/free-vector/illustration-team-management-cartoon-flat_81522-3998.jpg" alt="Retail-NGO Communication">
        <h3>Communication Tools</h3>
        <p>Seamless coordination between retail contributors and NGOs through built-in messaging.</p>
      </li>
    </ul>
  </section>

  <section class="about" id="about">
    <h2>About Smart Retail Connect</h2>
    <p>Your partner in building a zero-waste retail future.</p>
    <div class="row company-info">
      <h3>Our Purpose</h3>
      <p>Smart Retail Connect bridges the gap between surplus and need. We empower retailers to reduce excess food waste and ensure that unsold yet consumable goods reach communities in need. Through our AI-powered tools, sustainability isn't just a buzzword—it's a way of operating.</p>
    </div>
    <div class="row mission-vision">
      <h3>Mission</h3>
      <p>To revolutionize the retail industry with tech-driven surplus tracking and donation tools for a sustainable tomorrow.</p>
      <h3>Vision</h3>
      <p>Creating a world where every item is used wisely, every meal reaches a plate, and every retailer is a sustainability hero.</p>
    </div>
    <div class="row team">
      <h3>Our Team</h3>
      <ul>
        <li>Charitha Sri Konathala</li>
        <li>Geethika Darla</li>
        <li>Likhitha Kothamansu</li>
      </ul>
    </div>
  </section>

  <section class="contact" id="contact">
    <h2>Contact Us</h2>
    <p>Let’s work together to eliminate waste and hunger.</p>
    <div class="row">
      <div class="col information">
        <div class="contact-details">
          <p><i class="fas fa-map-marker-alt"></i> 123 Green Market Lane, EcoCity, IN 560001</p>
          <p><i class="fas fa-envelope"></i> hello@smartretailconnect.com</p>
          <p><i class="fas fa-phone"></i> +91 98765 43210</p>
          <p><i class="fas fa-clock"></i> Mon - Fri: 9:00 AM - 6:00 PM</p>
          <p><i class="fas fa-clock"></i> Sat: 10:00 AM - 3:00 PM</p>
          <p><i class="fas fa-clock"></i> Sun: Closed</p>
          <p><i class="fas fa-globe"></i> www.smartretailconnect.com</p>
        </div>
      </div>
      <div class="col form">
        <form>
          <input type="text" placeholder="Name*" required>
          <input type="email" placeholder="Email*" required>
          <textarea placeholder="Message*" required></textarea>
          <button id="submit" type="submit">Send Message</button>
        </form>
      </div>
    </div>
  </section>

  <footer>
    <div>
      <span>© 2025 Smart Retail Connect. All rights reserved.</span>
      <span class="link">
        <a href="#">Home</a>
        <a href="#contact">Contact</a>
      </span>
    </div>
  </footer>
</body>
</html>
