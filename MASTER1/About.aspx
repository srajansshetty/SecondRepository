<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MASTER1.Work" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <style>
          /*body {
        font-family: "Segoe UI", sans-serif;
        margin: 0;
        padding: 0;
        background: #f9f9f9;
        color: #333;
      }*/

      .section {
        padding: 80px 0;
        width: 100%;
        position: relative;
        overflow: hidden;
      }

      .section:before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 2px;
        background: linear-gradient(
          to right,
          transparent,
          #d35400,
          transparent
        );
        z-index: 1;
      }

      .section:after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        height: 2px;
        background: linear-gradient(
          to right,
          transparent,
          #d35400,
          transparent
        );
        z-index: 1;
      }

      .section-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        position: relative;
      }

      .section h2 {
        font-size: 36px;
        color: #2c3e50;
        margin-bottom: 30px;
        padding-bottom: 15px;
        position: relative;
      }

      .section h2:after {
        content: "";
        position: absolute;
        left: 0;
        bottom: 0;
        width: 80px;
        height: 4px;
        background: #ff8c00;
      }

      .section p {
        font-size: 18px;
        line-height: 1.8;
        color: #555;
        max-width: 800px;
      }

      /* Hero Section */
      .hero-section {
        background: linear-gradient(135deg, #ff8c00, #e67e22);
        color: white;
        text-align: center;
        padding: 20px 0;
        position: relative;
      }

      .hero-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #a55700,
          transparent
        );
      }

      .hero-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #a55700,
          transparent
        );
      }

      .hero-section h1 {
        font-size: 48px;
        margin-bottom: 20px;
      }

      .hero-section p {
        font-size: 22px;
        max-width: 800px;
        margin: 0 auto;
        color: rgba(255, 255, 255, 0.9);
      }

      /* Mantra Section */
      .mantra-section {
        background: #fff4e6;
        position: relative;
      }

      .mantra-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #e6c9a8,
          transparent
        );
      }

      .mantra-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #e6c9a8,
          transparent
        );
      }

      /* Leadership Section */
      .leadership-section {
        background: white;
        position: relative;
      }

      .leadership-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #d5d5d5,
          transparent
        );
      }

      .leadership-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #d5d5d5,
          transparent
        );
      }

      .leadership-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 40px;
        margin-top: 50px;
      }

      .leader-card {
        background: white;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
        padding: 30px;
        text-align: center;
        transition: all 0.3s ease;
        border: 1px solid #eee;
      }

      .leader-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
        border-color: #ff8c00;
      }

      .leader-card img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 20px;
        border: 5px solid #ffebd5;
      }

      .leader-card h4 {
        margin: 20px 0 5px;
        color: #2c3e50;
        font-size: 22px;
      }

      .leader-card p {
        color: #7f8c8d;
        font-size: 16px;
      }

      /* Timeline Section */
      .timeline-section {
        background: linear-gradient(135deg, #f5f7fa 0%, #e4e8eb 100%);
        position: relative;
      }

      .timeline-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #c4c9ce,
          transparent
        );
      }

      .timeline-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #c4c9ce,
          transparent
        );
      }

      .timeline {
        position: relative;
        max-width: 1000px;
        margin: 60px auto 0;
      }

      .timeline::before {
        content: "";
        position: absolute;
        width: 4px;
        background-color: #ff8c00;
        top: 0;
        bottom: 0;
        left: 50%;
        margin-left: -2px;
        border-radius: 10px;
      }

      .timeline-item {
        padding: 30px 40px;
        position: relative;
        width: 50%;
        box-sizing: border-box;
        opacity: 0;
        transform: translateY(30px);
        transition: all 0.5s ease;
      }

      .timeline-item.visible {
        opacity: 1;
        transform: translateY(0);
      }

      .timeline-item:nth-child(odd) {
        left: 0;
        text-align: right;
        padding-right: 80px;
      }

      .timeline-item:nth-child(even) {
        left: 50%;
        text-align: left;
        padding-left: 80px;
      }

      .timeline-content {
        padding: 30px;
        background: white;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        position: relative;
        border: 1px solid #eee;
      }

      .timeline-item:nth-child(odd) .timeline-content::after {
        content: "";
        position: absolute;
        border-style: solid;
        border-width: 15px 0 15px 15px;
        border-color: transparent transparent transparent white;
        right: -15px;
        top: 40px;
      }

      .timeline-item:nth-child(even) .timeline-content::after {
        content: "";
        position: absolute;
        border-style: solid;
        border-width: 15px 15px 15px 0;
        border-color: transparent white transparent transparent;
        left: -15px;
        top: 40px;
      }

      .timeline-item::before {
        content: "";
        position: absolute;
        width: 30px;
        height: 30px;
        background-color: white;
        border: 5px solid #ff8c00;
        border-radius: 50%;
        top: 40px;
        z-index: 1;
      }

      .timeline-item:nth-child(odd)::before {
        right: -15px;
      }

      .timeline-item:nth-child(even)::before {
        left: -15px;
      }

      .timeline-content h3 {
        font-size: 24px;
        color: #ff8c00;
        margin-bottom: 10px;
      }

      .timeline-content p {
        font-size: 16px;
        line-height: 1.7;
      }

      @media screen and (max-width: 768px) {
        .timeline::before {
          left: 31px;
        }

        .timeline-item {
          width: 100%;
          padding-left: 70px;
          padding-right: 25px;
          text-align: left !important;
        }

        .timeline-item:nth-child(even) {
          left: 0;
        }

        .timeline-item:nth-child(odd) .timeline-content::after,
        .timeline-item:nth-child(even) .timeline-content::after {
          left: -15px;
          border-width: 15px 15px 15px 0;
          border-color: transparent white transparent transparent;
        }

        .timeline-item::before {
          left: 21px;
        }
      }

      /* Stats Section */
      .stats-section {
        background: linear-gradient(to right, #2c3e50, #d35400);
        color: white;
        text-align: center;
        padding: 100px 0;
        position: relative;
      }

      .stats-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #a55700,
          transparent
        );
      }

      .stats-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #a55700,
          transparent
        );
      }

      .stats-section h2 {
        color: white;
      }

      .stats-section h2:after {
        background: #ff8c00;
      }

      .stats-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 40px;
        margin-top: 60px;
      }

      .stat-item {
        padding: 40px 20px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 12px;
        backdrop-filter: blur(5px);
        transition: all 0.3s ease;
        border: 1px solid rgba(255, 255, 255, 0.2);
      }

      .stat-item:hover {
        transform: translateY(-10px);
        background: rgba(255, 255, 255, 0.15);
        border-color: rgba(255, 255, 255, 0.3);
      }
      .stat-container {
  width: 200px;
  padding: 10px;
  border: 1px solid #ccc;
  overflow: hidden;
  text-align: center;
}

