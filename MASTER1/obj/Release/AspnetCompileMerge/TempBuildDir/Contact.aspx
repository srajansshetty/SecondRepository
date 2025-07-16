<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MASTER1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
 <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!-- Leaflet CSS -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
    />
    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap"
      rel="stylesheet"
    />
    <!-- Custom CSS -->
    <style>
           .nta-header {
        width: 100%;
        background: linear-gradient(to right, #ffa726, #fff3e0);
        padding: 25px 20px;
        font-family: "Segoe UI", sans-serif;
        color: #333;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        border-bottom: 3px solid #fb8c00;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-radius: 0 0 20px 20px;
      }

      .nta-header .title {
        font-size: 1.8em;
        font-weight: bold;
        color: black;
         padding-left: 40px;
      }

     .nta-header .nav-links a {
  margin-left: 10px; /* Reduced from 20px */
  text-decoration: none;
  color: #4e342e;
  font-size: 1em;
  font-weight: 500;
  transition: color 0.3s;
  padding-right: 20px; /* Reduced from 40px */
}


      .nta-header .nav-links a:hover {
        color: #bf360c;
        text-decoration: underline;
      }

      @media (max-width: 600px) {
        .nta-header {
          flex-direction: column;
          align-items: flex-start;
        }

        .nta-header .nav-links {
          margin-top: 10px;
        }

        .nta-header .nav-links a {
          display: block;
          margin: 5px 0;
        }
      }
     
.contact-section {
  padding: 80px 0;
}
.contact-container {
  background: #fff;
  padding: 30px;
  border-radius: 15px;
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
  transition: transform 0.3s ease;
  border: 2px solid #ff6200; /* Added orange border */
}
.contact-container:hover {
  transform: translateY(-5px);
}
.contact-container h2 {
  color: #ff6200;
  font-weight: 700;
  margin-bottom: 25px;
}
.form-control {
  border-radius: 8px;
  border: 2px solid #e0e0e0;
  transition: all 0.3s;
}
.form-control:focus {
  border-color: #ff6200;
  box-shadow: 0 0 8px rgba(255, 98, 0, 0.2);
}
.invalid-field {
  border-color: #dc3545 !important;
}
.error-message {
  color: #dc3545;
  font-size: 0.85rem;
  margin-top: 4px;
  display: none;
}
#map {
  height: 350px;
  border-radius: 10px;
  margin: 20px 0;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}
