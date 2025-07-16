<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Examination.aspx.cs" Inherits="MASTER1.Examination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="Style.css" />
   
     <%--  <style>
      body.exam-body {
        font-family: "Arial", sans-serif;
        background-color: #fff7ed;
        color: #1f2937;
        margin: 0;
        padding: 0;
        line-height: 1.6;
      }

      .exam-container {
        width: 100%;
        max-width: 1150px;
        margin: 0 auto;
        padding: 0 20px;
      }

      .exam-main {
        padding: 4rem 0;
      }

      .exam-section {
        margin-bottom: 4rem;
      }

      .exam-text-center {
        text-align: center;
      }

      .exam-h2 {
        font-size: 2rem;
        font-weight: 600;
        color: #1f2937;
        margin-bottom: 1.5rem;
      }

      .exam-intro p {
        font-size: 1.125rem;
        color: #4b5563;
        max-width: 800px;
        margin: 0 auto;
      }

      .exam-tree-container {
        position: relative;
        padding-left: 3rem;
        margin: 2rem 0;
      }

      .exam-tree-node {
        background-color: #ffffff;
        border: 3px solid #f97316;
        border-radius: 1rem;
        padding: 1.5rem;
        margin: 1.5rem 0;
        position: relative;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        opacity: 0;
        transform: translateY(20px);
        transition: opacity 0.6s ease, transform 0.6s ease, box-shadow 0.3s ease;
      }

      .exam-tree-node.visible {
        opacity: 1;
        transform: translateY(0);
      }

      .exam-tree-node:hover {
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
      }

      .exam-tree-node::before {
        content: "";
        position: absolute;
        top: -1.5rem;
        left: 50%;
        height: 1.5rem;
        border-left: 3px solid #f97316;
      }

      .exam-tree-node:first-child::before {
        display: none;
      }

      .exam-section-header {
        background-color: #f97316;
        color: #ffffff;
        padding: 0.75rem 1.5rem;
        border-radius: 0.5rem;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 1px;
        position: relative;
        overflow: hidden;
        margin-bottom: 1rem;
        font-size: 1.25rem;
      }

      .exam-section-header::after {
        content: "";
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(
          90deg,
          transparent,
          rgba(255, 255, 255, 0.3),
          transparent
        );
        animation: exam-shine 2s infinite;
      }

      .exam-tree-node p {
        color: #4b5563;
        margin-bottom: 1rem;
        font-weight: 500;
      }

      .exam-ul {
        list-style: none;
        padding-left: 0;
        margin: 1rem 0;
      }

      .exam-ul li {
        position: relative;
        padding-left: 1.5rem;
        margin-bottom: 0.5rem;
        opacity: 0;
        transform: translateX(-20px);
        transition: opacity 0.5s ease, transform 0.5s ease;
        color: #4b5563;
      }

      .exam-ul li.visible {
        opacity: 1;
        transform: translateX(0);
      }

      .exam-ul li::before {
        content: "•";
        position: absolute;
        left: 0;
        color: #f97316;
        font-size: 1.5rem;
        line-height: 1;
      }

      .exam-cta-section {
        background-color: #fffbeb;
        padding: 2.5rem;
        border-radius: 0.5rem;
        text-align: center;
      }

      .exam-btn-primary {
        background-color: #f97316;
        color: #ffffff;
        padding: 0.75rem 1.5rem;
        border-radius: 0.5rem;
        transition: background-color 0.3s ease, transform 0.3s ease;
        display: inline-block;
        text-decoration: none;
        font-weight: 600;
        border: none;
        cursor: pointer;
        font-size: 1rem;
      }

      .exam-btn-primary:hover {
        background-color: #ea580c;
        transform: scale(1.05);
      }

      @keyframes exam-shine {
        0% {
          left: -100%;
        }
        50% {
          left: 100%;
        }
        100% {
          left: 100%;
        }
      }

      @media (max-width: 768px) {
        .exam-h2 {
          font-size: 1.75rem;
        }

        .exam-tree-container {
          padding-left: 1.5rem;
        }

        .exam-tree-node {
          padding: 1rem;
        }

        .exam-section-header {
          font-size: 1.1rem;
          padding: 0.5rem 1rem;
        }
      }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <main class="exam-main exam-container">
      <!-- Introduction -->
      <section class="exam-intro exam-text-center exam-section">
        <h2 class="exam-h2">Why Choose Eduquity?</h2>
        <p>
          Eduquity specializes in delivering secure, scalable, and efficient
          computer-based examination solutions. Our services are elegantly
          structured to guide you through every phase of the examination process
          with precision and clarity.
        </p>
      </section>

      <!-- Tree Structure -->
      <section class="exam-section">
        <h2 class="exam-text-center exam-h2">Examination Process Breakdown</h2>
        <div class="exam-tree-container">
          <!-- Pre-Examination -->
          <div class="exam-tree-node">
            <h3 class="exam-section-header">Pre-Examination Process</h3>
            <p>
              Laying the foundation for a flawless examination, this phase
              focuses on streamlined application systems, secure question
              creation, and meticulous logistics planning.
            </p>
            <ul class="exam-ul">
              <li>
                Custom online application portal with robust data validation
              </li>
              <li>Seamless integration into client websites</li>
              <li>Efficient admit card generation and distribution</li>
              <li>Secure payment gateway with reconciliation</li>
              <li>Expert question bank authoring and development</li>
              <li>Multi-layered secure question entry tools</li>
              <li>Optimized test center allocation and management</li>
              <li>Strategic manpower planning</li>
            </ul>
          </div>

          <!-- During-Examination -->
          <div class="exam-tree-node">
            <h3 class="exam-section-header">During-Examination Process</h3>
            <p>
              Ensuring integrity and efficiency, this phase employs cutting-edge
              authentication and monitoring technologies for a secure testing
              environment.
            </p>
            <ul class="exam-ul">
              <li>Advanced test center configuration</li>
              <li>
                Multi-modal candidate authentication (facial, Aadhaar,
                biometric, physical)
              </li>
              <li>Encrypted question paper transmission</li>
              <li>Real-time data synchronization with head office</li>
              <li>Precise lab allocation and verification</li>
              <li>Comprehensive CCTV surveillance</li>
              <li>Structured, procedure-driven CBT execution</li>
            </ul>
          </div>

          <!-- Post-Examination -->
          <div class="exam-tree-node">
            <h3 class="exam-section-header">Post-Examination Process</h3>
            <p>
              Delivering transparency and accuracy, this phase handles result
              processing, candidate support, and detailed reporting with utmost
              precision.
            </p>
            <ul class="exam-ul">
              <li>
                Accurate result generation with normalization and analytics
              </li>
              <li>Secure submission of raw candidate scores</li>
              <li>Timely result announcements and notifications</li>
              <li>Responsive post-exam query and report support</li>
              <li>Accessible question challenge portal</li>
              <li>Comprehensive candidate audit log reports</li>
              <li>Supportive counseling services</li>
            </ul>
          </div>
        </div>
      </section>

      <!-- Call to Action -->
      <section class="exam-cta-section">
        <h2 class="exam-h2">Customized Examination Solutions</h2>
        <p>
          Opt for our complete end-to-end solution or select specific modules to
          align with your needs. Let us craft the perfect examination process
          for you.
        </p>
        <a href="Contact.html" class="exam-btn-primary">Get in Touch</a>
      </section>
    </main>

    <script>
      // Animation for tree nodes and list items
      const nodes = document.querySelectorAll(".exam-tree-node");
      const observer = new IntersectionObserver(
        (entries) => {
          entries.forEach((entry, index) => {
            if (entry.isIntersecting) {
              setTimeout(() => {
                entry.target.classList.add("visible");
                const listItems = entry.target.querySelectorAll("li");
                listItems.forEach((item, idx) => {
                  setTimeout(() => {
                    item.classList.add("visible");
                  }, idx * 100);
                });
              }, index * 200);
              observer.unobserve(entry.target);
            }
          });
        },
        { threshold: 0.1 }
      );

      nodes.forEach((node) => observer.observe(node));
    </script>
</asp:Content>