.stat-number {
  font-size: 2rem;
  font-weight: bold;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}


      .stat-number {
        font-size: 60px;
        font-weight: bold;
        margin-bottom: 15px;
        color: #ff8c00;
      }

      .stat-label {
        font-size: 18px;
        opacity: 0.9;
      }

      @media (max-width: 768px) {
        .stats-grid {
          grid-template-columns: 1fr 1fr;
        }
      }

      @media (max-width: 480px) {
        .stats-grid {
          grid-template-columns: 1fr;
        }
      }

      /* Testimonials Section */
      .testimonials-section {
        background: #f5f7fa;
        padding: 100px 0;
        position: relative;
      }

      .testimonials-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #d5d8dc,
          transparent
        );
      }

      .testimonials-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #d5d8dc,
          transparent
        );
      }

      .testimonial-slider {
        max-width: 1000px;
        margin: 0 auto;
        position: relative;
      }

      .testimonial {
        background: white;
        padding: 50px;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
        margin: 20px;
        text-align: center;
        display: none;
        border: 1px solid #eee;
      }

      .testimonial.active {
        display: block;
        animation: fadeIn 0.5s ease;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
        }
        to {
          opacity: 1;
        }
      }

      .testimonial-text {
        font-size: 22px;
        font-style: italic;
        line-height: 1.8;
        margin-bottom: 30px;
        color: #555;
        position: relative;
      }

      .testimonial-text:before,
      .testimonial-text:after {
        content: '"';
        font-size: 60px;
        color: #ff8c00;
        opacity: 0.2;
        position: absolute;
      }

      .testimonial-text:before {
        top: -30px;
        left: -20px;
      }

      .testimonial-text:after {
        bottom: -50px;
        right: -20px;
      }

      .testimonial-author {
        font-weight: bold;
        color: #2c3e50;
        font-size: 20px;
        margin-top: 30px;
      }

      .testimonial-role {
        color: #7f8c8d;
        font-size: 16px;
      }

      .testimonial-nav {
        display: flex;
        justify-content: center;
        margin-top: 40px;
      }

      .testimonial-dot {
        width: 15px;
        height: 15px;
        background: #bdc3c7;
        border-radius: 50%;
        margin: 0 10px;
        cursor: pointer;
        transition: all 0.3s ease;
      }

      .testimonial-dot.active {
        background: #ff8c00;
        transform: scale(1.2);
      }

      /* CTA Section */
      .cta-section {
        background: linear-gradient(135deg, #ff8c00, #e67e22);
        color: white;
        text-align: center;
        padding: 100px 0;
        position: relative;
      }

      .cta-section:before {
        background: linear-gradient(
          to right,
          transparent,
          #a55700,
          transparent
        );
      }

      .cta-section:after {
        background: linear-gradient(
          to right,
          transparent,
          #a55700,
          transparent
        );
      }

      .cta-section h2 {
        color: white;
        font-size: 42px;
        margin-bottom: 30px;
      }

      .cta-section h2:after {
        background: white;
        left: 50%;
        transform: translateX(-50%);
      }

      .cta-section p {
        font-size: 20px;
        max-width: 700px;
        margin: 0 auto 40px;
        color: rgba(255, 255, 255, 0.9);
      }

      .cta-button {
        display: inline-block;
        background: white;
        color: #ff8c00;
        padding: 18px 45px;
        border-radius: 50px;
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        transition: all 0.3s ease;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        border: 2px solid transparent;
      }

      .cta-button:hover {
        transform: translateY(-5px);
        box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
        border-color: #ff8c00;
      }
    </style>
    <script>
  const el = document.querySelector('.stat-number');
  const count = parseInt(el.getAttribute('data-count')); // 1000000
  const inLakhs = count / 100000; // Convert to lakhs
  el.textContent = inLakhs + " Lakh"; // Displays "10 Lakh"
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="hero-section">
      <div class="section-container">
        <h1>About Eduquity</h1>
        <p>
          Empowering organizations with innovative talent assessment solutions
          that drive success and growth
        </p>
      </div>
    </section>

    <!-- About Section -->
    <section class="section">
      <div class="section-container">
        <h2>About Eduquity</h2>
        <p>
          Eduquity Career Technologies Pvt. Ltd. is a leading provider of talent
          assessment services across India. With a focus on innovation, quality,
          and integrity, Eduquity has supported numerous organizations and
          academic institutions in streamlining recruitment, admissions, and
          evaluation processes through scientifically developed assessments and
          secure platforms.
        </p>
      </div>
    </section>

    <!-- Mantra Section -->
    <section class="section mantra-section">
      <div class="section-container">
        <h2>Our Success Mantra</h2>
        <p>
          At Eduquity, our mantra is simple — empower decision-makers with
          accurate, data-driven insights. We blend technology, psychometrics,
          and operational excellence to deliver unmatched assessment
          experiences. Our success lies in our commitment to reliability,
          scalability, and security in every project we undertake.
        </p>
      </div>
    </section>

    <!-- Timeline Section -->
    <section class="section timeline-section">
      <div class="section-container">
        <h2>Our Journey</h2>
        <div class="timeline">
          <div class="timeline-item">
            <div class="timeline-content">
              <h3>2002</h3>
              <p>
               Developed Eduquity Competency Battery (ECAB) for corporate clients.
              </p>
            </div>
          </div>
          <div class="timeline-item">
            <div class="timeline-content">
              <h3>2011</h3>
              <p>Delivered 360-Degree assessments across 11 countries in multiple languages.</p>
            </div>
          </div>
          <div class="timeline-item">
            <div class="timeline-content">
              <h3>2018</h3>
              <p>
                Initiated a digital signature based question paper transmission system.
              </p>
            </div>
          </div>
          <div class="timeline-item">
            <div class="timeline-content">
              <h3>2024</h3>
              <p>
                Successfully completed large-scale Examinations for 4.6 lakh candidates for Odisha government(OCAC)
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Statistics Section -->
    <section class="stats-section">
      <div class="section-container">
        <h2>By The Numbers</h2>
        <div class="stats-grid">
          <div class="stat-item">
         <div class="stat-number" data-count="1000000">0</div>

            <div class="stat-label">Candidates Assessed</div>
          </div>
          <div class="stat-item">
            <div class="stat-number" data-count="500">0</div>
            <div class="stat-label">Partner Institutions</div>
          </div>
          <div class="stat-item">
            <div class="stat-number" data-count="95">0</div>
            <div class="stat-label">% Client Retention</div>
          </div>
          <div class="stat-item">
            <div class="stat-number" data-count="12">0</div>
            <div class="stat-label">Years of Excellence</div>
          </div>
        </div>
      </div>
    </section>

    <!-- Leadership Section -->
    <section class="section leadership-section">
      <div class="section-container">
        <h2>Our Leadership</h2>
        <div class="leadership-grid">
          <div class="leader-card">
            <img src="https://via.placeholder.com/150" alt="Leader 1" />
            <h4>Mr. CEO</h4>
            <p>Chief Executive Officer</p>
          </div>
          <div class="leader-card">
            <img src="https://via.placeholder.com/150" alt="Leader 2" />
            <h4>Ms. CTO</h4>
            <p>Chief Technology Officer</p>
          </div>
          <div class="leader-card">
            <img src="https://via.placeholder.com/150" alt="Leader 3" />
            <h4>Dr. CFO</h4>
            <p>Chief Finance officer</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials-section">
      <div class="section-container">
        <h2>What Our Partners Say</h2>
        <div class="testimonial-slider">
          <div class="testimonial active">
            <p class="testimonial-text">
              Eduquity's assessment platform has transformed our recruitment
              process, saving us time while improving candidate quality.
            </p>
            <div class="testimonial-author">Dr. Sanjay Patel</div>
            <div class="testimonial-role">Director, ABC University</div>
          </div>
          <div class="testimonial">
            <p class="testimonial-text">
              The reliability and security of Eduquity's testing solutions are
              unmatched in the industry.
            </p>
            <div class="testimonial-author">Ms. Priya Nair</div>
            <div class="testimonial-role">HR Head, XYZ Corporation</div>
          </div>
          <div class="testimonial">
            <p class="testimonial-text">
              Their psychometric assessments have given us invaluable insights
              into student potential that traditional exams couldn't reveal.
            </p>
            <div class="testimonial-author">Prof. Amit Joshi</div>
            <div class="testimonial-role">Dean, PQR Institute</div>
          </div>
          <div class="testimonial-nav">
            <div class="testimonial-dot active" data-index="0"></div>
            <div class="testimonial-dot" data-index="1"></div>
            <div class="testimonial-dot" data-index="2"></div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
      <div class="section-container">
        <h2>Ready to Transform Your Assessment Process?</h2>
        <p>
          Discover how Eduquity's innovative solutions can help you make better,
          data-driven decisions about talent.
        </p>
        <a href="Contact.aspx" class="cta-button">Get in Touch</a>
      </div>
    </section>

    <script>
      // Timeline animation
      document.addEventListener("DOMContentLoaded", function () {
        const timelineItems = document.querySelectorAll(".timeline-item");

        const timelineObserver = new IntersectionObserver(
          (entries) => {
            entries.forEach((entry) => {
              if (entry.isIntersecting) {
                entry.target.classList.add("visible");
              }
            });
          },
          { threshold: 0.5 }
        );

        timelineItems.forEach((item) => {
          timelineObserver.observe(item);
        });

        // Counter animation
        const counters = document.querySelectorAll(".stat-number");
        const speed = 200;

        const statsObserver = new IntersectionObserver(
          (entries) => {
            entries.forEach((entry) => {
              if (entry.isIntersecting) {
                const target = +entry.target.getAttribute("data-count");
                const count = +entry.target.innerText;
                const increment = target / speed;

                if (count < target) {
                  entry.target.innerText = Math.ceil(count + increment);
                  setTimeout(updateCount, 1);
                } else {
                  entry.target.innerText = target.toLocaleString();
                }

                function updateCount() {
                  const count = +entry.target.innerText.replace(/,/g, "");
                  if (count < target) {
                    entry.target.innerText = Math.ceil(
                      count + increment
                    ).toLocaleString();
                    setTimeout(updateCount, 1);
                  } else {
                    entry.target.innerText = target.toLocaleString();
                  }
                }
              }
            });
          },
          { threshold: 0.5 }
        );

        counters.forEach((counter) => {
          statsObserver.observe(counter);
        });

        // Testimonial slider
        const testimonials = document.querySelectorAll(".testimonial");
        const dots = document.querySelectorAll(".testimonial-dot");
        let currentTestimonial = 0;

        function showTestimonial(index) {
          testimonials.forEach((testimonial) =>
            testimonial.classList.remove("active")
          );
          dots.forEach((dot) => dot.classList.remove("active"));

          testimonials[index].classList.add("active");
          dots[index].classList.add("active");
          currentTestimonial = index;
        }

        dots.forEach((dot) => {
          dot.addEventListener("click", function () {
            showTestimonial(parseInt(this.getAttribute("data-index")));
          });
        });

        // Auto-rotate testimonials
        setInterval(() => {
          currentTestimonial = (currentTestimonial + 1) % testimonials.length;
          showTestimonial(currentTestimonial);
        }, 5000);
      });
    </script>
</asp:Content>