.contact-info p {
  font-size: 1rem;
  color: #555;
  margin: 12px 0;
  display: flex;
  align-items: center;
}
.contact-info i {
  margin-right: 8px;
  color: #ff6200;
  font-size: 1.2rem;
}
.social-icons a {
  color: #ff6200;
  font-size: 25px;
  margin: 0 12px;
  transition: all 0.3s ease;
}
.social-icons a:hover {
  color: #e65b00;
  transform: scale(1.2);
}
.btn-primary {
  background-color: #ff6200;
  border-color: #ff6200;
  border-radius: 8px;
  padding: 10px;
  font-weight: 600;
  transition: all 0.3s;
}
.btn-primary:hover {
  background-color: #e65b00;
  border-color: #e65b00;
}
.modal-content {
  border-radius: 15px;
  border: 2px solid #ff6200; /* Added orange border */
}
.modal-header {
  background: #ff6200;
  color: #fff;
  border-radius: 15px 15px 0 0;
}
.faq-section h3 {
  color: #ff6200;
  margin-top: 30px;
  font-weight: 600;
}
.accordion-button {
  border-radius: 8px;
  background: #fff3e6;
  color: #333;
}
.accordion-button:not(.collapsed) {
  background: #ff6200;
  color: #fff;
}
.accordion-item {
  border: none;
  margin-bottom: 10px;
  border-radius: 8px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  border: 2px solid #ff6200; /* Added orange border */
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="nta-header">
      <div class="title"><b>CONTACT US</b></div>
      <div class="nav-links">
        <a href="home.aspx">HOME -> </a>
        <a href="Contact.aspx"> Contact Us</a>
      </div>
    </div>
    <section class="contact-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <div class="contact-container">
              <h2>Contact Us</h2>
              <form id="contactForm" enctype="multipart/form-data">
                <div class="mb-3">
                  <label for="name" class="form-label">Full Name</label>
                  <input
                    type="text"
                    class="form-control"
                    id="name"
                    placeholder="Enter your name"
                    required
                  />
                  <div class="error-message" id="nameError">
                    Name must be at least 2 characters.
                  </div>
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label">Email Address</label>
                  <input
                    type="email"
                    class="form-control"
                    id="email"
                    placeholder="Enter your email"
                    required
                  />
                  <div class="error-message" id="emailError">
                    Please enter a valid email address.
                  </div>
                </div>
                <div class="mb-3">
                  <label for="phone" class="form-label">Phone Number</label>
                  <input
                    type="tel"
                    class="form-control"
                    id="phone"
                    placeholder="Enter your phone number"
                  />
                  <div class="error-message" id="phoneError">
                    Please enter a valid phone number.
                  </div>
                </div>
                <div class="mb-3">
                  <label for="message" class="form-label">Message</label>
                  <textarea
                    class="form-control"
                    id="message"
                    rows="5"
                    placeholder="Your message"
                    required
                  ></textarea>
                  <div class="error-message" id="messageError">
                    Message must be at least 10 characters.
                  </div>
                </div>
                <button type="submit" class="btn btn-primary w-100">
                  Send Message
                </button>
              </form>
              <div class="contact-info mt-4">
                <p>
                  <i class="fas fa-envelope"></i> Email:
                  support@bangaloretech.com
                </p>
                thủ
                <p><i class="fas fa-phone"></i> Phone: +91 80 1234 5678</p>
                <p>
                  <i class="fas fa-map-marker-alt"></i> Address: Ajmera Nucleus,
                  Electronic City Phase 2, Bangalore, Karnataka, India
                </p>
                <p><i class="fas fa-clock"></i> Hours: Mon-Fri, 10 AM - 6 PM</p>
              </div>
              <div class="social-icons text-center mt-3">
                <a href="#" class="fab fa-facebook-f" title="Facebook"></a>
                <a href="#" class="fab fa-twitter" title="Twitter"></a>
                <a href="#" class="fab fa-instagram" title="Instagram"></a>
                <a href="#" class="fab fa-linkedin-in" title="LinkedIn"></a>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="contact-container">
              <h2>Our Location</h2>
              <div id="map"></div>
              <div class="faq-section">
                <h3>Frequently Asked Questions</h3>
                <div class="accordion" id="faqAccordion">
                  <div class="accordion-item">
                    <h2 class="accordion-header" id="faq1">
                      <button
                        class="accordion-button"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#collapse1"
                        aria-expanded="true"
                        aria-controls="collapse1"
                      >
                        How can I reach support?
                      </button>
                    </h2>
                    <div
                      id="collapse1"
                      class="accordion-collapse collapse show"
                      aria-labelledby="faq1"
                      data-bs-parent="#faqAccordion"
                    >
                      <div class="accordion-body">
                        You can reach us via email at support@bangaloretech.com
                        or phone at +91 80 1234 5678.
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item">
                    <h2 class="accordion-header" id="faq2">
                      <button
                        class="accordion-button collapsed"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#collapse2"
                        aria-expanded="false"
                        aria-controls="collapse2"
                      >
                        What are your office hours?
                      </button>
                    </h2>
                    <div
                      id="collapse2"
                      class="accordion-collapse collapse"
                      aria-labelledby="faq2"
                      data-bs-parent="#faqAccordion"
                    >
                      <div class="accordion-body">
                        Our office is open Monday to Friday, 10 AM to 6 PM.
                      </div>
                    </div>
                  </div>
                  <div class="accordion-item">
                    <h2 class="accordion-header" id="faq3">
                      <button
                        class="accordion-button collapsed"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#collapse3"
                        aria-expanded="false"
                        aria-controls="collapse3"
                      >
                        Can I visit your office?
                      </button>
                    </h2>
                    <div
                      id="collapse3"
                      class="accordion-collapse collapse"
                      aria-labelledby="faq3"
                      data-bs-parent="#faqAccordion"
                    >
                      <div class="accordion-body">
                        Yes, please schedule an appointment by contacting us
                        first.
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Submission Confirmation Modal -->
    <div
      class="modal fade"
      id="successModal"
      tabindex="-1"
      aria-labelledby="successModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="successModalLabel">
              Message Sent Successfully!
            </h5>
            <button
              type="button"
              class="btn-close btn-close-white"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <p>
              Thank you for your message! Here's a preview of your submission:
            </p>
            <div id="submissionPreview"></div>
          </div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-primary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Leaflet JS -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <!-- Font Awesome -->
    <script
      src="https://kit.fontawesome.com/a076d05399.js"
      crossorigin="anonymous"
    ></script>
    <!-- Custom JS -->
    <script>
      // Initialize Leaflet Map for Electronic City Phase 2, Bangalore
      const map = L.map("map").setView([12.8394, 77.6776], 15);
      L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
        attribution:
          '© <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
      }).addTo(map);
      L.marker([12.8394, 77.6776])
        .addTo(map)
        .bindPopup("Office: Ajmera Nucleus, Electronic City Phase 2, Bangalore")
        .openPopup();

      // Form Elements
      const form = document.getElementById("contactForm");
      const inputs = {
        name: document.getElementById("name"),
        email: document.getElementById("email"),
        phone: document.getElementById("phone"),
        message: document.getElementById("message"),
      };

      // Validation Functions
      const validations = {
        name: (val) => val.length >= 2,
        email: (val) => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(val),
        phone: (val) => !val || /^\+?\d{10,15}$/.test(val),
        message: (val) => val.length >= 10,
      };

      const errorMessages = {
        name: "Name must be at least 2 characters.",
        email: "Please enter a valid email address.",
        phone: "Please enter a valid phone number (10-15 digits).",
        message: "Message must be at least 10 characters.",
      };

      function validateInput(input, errorId, validationFn, errorMessage) {
        const errorElement = document.getElementById(errorId);
        const value = input.value;
        if (!validationFn(value)) {
          input.classList.add("invalid-field");
          errorElement.style.display = "block";
          errorElement.textContent = errorMessage;
          return false;
        } else {
          input.classList.remove("invalid-field");
          errorElement.style.display = "none";
          return true;
        }
      }

      // Real-time Validation
      Object.keys(inputs).forEach((key) => {
        inputs[key].addEventListener("input", () => {
          validateInput(
            inputs[key],
            `${key}Error`,
            validations[key],
            errorMessages[key]
          );
        });
      });

      // Form Submission
      form.addEventListener("submit", (e) => {
        e.preventDefault();
        let isValid = true;
        Object.keys(inputs).forEach((key) => {
          if (
            !validateInput(
              inputs[key],
              `${key}Error`,
              validations[key],
              errorMessages[key]
            )
          ) {
            isValid = false;
          }
        });

        if (isValid) {
          const preview = `
            <p><strong>Name:</strong> ${inputs.name.value}</p>
            <p><strong>Email:</strong> ${inputs.email.value}</p>
            <p><strong>Phone:</strong> ${
              inputs.phone.value || "Not provided"
            }</p>
            <p><strong>Message:</strong> ${inputs.message.value}</p>
          `;
          document.getElementById("submissionPreview").innerHTML = preview;
          const modal = new bootstrap.Modal(
            document.getElementById("successModal")
          );
          modal.show();
          form.reset();
        }
      });
    </script>
</asp:Content>
