<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Work.aspx.cs" Inherits="MASTER1.Work1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
       <title>Work With Us</title>

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <!-- AOS Animation CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css"
      rel="stylesheet"
    />

    <!-- Animate.css -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
      rel="stylesheet"
    />

    <!-- Font Awesome for icons -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />

    <style>
     


      .section-title {
        text-align: center;
        margin-bottom: 2rem;
        color: #e65100;
      }

      .card {
        border: none;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        transition: 0.3s ease;
        cursor: pointer;
      }

      .card:hover {
        transform: translateY(-5px);
      }

      .btn-orange {
        background-color: #ff9800;
        color: white;
        border: none;
      }

      .btn-outline-orange {
        color: #ff9800;
        border-color: #ff9800;
      }

      .btn-outline-orange:hover {
        background-color: #ff9800;
        color: white;
      }

      .btn-orange:hover {
        background-color: #fb8c00;
      }

    

      .hidden {
        display: none;
      }

      .form-control:focus {
        border-color: #fb8c00;
        box-shadow: 0 0 0 0.2rem rgba(255, 152, 0, 0.25);
      }

      label {
        font-weight: 500;
      }

      .resume-section {
        background: linear-gradient(135deg, #fff3e0, #ffe0b2);
        padding: 30px;
        border-radius: 15px;
        animation: fadeIn 1s ease-in-out;
      }

      @keyframes fadeIn {
        from {
          opacity: 0;
          transform: translateY(30px);
        }
        to {
          opacity: 1;
          transform: translateY(0);
        }
      }

      /* Why Join Us Section - Modern Card Style */
      .perks-card {
        padding: 30px;
        text-align: center;
        height: 100%;
        background: white;
        border-left: 4px solid #ff9800;
      }

      .perks-card h5 {
        color: #e65100;
        margin-bottom: 15px;
      }

      /* What Our Team Says - Testimonial Style */
      .testimonial-section {
        background-color: #fff8f0;
        padding: 40px 0;
        border-radius: 15px;
        margin: 40px 0;
      }

      .testimonial-card {
        padding: 25px;
        height: 100%;
        background: white;
        border-radius: 10px;
        position: relative;
        border-top: 3px solid #ff9800;
      }

      .testimonial-card p {
        font-style: italic;
        color: #555;
        margin-bottom: 20px;
      }

      .testimonial-card h6 {
        color: #e65100;
        font-weight: 600;
      }

      .testimonial-card:before {
        content: """;
        font-size: 60px;
        color: rgba(255, 152, 0, 0.1);
        position: absolute;
        top: 10px;
        left: 15px;
        font-family: Georgia, serif;
      }

      /* Culture Cards */
      .culture-card {
        padding: 25px;
        text-align: center;
        height: 100%;
        background: linear-gradient(to bottom, #fff3e0, white);
      }

      .culture-card h5 {
        color: #e65100;
      }

      /* Process Steps - New Improved Design */
      .process-step {
        height: 100%;
        text-align: center;
        padding: 25px 15px;
        background: white;
        border-radius: 10px;
        position: relative;
        overflow: hidden;
        transition: all 0.3s ease;
      }

      .process-step::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 5px;
        background: linear-gradient(90deg, #ff9800, #fb8c00);
      }

      .process-step h6 {
        color: #ff9800;
        font-size: 1.1rem;
        margin-bottom: 15px;
        position: relative;
        display: inline-block;
      }

      .process-step h6::after {
        content: "";
        position: absolute;
        bottom: -8px;
        left: 50%;
        transform: translateX(-50%);
        width: 40px;
        height: 3px;
        background-color: #ff9800;
      }

      .process-step p {
        color: #555;
        margin-bottom: 0;
      }

      .process-step:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(255, 152, 0, 0.1);
      }

      /* Social Media Icons */
      .social-icon {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background-color: white;
        color: #ff9800;
        margin: 0 8px;
        transition: all 0.3s ease;
        border: 1px solid #ff9800;
      }

      .social-icon:hover {
        background-color: #ff9800;
        color: white;
        transform: translateY(-3px);
      }

      /* Smooth scroll */
      html {
        scroll-behavior: smooth;
      }

      /* Job cards */
      .job-card {
        transition: all 0.3s ease;
      }

      .job-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container py-5">
      <!-- Perks Section - Why Join Us -->
      <h2 class="section-title">Why Join Us?</h2>
      <div class="row mb-5">
        <div class="col-md-4" data-aos="fade-up">
          <div class="card perks-card">
            <h5>Flexible Environment</h5>
            <p>
              Work remotely or from the office with flexible hours that fit your
              lifestyle.
            </p>
          </div>
        </div>
        <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
          <div class="card perks-card">
            <h5>Growth Opportunities</h5>
            <p>
              We invest $2,000 annually in each employee's learning and
              development.
            </p>
          </div>
        </div>
        <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
          <div class="card perks-card">
            <h5>Supportive Team</h5>
            <p>
              Join a collaborative culture with mentorship programs and regular
              feedback.
            </p>
          </div>
        </div>
      </div>

      <!-- Company Culture Section -->
      <h2 class="section-title">Our Culture</h2>
      <div class="row text-center mb-5">
        <div class="col-md-4" data-aos="zoom-in">
          <div class="card culture-card">
            <h5>Innovative</h5>
            <p>
              We encourage creativity, experiments, and thinking outside the box
              with our monthly hackathons.
            </p>
          </div>
        </div>
        <div class="col-md-4" data-aos="zoom-in" data-aos-delay="100">
          <div class="card culture-card">
            <h5>Inclusive</h5>
            <p>
              Diversity drives our strength. We have team members from 15+
              countries.
            </p>
          </div>
        </div>
        <div class="col-md-4" data-aos="zoom-in" data-aos-delay="200">
          <div class="card culture-card">
            <h5>Fun</h5>
            <p>
              Quarterly retreats, game nights, and celebrations for milestones
              big and small.
            </p>
          </div>
        </div>
      </div>

      <!-- Employee Testimonials - What Our Team Says -->
      <div class="testimonial-section">
        <div class="container">
          <h2 class="section-title">What Our Team Says</h2>
          <div class="row">
            <div class="col-md-6 mb-4" data-aos="fade-right">
              <div class="testimonial-card">
                <p>
                  "I've grown more in 1 year here than 3 years at my previous
                  company. The supportive team and exciting projects make every
                  day rewarding."
                </p>
                <h6 class="mb-0">– Priya K., Senior Software Engineer</h6>
                <small class="text-muted">2 years with us</small>
              </div>
            </div>
            <div class="col-md-6 mb-4" data-aos="fade-left">
              <div class="testimonial-card">
                <p>
                  "The flexible hours and learning culture helped me transition
                  from marketing to product management in just 18 months."
                </p>
                <h6 class="mb-0">– Arun M., Product Manager</h6>
                <small class="text-muted">Former Data Analyst</small>
              </div>
            </div>
          </div>

          <!-- Hidden testimonials -->
          <div id="moreTestimonials" class="row hidden">
            <div class="col-md-6 mb-4">
              <div class="testimonial-card">
                <p>
                  "The work-life balance here is incredible. I get to pursue my
                  passion projects while delivering great work for the company."
                </p>
                <h6 class="mb-0">– Rohan S., UX Designer</h6>
                <small class="text-muted">1.5 years with us</small>
              </div>
            </div>
            <div class="col-md-6 mb-4">
              <div class="testimonial-card">
                <p>
                  "Management truly cares about employee growth. I've been
                  promoted twice in three years with clear paths for further
                  advancement."
                </p>
                <h6 class="mb-0">– Neha P., Team Lead</h6>
                <small class="text-muted">3 years with us</small>
              </div>
            </div>
          </div>

          <div class="text-center mt-4">
            <button
              class="btn btn-outline-orange"
              onclick="toggleTestimonials()"
            >
              Read More Stories
            </button>
          </div>
        </div>
      </div>

      <!-- Job Openings Section -->
      <h2 class="section-title">Recent Openings</h2>
      <div class="row" id="jobList">
        <div class="col-md-6 mb-4" data-aos="fade-right">
          <div
            class="card p-3 job-card"
            onclick="scrollToApply('Frontend Developer')"
          >
            <h5>Frontend Developer</h5>
            <p>HTML, CSS, React, responsive design.</p>
          </div>
        </div>
        <div class="col-md-6 mb-4" data-aos="fade-left">
          <div
            class="card p-3 job-card"
            onclick="scrollToApply('Backend Developer')"
          >
            <h5>Backend Developer</h5>
            <p>.NET Core, REST APIs, SQL Server.</p>
          </div>
        </div>
        <div class="col-md-6 mb-4" data-aos="fade-right">
          <div
            class="card p-3 job-card"
            onclick="scrollToApply('UI/UX Designer')"
          >
            <h5>UI/UX Designer</h5>
            <p>Figma, Adobe XD, user testing.</p>
          </div>
        </div>
        <div class="col-md-6 mb-4" data-aos="fade-left">
          <div
            class="card p-3 job-card"
            onclick="scrollToApply('Data Analyst')"
          >
            <h5>Data Analyst</h5>
            <p>Python, SQL, Excel, Power BI.</p>
          </div>
        </div>

        <!-- More jobs hidden -->
        <div id="moreJobs" class="row hidden">
          <div class="col-md-6 mb-4">
            <div
              class="card p-3 job-card"
              onclick="scrollToApply('DevOps Engineer')"
            >
              <h5>DevOps Engineer</h5>
              <p>CI/CD, Docker, Kubernetes, Azure.</p>
            </div>
          </div>
          <div class="col-md-6 mb-4">
            <div class="card p-3 job-card" onclick="scrollToApply('QA Tester')">
              <h5>QA Tester</h5>
              <p>Manual + Automation Testing, Selenium.</p>
            </div>
          </div>
        </div>
      </div>

      <!-- View All Jobs Button -->
      <div class="text-center mt-3">
        <button class="btn btn-orange" onclick="toggleJobs()">
          View All Jobs
        </button>
      </div>

      <!-- Hiring Process Section -->
      <h2 class="section-title mt-5">Our Hiring Process</h2>
      <div class="row text-center mb-5">
        <div class="col-md-3" data-aos="fade-up">
          <div class="process-step">
            <h6>Step 1</h6>
            <p>Apply Online</p>
            <i
              class="fas fa-laptop mt-3"
              style="color: #ff9800; font-size: 2rem"
            ></i>
          </div>
        </div>
        <div class="col-md-3" data-aos="fade-up" data-aos-delay="100">
          <div class="process-step">
            <h6>Step 2</h6>
            <p>Screening Call</p>
            <i
              class="fas fa-phone-alt mt-3"
              style="color: #ff9800; font-size: 2rem"
            ></i>
          </div>
        </div>
        <div class="col-md-3" data-aos="fade-up" data-aos-delay="200">
          <div class="process-step">
            <h6>Step 3</h6>
            <p>Technical Interview</p>
            <i
              class="fas fa-code mt-3"
              style="color: #ff9800; font-size: 2rem"
            ></i>
          </div>
        </div>
        <div class="col-md-3" data-aos="fade-up" data-aos-delay="300">
          <div class="process-step">
            <h6>Step 4</h6>
            <p>Offer & Onboarding</p>
            <i
              class="fas fa-handshake mt-3"
              style="color: #ff9800; font-size: 2rem"
            ></i>
          </div>
        </div>
      </div>

      <!-- Resume Upload Section -->
      <h2 class="section-title" id="applySection">Send Your Resume</h2>
      <div class="row justify-content-center">
        <div class="col-md-8" data-aos="zoom-in">
          <div class="resume-section">
            <form>
              <div class="form-floating mb-4">
                <input
                  type="text"
                  class="form-control"
                  id="name"
                  placeholder="Your Name"
                  required
                />
                <label for="name">Full Name</label>
              </div>
              <div class="form-floating mb-4">
                <input
                  type="email"
                  class="form-control"
                  id="email"
                  placeholder="name@example.com"
                  required
                />
                <label for="email">Email address</label>
              </div>
              <div class="mb-4">
                <label for="role" class="form-label fw-semibold"
                  >Role Applying For</label
                >
                <select class="form-select" id="role" required>
                  <option value="" selected disabled>Select a role</option>
                  <option value="Frontend Developer">Frontend Developer</option>
                  <option value="Backend Developer">Backend Developer</option>
                  <option value="UI/UX Designer">UI/UX Designer</option>
                  <option value="Data Analyst">Data Analyst</option>
                  <option value="DevOps Engineer">DevOps Engineer</option>
                  <option value="QA Tester">QA Tester</option>
                  <option value="Other">Other</option>
                </select>
              </div>
              <div class="mb-4">
                <label for="resume" class="form-label fw-semibold"
                  >Upload Resume (PDF/DOC)</label
                >
                <input
                  class="form-control"
                  type="file"
                  id="resume"
                  accept=".pdf,.doc,.docx"
                  required
                />
              </div>
              <div class="form-floating mb-4">
                <textarea
                  class="form-control"
                  placeholder="Write a short message..."
                  id="message"
                  style="height: 100px"
                ></textarea>
                <label for="message">Your Message</label>
              </div>
              <div class="text-center">
                <button
                  type="submit"
                  class="btn btn-orange px-5 py-2 rounded-pill shadow-sm animate__animated animate__pulse"
                >
                  Submit Resume
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <!-- FAQ Section -->
      <h2 class="section-title mt-5">Frequently Asked Questions</h2>
      <div class="row justify-content-center mb-5">
        <div class="col-md-8">
          <div class="accordion" id="faqAccordion">
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingOne">
                <button
                  class="accordion-button"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseOne"
                >
                  Do you offer remote roles?
                </button>
              </h2>
              <div
                id="collapseOne"
                class="accordion-collapse collapse show"
                data-bs-parent="#faqAccordion"
              >
                <div class="accordion-body">
                  Yes, we support both remote and hybrid options depending on
                  the position.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseTwo"
                >
                  What file types can I upload?
                </button>
              </h2>
              <div
                id="collapseTwo"
                class="accordion-collapse collapse"
                data-bs-parent="#faqAccordion"
              >
                <div class="accordion-body">
                  We accept PDF, DOC, and DOCX files for resume uploads.
                </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingThree">
                <button
                  class="accordion-button collapsed"
                  type="button"
                  data-bs-toggle="collapse"
                  data-bs-target="#collapseThree"
                >
                  How long does the hiring process take?
                </button>
              </h2>
              <div
                id="collapseThree"
                class="accordion-collapse collapse"
                data-bs-parent="#faqAccordion"
              >
                <div class="accordion-body">
                  Typically 2-3 weeks from application to offer, depending on
                  the role and interview schedule.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Social Media Links -->
      <div class="text-center mt-5">
        <h5>Connect with Us</h5>
        <div class="mt-3">
          <a
            href="https://linkedin.com"
            target="_blank"
            class="social-icon"
            title="LinkedIn"
          >
            <i class="fab fa-linkedin-in"></i>
          </a>
          <a
            href="https://instagram.com"
            target="_blank"
            class="social-icon"
            title="Instagram"
          >
            <i class="fab fa-instagram"></i>
          </a>
          <a
            href="https://twitter.com"
            target="_blank"
            class="social-icon"
            title="Twitter"
          >
            <i class="fab fa-twitter"></i>
          </a>
          <a
            href="https://facebook.com"
            target="_blank"
            class="social-icon"
            title="Facebook"
          >
            <i class="fab fa-facebook-f"></i>
          </a>
        </div>
      </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script>
      AOS.init();

      function toggleJobs() {
        const moreJobs = document.getElementById("moreJobs");
        const button = event.target;
        if (moreJobs.classList.contains("hidden")) {
          moreJobs.classList.remove("hidden");
          button.innerText = "Show Less";
        } else {
          moreJobs.classList.add("hidden");
          button.innerText = "View All Jobs";
        }
      }

      function toggleTestimonials() {
        const moreTestimonials = document.getElementById("moreTestimonials");
        const button = event.target;
        if (moreTestimonials.classList.contains("hidden")) {
          moreTestimonials.classList.remove("hidden");
          button.innerText = "Show Less";
        } else {
          moreTestimonials.classList.add("hidden");
          button.innerText = "Read More Stories";
        }
      }

      function scrollToApply(role) {
        // Scroll to the apply section
        document
          .getElementById("applySection")
          .scrollIntoView({ behavior: "smooth" });

        // Set the selected role in the dropdown
        const roleSelect = document.getElementById("role");
        roleSelect.value = role;
      }
    </script>
</asp:Content>
