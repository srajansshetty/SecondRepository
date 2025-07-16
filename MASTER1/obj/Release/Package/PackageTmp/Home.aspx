<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MASTER1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="Style.css" />
   
  <%--  <style>
      .edu-news-ticker {
        background-color: #002b60;
        color: white;
        display: flex;
        align-items: center;
        padding: 10px 15px;
        font-weight: bold;
        overflow: hidden;
        position: relative;
        font-size: 16px;
      }

      .edu-news-ticker .edu-ticker-label {
        margin-right: 15px;
        margin-left: 15px;
        white-space: nowrap;
        flex-shrink: 0;
        font-size: 18px;
        position: relative;
        padding-right: 15px;
      }

      .edu-news-ticker .edu-ticker-label::after {
        content: "";
        position: absolute;
        right: 0;
        top: 0;
        height: 100%;
        width: 2px;
        background-color: white;
      }

      .edu-news-ticker .edu-scroll-text {
        white-space: nowrap;
        overflow: hidden;
        position: relative;
        flex: 1;
      }

      .edu-news-ticker .edu-scroll-text span {
        display: inline-block;
        padding-left: 100%;
        animation: scroll-text 15s linear infinite;
      }

      .edu-news-ticker .edu-scroll-text a {
        color: #ffd700;
        text-decoration: none;
        transition: color 0.3s ease;
      }

      .edu-news-ticker .edu-scroll-text a:hover {
        text-decoration: underline;
      }

      @keyframes scroll-text {
        0% {
          transform: translateX(0%);
        }
        100% {
          transform: translateX(-100%);
        }
      }

      body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        background-color: white;
      }

      @media (max-width: 768px) {
        body {
          padding: 10px;
          font-size: 14px;
        }
      }

      .edu-main-container {
        display: flex;
        padding: 15px;
        flex-direction: column;
      }

      .edu-info-panel {
        padding: 15px;
      }

      .edu-notice-panel {
        font-family: Arial, sans-serif;
        padding: 15px;
        background-color: rgba(234, 234, 234, 0.566);
        border-radius: 5px;
        width: 100%;
        box-sizing: border-box;
      }

      @media (min-width: 768px) {
        .edu-main-container {
          flex-direction: row;
        }
        .edu-notice-panel {
          width: 600px;
        }
        .edu-info-panel {
          flex: 1;
        }
      }

      .edu-tab-controls {
        display: flex;
        gap: 10px;
        margin-bottom: 15px;
        flex-wrap: wrap;
      }

      .edu-tab-button {
        background-color: #dddbd8e0;
        border: none;
        padding: 8px 15px;
        font-weight: bold;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
      }

      .edu-tab-button:hover,
      .edu-tab-button.active {
        background-color: rgb(243, 242, 241);
        color: rgb(12, 10, 10);
      }

      .edu-tab-panel {
        max-height: 500px;
        overflow-y: auto;
        padding-right: 10px;
        margin-top: 15px;
      }

      .edu-tab-panel ul {
        list-style-type: disc;
        padding-left: 20px;
        margin: 0;
      }

      .edu-tab-panel li {
        margin-bottom: 12px;
        line-height: 1.6;
      }

      .edu-tab-panel a {
        color: #003366;
        text-decoration: none;
        font-weight: 500;
      }

      .edu-tab-panel a:hover {
        text-decoration: underline;
        color: #e67e22;
      }

      .edu-tab-panel::-webkit-scrollbar {
        width: 6px;
      }

      .edu-tab-panel::-webkit-scrollbar-thumb {
        background-color: #999;
        border-radius: 4px;
      }

      .edu-tab-panel::-webkit-scrollbar-thumb:hover {
        background-color: #666;
      }

      ul {
        padding-left: 20px;
      }

      ul li {
        margin-bottom: 10px;
      }

      .edu-links-container {
        border: 2px solid #f6f8fa;
        padding: 15px;
        margin: 15px auto;
        width: 95%;
        max-width: 780px;
        background-color: #d3dde6;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }

      .edu-links-container h2 {
        margin-bottom: 12px;
        color: #414c57;
      }

      .edu-links-container ul {
        list-style-type: none;
        padding: 0;
      }

      .edu-links-container li {
        margin-bottom: 10px;
      }

      .edu-links-container a {
        text-decoration: none;
        color: #0056b3;
        font-weight: bold;
      }

      .edu-links-container a:hover {
        text-decoration: underline;
        color: #ff6600;
      }

      section.edu-career-section {
        background-color: #acc1d8;
        padding: 30px 0 50px;
        text-align: center;
      }

      .edu-section-title {
        font-size: 2.5rem;
        font-weight: 700;
        margin-bottom: 5px;
        margin-top: 20px;
        color: #003366;
        user-select: none;
      }

      .edu-section-title span.edu-career-highlight {
        background-color: #ffc107;
        color: #003366;
        padding: 5px 15px;
        border-radius: 6px;
      }

      .edu-scroll-area {
        position: relative;
        display: flex;
        justify-content: center;
        width: 100%;
        max-width: 875px;
        margin: 0 auto;
      }

      .edu-logo-carousel {
        display: flex;
        overflow-x: auto;
        gap: 15px;
        padding: 20px 10px;
        scroll-behavior: smooth;
        width: 100%;
        scrollbar-width: none;
        -ms-overflow-style: none;
      }

      .edu-logo-carousel::-webkit-scrollbar {
        display: none;
      }

      .edu-logo-item {
        background: #ffffff;
        border-radius: 15px;
        padding: 20px;
        min-width: 160px;
        flex-shrink: 0;
        transition: transform 0.3s, box-shadow 0.3s;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        cursor: default;
        text-align: center;
      }

      .edu-logo-item:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
      }

      .edu-logo-item img {
        max-width: 60px;
        margin-bottom: 15px;
      }

      .edu-logo-item p {
        font-weight: 600;
        margin: 0;
        color: #333;
        font-size: 14px;
      }

      .edu-scroll-trigger {
        position: absolute;
        top: 0;
        bottom: 0;
        width: 60px;
        z-index: 10;
        cursor: pointer;
        opacity: 0;
        transition: opacity 0.3s;
      }

      .edu-scroll-trigger:hover {
        opacity: 0.2;
      }

      .edu-scroll-left {
        left: 0;
        background: linear-gradient(to right, #003366, rgba(0, 51, 102, 0));
      }

      .edu-scroll-right {
        right: 0;
        background: linear-gradient(to left, #003366, rgba(0, 51, 102, 0));
      }

      @media (max-width: 900px) {
        .edu-logo-carousel {
          width: 100%;
          padding: 20px 0;
        }

        .edu-logo-item {
          min-width: 140px;
        }

        .edu-scroll-left,
        .edu-scroll-right {
          width: 30px;
        }

        .edu-scroll-left {
          background: linear-gradient(to right, #003366c0, rgba(0, 51, 102, 0));
        }

        .edu-scroll-right {
          background: linear-gradient(to left, #003366c0, rgba(0, 51, 102, 0));
        }
      }

      @media (max-width: 600px) {
        .edu-section-title {
          font-size: 1.8rem;
        }

        .edu-logo-item {
          min-width: 120px;
        }

        .edu-scroll-trigger {
          display: none;
        }
      }
    </style>--%>
    <script>
      // Tab switching
      function showTab(tabId) {
        document
          .querySelectorAll(".edu-tab-panel")
          .forEach((tab) => (tab.style.display = "none"));
        document
          .querySelectorAll(".edu-tab-button")
          .forEach((btn) => btn.classList.remove("active"));
        document.getElementById(tabId).style.display = "block";
        event.target.classList.add("active");
      }

      document.addEventListener("DOMContentLoaded", function () {
        // Logo scroll functionality
        const container = document.getElementById("logoCarousel");
        let scrollInterval;

        window.startScroll = function (direction) {
          stopScroll();
          scrollInterval = setInterval(() => {
            container.scrollLeft += direction * 2;
            if (
              (direction < 0 && container.scrollLeft <= 0) ||
              (direction > 0 &&
                container.scrollLeft >=
                  container.scrollWidth - container.clientWidth)
            ) {
              stopScroll();
            }
          }, 20);
        };

        window.stopScroll = function () {
          clearInterval(scrollInterval);
        };

        // Auto-scroll for touch devices
        if ("ontouchstart" in window) {
          let autoScrollDirection = 1;
          setInterval(() => {
            if (
              container.scrollLeft >=
              container.scrollWidth - container.clientWidth
            ) {
              autoScrollDirection = -1;
            } else if (container.scrollLeft <= 0) {
              autoScrollDirection = 1;
            }
            container.scrollLeft += autoScrollDirection * 1;
          }, 30);
        }
      });
    </script>
    <%--  <style>
             .news-bar {
        background-color: #002b60;
        color: white;
        display: flex;
        align-items: center;
        padding: 10px 15px;
        font-weight: bold;
        overflow: hidden;
        position: relative;
        font-size: 16px;
    }

    .news-bar .label {
        margin-right: 15px;
        margin-left: 15px;
        white-space: nowrap;
        flex-shrink: 0;
        font-size: 18px;
        position: relative;
        padding-right: 15px;
    }

    .news-bar .label::after {
        content: "";
        position: absolute;
        right: 0;
        top: 0;
        height: 100%;
        width: 2px;
        background-color: white;
    }

    .news-bar .marquee {
        white-space: nowrap;
        overflow: hidden;
        position: relative;
        flex: 1;
    }

    .news-bar .marquee span {
        display: inline-block;
        padding-left: 100%;
        animation: marquee 15s linear infinite;
    }

    .news-bar .marquee a {
        color: #ffd700;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .news-bar .marquee a:hover {
        text-decoration: underline;
    }

    @keyframes marquee {
        0% {
            transform: translateX(0%);
        }
        100% {
            transform: translateX(-100%);
        }
    }
      body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        background-color: white;
      }
      @media (max-width: 768px) {
        body {
          padding: 10px;
          font-size: 14px;
        }
      }

      .content {
        display: flex;
        padding: 15px;
        flex-direction: column;
      }
      .right-box {
        padding: 15px;
      }
      .left-box {
        font-family: Arial, sans-serif;
        padding: 15px;
        background-color: rgba(234, 234, 234, 0.566);
        border-radius: 5px;
        width: 100%;
        box-sizing: border-box;
      }
      @media (min-width: 768px) {
        .content {
          flex-direction: row;
        }
        .left-box {
          width: 600px;
        }
        .right-box {
          flex: 1;
        }
      }

      .tab-buttons {
        display: flex;
        gap: 10px;
        margin-bottom: 15px;
        flex-wrap: wrap;
      }
      .tab-btn {
        background-color: #dddbd8e0;
        border: none;
        padding: 8px 15px;
        font-weight: bold;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
      }
      .tab-btn:hover,
      .tab-btn.active {
        background-color: rgb(243, 242, 241);
        color: rgb(12, 10, 10);
      }
      .tab-content {
        max-height: 500px;
        overflow-y: auto;
        padding-right: 10px;
        margin-top: 15px;
      }
      .tab-content ul {
        list-style-type: disc;
        padding-left: 20px;
        margin: 0;
      }
      .tab-content li {
        margin-bottom: 12px;
        line-height: 1.6;
      }
      .tab-content a {
        color: #003366;
        text-decoration: none;
        font-weight: 500;
      }
      .tab-content a:hover {
        text-decoration: underline;
        color: #e67e22;
      }
      .tab-content::-webkit-scrollbar {
        width: 6px;
      }
      .tab-content::-webkit-scrollbar-thumb {
        background-color: #999;
        border-radius: 4px;
      }
      .tab-content::-webkit-scrollbar-thumb:hover {
        background-color: #666;
      }

      ul {
        padding-left: 20px;
      }
      ul li {
        margin-bottom: 10px;
      }
      .links-box {
        border: 2px solid #f6f8fa;
        padding: 15px;
        margin: 15px auto;
        width: 95%;
        max-width: 780px;
        background-color: #d3dde6;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }
      .links-box h2 {
        margin-bottom: 12px;
        color: #414c57;
      }
      .links-box ul {
        list-style-type: none;
        padding: 0;
      }
      .links-box li {
        margin-bottom: 10px;
      }
      .links-box a {
        text-decoration: none;
        color: #0056b3;
        font-weight: bold;
      }
      .links-box a:hover {
        text-decoration: underline;
        color: #ff6600;
      }

      section.career-section {
        background-color: #acc1d8;
        padding: 30px 0 50px;
        text-align: center;
      }
      .section-header {
        font-size: 2.5rem;
        font-weight: 700;
        margin-bottom: 5px;
        margin-top: 20px;
        color: #003366;
        user-select: none;
      }
      .section-header span.career-box {
        background-color: #ffc107;
        color: #003366;
        padding: 5px 15px;
        border-radius: 6px;
      }
      .scroll-wrapper {
        position: relative;
        display: flex;
        justify-content: center;
        width: 100%;
        max-width: 875px;
        margin: 0 auto;
      }
      .logo-scroll-container {
        display: flex;
        overflow-x: auto;
        gap: 15px;
        padding: 20px 10px;
        scroll-behavior: smooth;
        width: 100%;
        scrollbar-width: none;
        -ms-overflow-style: none;
      }
      .logo-scroll-container::-webkit-scrollbar {
        display: none;
      }
      .logo-card {
        background: #ffffff;
        border-radius: 15px;
        padding: 20px;
        min-width: 160px;
        flex-shrink: 0;
        transition: transform 0.3s, box-shadow 0.3s;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        cursor: default;
        text-align: center;
      }
      .logo-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
      }
      .logo-card img {
        max-width: 60px;
        margin-bottom: 15px;
      }
      .logo-card p {
        font-weight: 600;
        margin: 0;
        color: #333;
        font-size: 14px;
      }
      .scroll-hover-zone {
        position: absolute;
        top: 0;
        bottom: 0;
        width: 60px;
        z-index: 10;
        cursor: pointer;
        opacity: 0;
        transition: opacity 0.3s;
      }
      .scroll-hover-zone:hover {
        opacity: 0.2;
      }
      .scroll-hover-left {
        left: 0;
        background: linear-gradient(to right, #003366, rgba(0, 51, 102, 0));
      }
      .scroll-hover-right {
        right: 0;
        background: linear-gradient(to left, #003366, rgba(0, 51, 102, 0));
      }
      @media (max-width: 900px) {
        .logo-scroll-container {
          width: 100%;
          padding: 20px 0;
        }
        .logo-card {
          min-width: 140px;
        }
        .scroll-hover-left,
        .scroll-hover-right {
          width: 30px;
        }
        .scroll-hover-left {
          background: linear-gradient(to right, #003366c0, rgba(0, 51, 102, 0));
        }
        .scroll-hover-right {
          background: linear-gradient(to left, #003366c0, rgba(0, 51, 102, 0));
        }
      }
      @media (max-width: 600px) {
        .section-header {
          font-size: 1.8rem;
        }
        .logo-card {
          min-width: 120px;
        }
        .scroll-hover-zone {
          display: none;
        }
      }
    </style>
  

    <script>
      // Tab switching
      function showTab(tabId) {
        document
          .querySelectorAll(".tab-content")
          .forEach((tab) => (tab.style.display = "none"));
        document
          .querySelectorAll(".tab-btn")
          .forEach((btn) => btn.classList.remove("active"));
        document.getElementById(tabId).style.display = "block";
        event.target.classList.add("active");
      }

      document.addEventListener("DOMContentLoaded", function () {
        // Logo scroll functionality
        const container = document.getElementById("logoScroll");
        let scrollInterval;

        window.startScroll = function (direction) {
          stopScroll();
          scrollInterval = setInterval(() => {
            container.scrollLeft += direction * 2;
            if (
              (direction < 0 && container.scrollLeft <= 0) ||
              (direction > 0 &&
                container.scrollLeft >=
                  container.scrollWidth - container.clientWidth)
            ) {
              stopScroll();
            }
          }, 20);
        };

        window.stopScroll = function () {
          clearInterval(scrollInterval);
        };

        // Auto-scroll for touch devices
        if ("ontouchstart" in window) {
          let autoScrollDirection = 1;
          setInterval(() => {
            if (
              container.scrollLeft >=
              container.scrollWidth - container.clientWidth
            ) {
              autoScrollDirection = -1;
            } else if (container.scrollLeft <= 0) {
              autoScrollDirection = 1;
            }
            container.scrollLeft += autoScrollDirection * 1;
          }, 30);
        }
      });
    </script>--%>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <link rel="stylesheet" type="text/css" href="Style.css" />
 <div>
    <h2 style="text-align: center;">Steps to apply for online registration form</h2>

    <table>
        <tr>
            <td><p><b>Step-1</b></p></td>
            <td>Fill the online application with personal details.</td>
        </tr>

        <tr>
            <td><b>Step-2</b></td>
            <td>Fill the online application with Qualification Details.</td>
        </tr>

        <tr>
            <td><b>Step-3</b></td>
            <td>
                Upload scanned images of photograph, signature, and other required documents. The image should be in jpg/jpeg format only.
                <ul>
                    <li>Size of photo image must be between 10 KB to 200 KB</li>
                    <li>Size of signature image must be between 4 KB to 30 KB</li>
                    <li>Size of the scanned copy of PwBD certificate if applicable should be 20 KB to 300 KB</li>
                    <li>Size of the scanned copy of other required documents (qualification, caste, experience, etc.) should be 20 KB to 300 KB.</li>
                </ul>
            </td>
        </tr>

        <tr>
            <td><p><b>Step-4</b></p></td>
            <td>Application fee, if applicable, payment through SBI e-pay payment Gateway.</td>
        </tr>

        <tr>
            <td><p><b>If not registered, Please Click on the <span style="color: green;">NEW REGISTRATION</span></b></p></td>
            <td>
                <button type="button" class="styled-button" onclick="window.location.href='instruct.aspx';">NEW REGISTRATION</button>
            </td>
        </tr>

        <tr>
            <td><p><b>If already registered, Please click on the SIGN IN</b></p></td>
            <td>
               <button type="button" class="styled-button" onclick="window.location.href='login.aspx';">SIGN IN / ALREADY REGISTERED</button>

            </td>
        </tr>
    </table>
</div>--%>
     <%-- <div class="news-bar">
        <div class="label">LATEST NEWS</div>
        <div class="marquee">
            <span>
                <a href="https://www.eduquity.com/results2025" target="_blank">Eduquity Assessment Results 2025 Released
                </a>
                |
  <a href="https://www.eduquity.com/apply" target="_blank">Apply Now for Eduquity Talent Assessment
  </a>
                |
  <a href="https://www.eduquity.com/schedule" target="_blank">Eduquity 2025 Exam Schedule Announced
  </a>
            </span>

        </div>
    </div>
     <div class="content" id="main-content">
      <div class="left-box">
        <div class="tab-buttons">
          <button class="tab-btn active" onclick="showTab('public')">
            Public Notices
          </button>
          <button class="tab-btn" onclick="showTab('updates')">
            Important Updates
          </button>
        </div>
        <div class="tab-content" id="public">
         <ul>
  <li>
    <a href="https://www.eduquity.com/jee-resources">
      Eduquity's Engineering Entrance 2025 Support – Provisional Answer Keys & Response Sheets
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/result-support">
      Eduquity Result Assistance – Scorecard Resolution for Engineering Entrance 2025
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/nta-scores">
      Eduquity Analytics – Scorecard Reports for Engineering Entrance 2025 Session 2
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/jee-answer-keys">
      Eduquity Verified – Final Answer Keys for Engineering Entrance 2025 (B.E./B.Tech.)
    </a>
  </li>
  <!-- Eduquity Career Technologies Core Content -->
  <li>
    <a href="https://www.eduquity.com/careers">
      Careers at Eduquity – Innovate with Our EdTech Team
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/assessment-solutions">
      Eduquity Assessment Platform – AI-Driven Testing Solutions
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/contact">
      Eduquity Client Support – 24/7 Technical Assistance
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/about-us">
      Eduquity's Mission – Transforming Education Through Technology
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/partners">
      Eduquity Alliance Program – Partner with EdTech Leaders
    </a>
  </li>
  <!-- Engineering Entrance-Related Services by Eduquity -->
  <li>
    <a href="https://www.eduquity.com/jee-prep">
      Eduquity Entrance Prep Tools – Answer Key Analysis & Response Tracking
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/center-updates">
      Eduquity Exam Center Alerts – Engineering Entrance 2025 Session Updates
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/jee-resources">
      Eduquity's Engineering Entrance 2025 Support – Provisional Answer Keys & Response Sheets
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/result-support">
      Eduquity Result Assistance – Scorecard Resolution for Engineering Entrance 2025
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/nta-scores">
      Eduquity Analytics – Scorecard Reports for Engineering Entrance 2025 Session 2
    </a>
  </li>
  <li>
    <a href="https://www.eduquity.com/jee-answer-keys">
      Eduquity Verified – Final Answer Keys for Engineering Entrance 2025 (B.E./B.Tech.)
    </a>
  </li>
</ul>

        </div>
        <div class="tab-content" id="updates" style="display: none">
          <ul>
            <li>
              <a href="https://www.eduquity.com/jee-registration">
                Eduquity's 2025 Registration Portal - Opens July 1
                (AI-guided process)
              </a>
            </li>
            <li>
              <a href="https://www.eduquity.com/jee-syllabus">
                Eduquity's Exclusive new Advanced 2025 Syllabus Breakdown
                (Updated)
              </a>
            </li>
            <li>
              <a href="https://www.eduquity.com/counselling">
                Eduquity Smart Counselling Schedule - Personalized Roadmaps
              </a>
            </li>
            <li>
              <a href="https://www.eduquity.com/mock-tests">
                Eduquity AI Mock Tests Window - Opens July 10 (Adaptive testing)
              </a>
            </li>
            <li>
              <a href="https://www.eduquity.com/admit-card">
                Eduquity Admit Card Assistant - Instant Download & Verification
              </a>
            </li>
            <li>
              <a href="https://www.eduquity.com/application-support">
                Eduquity Deadline Alert Service - July 15 Application Review
              </a>
            </li>
            <li>
              <a href="https://www.eduquity.com/exam-prep">
                Eduquity Exam Day Pro Kit - Official Guidelines & Checklist
              </a>
            </li>
          </ul>
        </div>
      </div>

      <div class="right-box">
        <h2>INTRODUCTION</h2>
        <p>
          Eduquity Career Technologies Pvt. Ltd., a leading provider of
          assessment and examination solutions in India, plays a pivotal role in
          delivering high-quality, scalable, and technology-driven testing
          services. With a focus on transparency, efficiency, and innovation,
          Eduquity has established itself as a trusted partner for conducting
          assessments for academic institutions, government organizations, and
          corporates.
        </p>
        <p>
          The company is dedicated to enhancing the fairness and credibility of
          assessments by designing and executing research-based, reliable,
          valid, and secure testing solutions. Eduquity strives to align its
          assessments with global standards while addressing the unique
          requirements of the Indian education and employment landscape.
        </p>
        <p>
          Eduquity has built a robust ecosystem that supports efficient exam
          administration, ensures seamless candidate experience, and delivers
          data-driven insights for stakeholders. Leveraging advanced
          technologies and psychometric methodologies, the company creates
          assessment systems that are learner-centric and outcome-oriented.
        </p>
        <p>
          Over the years, Eduquity has successfully conducted numerous
          large-scale national and state-level examinations, recruitment tests,
          and aptitude assessments. By continuously evolving its solutions and
          adopting best practices, Eduquity contributes significantly to talent
          identification, educational development, and human resource
          advancement across the country.
        </p>

        <div class="links-box">
          <h2>FOR CANDIDATES</h2>
          <ul>
            <li>
              <a href="login.aspx"
                >Apply Here for the Post of IPNP (Phase 1) Exam</a
              >
            </li>
            <li>
              <a href="login.aspx"
                >Apply Here for The post of IBPS Probationary Officer (Phase 2)
                Exam</a
              >
            </li>
          </ul>
        </div>
      </div>
    </div>

    <section class="career-section">
      <h2 class="section-header">
        Eduquity <span class="career-box">Career</span> Technology
      </h2>
      <div class="scroll-wrapper">
        <div
          class="scroll-hover-zone scroll-hover-left"
          onmouseenter="startScroll(-1)"
          onmouseleave="stopScroll()"
        ></div>
        <div
          class="scroll-hover-zone scroll-hover-right"
          onmouseenter="startScroll(1)"
          onmouseleave="stopScroll()"
        ></div>
        <div id="logoScroll" class="logo-scroll-container">
          <div class="logo-card">
            <img src="NewFolder1/edu5.png" alt="NCHM Logo" />
            <p>Hotel Mgmt</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu3.png" alt="DUET Logo" />
            <p>Delhi Univ</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu3.png" alt="CSIR NET Logo" />
            <p>CSIR-NET</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu5.png" alt="JNUEE Logo" />
            <p>JNU Exam</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu5.png" alt="UGC NET Logo" />
            <p>UGC-NET</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu3.png" alt="Exam 1 Logo" />
            <p>Exam 1</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu3.png" alt="Exam 2 Logo" />
            <p>Exam 2</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu5.png" alt="Exam 3 Logo" />
            <p>Exam 3</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu3.png" alt="Exam 4 Logo" />
            <p>Exam 4</p>
          </div>
          <div class="logo-card">
            <img src="NewFolder1/edu3.png" alt="Exam 5 Logo" />
            <p>Exam 5</p>
          </div>
        </div>
      </div>
    </section>--%>
     <div class="edu-news-ticker">
      <div class="edu-ticker-label">LATEST NEWS</div>
      <div class="edu-scroll-text">
        <span>
          <a href="https://www.eduquity.com/results2025" target="_blank"
            >Eduquity Assessment Results 2025 Released</a
          >
          |
          <a href="https://www.eduquity.com/apply" target="_blank"
            >Apply Now for Eduquity Talent Assessment</a
          >
          |
          <a href="https://www.eduquity.com/schedule" target="_blank"
            >Eduquity 2025 Exam Schedule Announced</a
          >
        </span>
      </div>
    </div>
    <div class="edu-main-container" id="main-content">
      <div class="edu-notice-panel">
        <div class="edu-tab-controls">
          <button class="edu-tab-button active" onclick="showTab('public')">
            Public Notices
          </button>
          <button class="edu-tab-button" onclick="showTab('updates')">
            Important Updates
          </button>
        </div>
        <div class="edu-tab-panel" id="public">
          <ul>
            <li>
              <a href="https://www.eduquity.com/jee-resources"
                >Eduquity's Engineering Entrance 2025 Support – Provisional
                Answer Keys & Response Sheets</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/result-support"
                >Eduquity Result Assistance – Scorecard Resolution for
                Engineering Entrance 2025</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/nta-scores"
                >Eduquity Analytics – Scorecard Reports for Engineering Entrance
                2025 Session 2</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/jee-answer-keys"
                >Eduquity Verified – Final Answer Keys for Engineering Entrance
                2025 (B.E./B.Tech.)</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/careers"
                >Careers at Eduquity – Innovate with Our EdTech Team</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/assessment-solutions"
                >Eduquity Assessment Platform – AI-Driven Testing Solutions</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/contact"
                >Eduquity Client Support – 24/7 Technical Assistance</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/about-us"
                >Eduquity's Mission – Transforming Education Through
                Technology</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/partners"
                >Eduquity Alliance Program – Partner with EdTech Leaders</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/jee-prep"
                >Eduquity Entrance Prep Tools – Answer Key Analysis & Response
                Tracking</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/center-updates"
                >Eduquity Exam Center Alerts – Engineering Entrance 2025 Session
                Updates</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/jee-resources"
                >Eduquity's Engineering Entrance 2025 Support – Provisional
                Answer Keys & Response Sheets</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/result-support"
                >Eduquity Result Assistance – Scorecard Resolution for
                Engineering Entrance 2025</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/nta-scores"
                >Eduquity Analytics – Scorecard Reports for Engineering Entrance
                2025 Session 2</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/jee-answer-keys"
                >Eduquity Verified – Final Answer Keys for Engineering Entrance
                2025 (B.E./B.Tech.)</a
              >
            </li>
          </ul>
        </div>
        <div class="edu-tab-panel" id="updates" style="display: none">
          <ul>
            <li>
              <a href="https://www.eduquity.com/jee-registration"
                >Eduquity's 2025 Registration Portal - Opens July 1 (AI-guided
                process)</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/jee-syllabus"
                >Eduquity's Exclusive new Advanced 2015 Syllabus Breakdown
                (Updated)</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/counselling"
                >Eduquity Smart Counselling Schedule - Personalized Roadmaps</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/mock-tests"
                >Eduquity AI Mock Tests Window - Opens July 10 (Adaptive
                testing)</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/admit-card"
                >Eduquity Admit Card Assistant - Instant Download &
                Verification</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/application-support"
                >Eduquity Deadline Alert Service - July 15 Application Review</a
              >
            </li>
            <li>
              <a href="https://www.eduquity.com/exam-prep"
                >Eduquity Exam Day Pro Kit - Official Guidelines & Checklist</a
              >
            </li>
          </ul>
        </div>
      </div>
      <div class="edu-info-panel">
        <h2>INTRODUCTION</h2>
        <p>
          Eduquity Career Technologies Pvt. Ltd., a leading provider of
          assessment and examination solutions in India, plays a pivotal role in
          delivering high-quality, scalable, and technology-driven testing
          services. With a focus on transparency, efficiency, and innovation,
          Eduquity has established itself as a trusted partner for conducting
          assessments for academic institutions, government organizations, and
          corporates.
        </p>
        <p>
          The company is dedicated to enhancing the fairness and credibility of
          assessments by designing and executing research-based, reliable,
          valid, and secure testing solutions. Eduquity strives to align its
          assessments with global standards while addressing the unique
          requirements of the Indian education and employment landscape.
        </p>
        <p>
          Eduquity has built a robust ecosystem that supports efficient exam
          administration, ensures seamless candidate experience, and delivers
          data-driven insights for stakeholders. Leveraging advanced
          technologies and psychometric methodologies, the company creates
          assessment systems that are learner-centric and outcome-oriented.
        </p>
        <p>
          Over the years, Eduquity has successfully conducted numerous
          large-scale national and state-level examinations, recruitment tests,
          and aptitude assessments. By continuously evolving its solutions and
          SHRINKING adopting best practices, Eduquity contributes significantly
          to talent identification, educational development, and human resource
          advancement across the country.
        </p>
        <div class="edu-links-container">
          <h2>FOR CANDIDATES</h2>
          <ul>
            <li>
              <a href="login.aspx"
                >Apply Here for the Post of IPNP (Phase 1) Exam</a
              >
            </li>
            <li>
              <a href="login.aspx"
                >Apply Here for The post of IBPS Probationary Officer (Phase 2)
                Exam</a
              >
            </li>
          </ul>
        </div>
      </div>
    </div>
    <section class="edu-career-section">
      <h2 class="edu-section-title">
        Eduquity <span class="edu-career-highlight">Career</span> Technology
      </h2>
      <div class="edu-scroll-area">
        <div
          class="edu-scroll-trigger edu-scroll-left"
          onmouseenter="startScroll(-1)"
          onmouseleave="stopScroll()"
        ></div>
        <div
          class="edu-scroll-trigger edu-scroll-right"
          onmouseenter="startScroll(1)"
          onmouseleave="stopScroll()"
        ></div>
        <div id="logoCarousel" class="edu-logo-carousel">
          <div class="edu-logo-item">
            <img src="NewFolder1/edu5.png" alt="NCHM Logo" />
            <p>Hotel Mgmt</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu3.png" alt="DUET Logo" />
            <p>Delhi Univ</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu3.png" alt="CSIR NET Logo" />
            <p>CSIR-NET</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu5.png" alt="JNUEE Logo" />
            <p>JNU Exam</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu5.png" alt="UGC NET Logo" />
            <p>UGC-NET</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu3.png" alt="Exam 1 Logo" />
            <p>Exam 1</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu3.png" alt="Exam 2 Logo" />
            <p>Exam 2</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu5.png" alt="Exam 3 Logo" />
            <p>Exam 3</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu3.png" alt="Exam 4 Logo" />
            <p>Exam 4</p>
          </div>
          <div class="edu-logo-item">
            <img src="NewFolder1/edu3.png" alt="Exam 5 Logo" />
            <p>Exam 5</p>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
