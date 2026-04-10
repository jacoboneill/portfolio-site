#set page(
  paper: "a4",
  margin: (top: 0.5in, bottom: 0.5in, left: 0.6in, right: 0.6in),
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
    #link("https://jacoboneill.dev")[jacoboneill.dev]
    #h(10pt)
    #link("https://github.com/jacoboneill")[github.com/jacoboneill]
    #h(10pt)
    Warwickshire, UK
  ]
]

// Profile
#section("Profile")
Software engineer with 3.5 years building production systems across IoT, industrial compliance, and e-learning. Comfortable across the full stack from embedded firmware to deployment infrastructure. Strongest in Go and Python for backend work.

// Skills
#section("Skills")
*Languages:* Go, Python, TypeScript\
*Frontend:* HTMX, Templ\
*Backend:* net/http, Flask, SQLC\
*Databases:* PostgreSQL, SQLite, golang-migrate\
*Infrastructure:* Docker, GitHub Actions, Linux, Nginx, Terraform, Cloudflare (Workers, Pages, DNS), Wrangler\
*Testing:* Go stdlib testing, TDD\
*Tools*: Bash, Git, GitHub, OpenAPI, Technical Documentation

// Work Experience
#section("Work Experience")

#entry[*Independent Software Contractor*][Jan 2025 -- Present]
- Sole developer on an ATEX industrial compliance platform for CGS Engineering (a 15-month engagement) - owned the full lifecycle from requirements gathering with domain experts through architecture, implementation, and technical documentation
- Built and deployed a containerised web application (Flask, React, PostgreSQL, Docker) serving multiple client organisations, with role-based access control and white-label theming
- Produced architecture documentation and technical specifications to support handover and onboarding of future developers
- Subsequent engagements included building a custom SCORM content generation framework published as a private npm package (Preact, Vite) and deploying a TalentLMS e-learning platform with GDPR/DPA compliance and German localisation
- Operated through my own limited company, handling client scoping, contract negotiation, and delivery directly

#entry[*Lead Software Developer,* Bioscope Technologies][Jan 2021 -- Mar 2023]
- Led full-stack IoT system development: electronic circuit design, ESP32 embedded firmware (C++), Node.js/Express backend APIs, and React frontend dashboard
- Built real-time environmental monitoring with ESP32 sensor nodes streaming data via WebSockets to a live dashboard, automating manual measurement processes with projected savings of £250k--£500k per year per factory
- Set up and maintained an on-premises Linux server running Docker for production deployment

#entry[*Service Leader,* Welcome Break (Costa Coffee)][Aug 2024 -- Dec 2024]
- Team leadership role between technical positions; managed shifts, handled financial processes, and improved customer experience

// Projects
#pagebreak()
#section("Projects")

#entry[*SecureBin* -- End-to-end encrypted pastebin][#link(
  "https://github.com/jacoboneill/SecureBin",
)[github.com/jacoboneill/SecureBin]]
- Go web service with client-side AES-256-GCM encryption via the Web Crypto API; server stores only ciphertext, with paste keys in the URL fragment so they never reach the server
- Built with Go stdlib net/http, Templ for type-safe templating, HTMX v4 for interactivity, SQLite via SQLC for type-safe queries, and golang-migrate for schema migrations
- Integration-tested with in-memory SQLite via a shared testutil helper; multi-stage Dockerfile; CI via GitHub Actions; architecture documented with Mermaid sequence diagrams and ERD

#entry[*Backpack Trading* -- Stock portfolio optimiser][#link(
  "https://github.com/jacoboneill/backpack-trading",
)[github.com/jacoboneill/backpack-trading]]
- CS50x final project (self-designed): historical NASDAQ data scraper feeding a knapsack-algorithm-based portfolio simulator with data visualisation
- Built in Python with object-oriented design and supports swapping between different trading algorithms using the adapter design pattern

#entry[*pico-bios-kbd* -- USB HID keyboard for headless servers][#link(
  "https://github.com/jacoboneill/pico-bios-kbd",
)[github.com/jacoboneill/pico-bios-kbd]]
- Four-button USB HID keyboard built on a Raspberry Pi Pico W for headless BIOS navigation
- Embedded development demonstrating microcontroller programming and USB protocol handling

#entry[*Homelab* -- Self-hosted infrastructure][]
- Debian server running Docker Compose for service orchestration, Tailscale for off-LAN networking, and a suite of self-hosted services including media, monitoring, and a VPN exit node. Used as a practical playground for infrastructure and deployment workflows that feed back into client work.

// Education
#section("Education")
#entry[*Harvard (online via edX)* -- CS50x: Introduction to Computer Science][Nov 2024]
#entry[*University of Central Lancashire* -- BSc (Hons) Live Audio Engineering and Music Production (First Class)][June 2023]
