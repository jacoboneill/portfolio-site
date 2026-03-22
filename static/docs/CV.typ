// Clean & Minimal CV
#set page(
  paper: "a4", margin: (top: 0.5in, bottom: 0.5in, left: 0.6in, right: 0.6in),
)
#set text(font: "Helvetica Neue", size: 9.5pt)
#set par(justify: false, leading: 0.65em)
#set page(numbering: none)
#set list(indent: 10pt, spacing: auto)

#let section(title) = {
  v(14pt)
  text(weight: "bold", size: 11pt, title)
  v(2pt)
  line(length: 100%, stroke: 0.4pt)
  v(4pt)
}

#let entry(left, right) = {
  block(width: 100%, spacing: 0.8em)[#left #h(1fr) #right]
}

// Header
#align(
  center,
)[
  #text(size: 20pt, weight: "bold", tracking: 0.5pt, "Jacob O'Neill")
  #v(4pt)
  #text(
    size: 9.5pt,
  )[
    #link("mailto:jacoboneill2000@outlook.com")[jacoboneill2000\@outlook.com]
    #h(10pt)
    #link("https://github.com/jacoboneill")[github.com/jacoboneill]
    #h(10pt)
    Warwickshire, UK
  ]
]

// Profile
#section("Profile")
Backend-focused software developer with 3.5 years of professional experience building web applications, industrial platforms, and IoT systems. Comfortable working across the full stack from embedded firmware to production infrastructure. Currently deepening Go expertise through portfolio projects and structured self-study.

// Skills
#section("Skills")
*Languages:* Go, Python, C++, TypeScript, JavaScript\
*Backend & Web:* REST APIs, Flask, Express, React, HTMX, Templ\
*Databases:* PostgreSQL, SQLite, MongoDB, database migrations\
*Infrastructure:* Docker, Linux, GitHub Actions CI/CD, Nginx\
*Practices:* Test Driven Development, Git, agile delivery

// Work Experience
#section("Work Experience")

#entry[*Director & Founder,* O'Neill Technology Solutions Ltd][Jan 2026 -- Present]
- Delivered technical consultancy across multiple concurrent client engagements including e-learning platform deployment (TalentLMS), GDPR/DPA compliance, and German translation project coordination
- Managed subcontractor delivery with daily standups, milestone tracking, and quality assurance for a SCORM content pipeline using Preact, Vite, and authenticated CDN asset handling
- Handled all business operations: client negotiation, invoicing, IR35 compliance (outside-IR35), and contract management

#entry[*Software Developer (Contract),* CGS Engineering][Jan 2025 -- Feb 2026]
- Sole developer on an ATEX industrial compliance web application, owning the full lifecycle from requirements gathering with domain experts through to architecture design, implementation, and technical documentation
- Built a web application serving multiple client organisations with Flask, React, PostgreSQL, and Docker, featuring role-based access control and white-label theming
- Produced architecture documentation and technical specifications to support handover, future development, and onboarding of additional team members

#entry[*Lead Software Developer,* Bioscope Technologies][Jan 2021 -- Mar 2023]
- Led full-stack IoT system development: electronic circuit design, ESP32 embedded firmware (C++), Node.js/Express backend APIs, and React frontend dashboard
- Built real-time environmental monitoring with ESP32 sensor nodes streaming data via WebSockets to a live dashboard, automating manual measurement processes with projected savings of £250k--£500k per year per factory
- Set up and maintained an on-premises Linux server running Docker for production deployment

#entry[*Service Leader,* Welcome Break (Costa Coffee)][Aug 2024 -- Dec 2024]
- Team leadership role between technical positions; managed shifts, handled financial processes, and improved customer experience

// Projects
#section("Projects")

#entry[*SecureBin* -- Encrypted pastebin][#link(
    "https://github.com/jacoboneill/SecureBin",
  )[github.com/jacoboneill/SecureBin]]
- End-to-end encrypted paste sharing application built with Go, HTMX, SQLite, and Docker
- Browser-side encryption ensures the server never sees plaintext; pastes are shared via URL fragment
- Session-based authentication, admin-only user registration, and CI/CD with GitHub Actions

#entry[*Backpack Trading* -- Stock portfolio optimiser][#link(
    "https://github.com/jacoboneill/backpack-trading",
  )[github.com/jacoboneill/backpack-trading]]
- Historical NASDAQ data scraper feeding a knapsack-algorithm-based portfolio simulator with data visualisation
- Built in Python with object-oriented design and multiple trading algorithm support

#entry[*pico-bios-kbd* -- USB HID keyboard for headless servers][#link(
    "https://github.com/jacoboneill/pico-bios-kbd",
  )[github.com/jacoboneill/pico-bios-kbd]]
- Four-button USB HID keyboard built on a Raspberry Pi Pico W for headless BIOS navigation
- Embedded development demonstrating microcontroller programming and USB protocol handling

// Education
#section("Education")
#entry[*Harvard (edX)* -- CS50x: Introduction to Computer Science][Nov 2024]
#entry[*University of Central Lancashire* -- BSc (Hons) Live Audio Engineering and Music Production (First Class)][June 2023]
