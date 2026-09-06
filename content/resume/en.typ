#import "../links.typ": links

#let content(env) = (
  labels: (
    contact: "CONTACT",
    skills: "SKILLS",
    education: "EDUCATION",
    education-continued: "EDUCATION (CONTINUED)",
    experience: "WORK EXPERIENCE",
    projects: "PROGRAMMING PROJECTS",
    projects-continued: "PROGRAMMING PROJECTS (CONTINUED)",
    teaching: "TEACHING EXPERIENCE (TU MUNICH)",
    languages: "LANGUAGES",
    interests: "ARTISTIC PERFORMANCE",
  ),

  name: "Michael Dyer",
  tagline-full: [Systems software engineer driven by correctness, rigorous type systems, and high-performance computing in mission-critical environments.\ Skilled technical communicator and educator.],
  tagline-short: "Systems & Performance Software Engineer",

  contact: (
    email: env.email,
    phone: env.phone,
    address: (env.street, env.zip + " Munich, Germany"),
    linkedin: (label: links.linkedin-label, url: links.linkedin-url),
    github: (label: links.github-label, url: links.github-url),
  ),

  skills: (
    (
      title: "Programming Languages",
      items: ("Rust", "Java", "Python", "JavaScript", "TypeScript", "PHP", "Nix", "OCaml", "SQL"),
    ),
    (
      title: "Technologies and Frameworks",
      items: ("Linux (NixOS)", "MacOS", "Git", "Docker", "Kubernetes", "Jenkins", "Grafana", "Prometheus", "ActiveMQ", "LLMs"),
    ),
  ),

  education: (
    (
      institution: "Technical University of Munich",
      degree: "M.Sc. Information Systems",
      dates: [April 2024 -- November 2026],
      details: (
        [Thesis: #emph[High-Performance Petri Net Model Checker]],
        [Expected Grade Thesis: 1.0],
        [Expected Grade Overall: 1.5],
      )
    ),
    (
      institution: "Technical University of Munich",
      degree: "B.Sc. Information Systems",
      dates: [October 2019 -- April 2024],
      details: (
        [Thesis: #emph[Leveraging LLMs for Programming Exercise Generation]],
        [Grade Thesis: 1.3],
        [Grade Overall: 2.0],
      ),
    ),
  ),

  experience: (
    (
      org: "CHECK24 Loans",
      role: "Junior Software Engineer (prev. Working Student)",
      location: "Munich, Germany",
      dates: [November 2024 -- Present],
      summary: [Engineered core services for loan processing, driving platform modernization and infrastructure cost optimization.],
      bullets: (
        [Led design and implementation of a Java Spring Boot microservice replacing legacy monolith contract handling; reduced AWS S3 requests by over 80%, saving CHECK24 thousands of euros monthly in cloud costs.],
        [Assisting the loan platform PHP rewrite, focusing on profiling, latency bottlenecks, and query optimization.],
        [Prototyped a Linear Programming (LP) bank statement optimizer in Rust, offering algorithmic improvements over existing imperative workflows.],
      ),
      keywords: ("Java", "Spring Boot", "PHP", "Symfony", "AWS S3", "Optimization"),
    ),
    (
      org: [TUM School of Computation,\ Information and Technology],
      role: "Full-Stack Software Engineer",
      location: "Garching, Germany",
      dates: [February 2023 -- April 2024],
      summary: [Agile team member of the online learning platform #link(links.artemis-url)[Artemis].],
      bullets: (
        [Enhanced user experience through LLM and vector database integration.],
        [Our AI subsystem is used by thousands of students and educators at TUM and >10 other universities, and was featured in the #link(links.sz-url)[Süddeutsche Zeitung.]],
      ),
      keywords: ("Java", "Spring Boot 3", "AngularJS", "Python", "Prompt Engineering"),
    ),
  ),

  projects: (
    (
      title: [#link(links.petrivet-url)[petrivet] -- Rust Petri Net Model Checker],
      dates: [March 2024 -- Present],
      summary: [Open-source Petri net modeling and analysis library written in Rust.],
      bullets: (
        [Implemented specialized boundedness, deadlock-freedom, and liveness algorithms for significant structural subclasses of Petri nets.],
        [Architected a CEGAR-style SMT solver refinement engine to decide reachability and coverability properties.],
        [Focus on education and foundations in current academic research.],
        [Benchmarked at the #link(links.mcc-2026-url)[2026 Model Checking Contest (MCC Hamburg)]],
      ),
      keywords: ("Rust", "Model Checking", "Formal Verification", "Z3", "ILP", "WebAssembly", "Research & Education"),
    ),
  ),

  projects-continued: (
    (
      title: [#link(links.dotfiles-url)[Nix Dotfiles]],
      dates: [December 2024 -- Present],
      summary: [My personal declarative Nix configuration repository for my workstation, laptops, and home network. Fully reproducible and remote-deployable.],
      bullets: (),
      keywords: ("Nix", "Linux", "MacOS", "Networking", "Declarative Configuration"),
    ),
    (
      title: [#link(links.blackjack-url)[Blackjack Simulator]],
      dates: [August 2023 -- October 2024],
      summary: [High-throughput statistical simulation engine in the form of a state machine.],
      bullets: (),
      keywords: ("Rust", "Blackjack", "Statistics", "Simulation"),
    ),
  ),

  education-continued: (
    (
      institution: "Goethe Institute",
      program: (label: "Study Bridge", url: links.goethe-url),
      dates: [October 2017 -- June 2019],
      bullets: (
        [Intensive German language course and entrance exams for German university],
        [Gap year at Gymnasium Ganderkesee],
        [Passed #emph[TestDaF] with full points],
      ),
    ),
    (
      institution: "Westchester Academy for International Studies (USA)",
      program: none,
      dates: none,
      bullets: (
        [International Baccalaureate (IB) Diploma July 2018],
        [High School Diploma June 2018],
      ),
    ),
  ),

  teaching: (
    (
      org: [Business Process Technologies \ and Management],
      dates: [Summer Semesters 2025 & 2026],
      bullets: (
        [Co-instructed weekly central sessions for \~250 regular attendees, driving significantly higher attendance than the primary lecture.],
        [Taught BPMN modeling, formal verification with Petri nets, and cloud-based automated process execution.],
        [Integrated state-of-the-art formal methods and Petri net analysis tooling directly into coursework and exercises.],
      ),
      keywords: ("Petri Nets", "BPMN", "Formal Verification", "CPEE", "Camunda"),
    ),
    (
      org: "Introduction to Programming & Information Systems",
      dates: "Winter Semesters 2021, 2024, 2025",
      bullets: (
        [Delivered plenary lectures on Java I/O and sorting algorithms; supervised weekly hands-on programming labs for 70+ students.],
        [Authored automated grading exercises and guided fundamentals of type systems, OOP, and data structures.],
        [Nominated for a teaching award by 75% of students in the introductory practical course.],
      ),
      keywords: ("Java 17", "Data Structures", "Algorithms", "Git", "JUnit 5"),
    ),
    (
      org: "Software Engineering for Business Applications",
      dates: "Winter Semesters 2022 & 2023",
      bullets: (
        [Instructed weekly exercise sessions for \~50 students on UML modeling, OOP architecture, and enterprise Java 17/Spring Boot.],
        [Nominated for a teaching award by 90% of students (n = 40).],
      ),
      keywords: ("Java 17", "Spring Boot", "UML", "Git", "Maven"),
    ),
    (
      org: "IT & Society",
      dates: "Summer Semesters 2021 & 2022",
      bullets: (
        [Co-instructed weekly central exercises for over 300 students on ethics, security, and the socio-economic impacts of computing.],
      ),
      keywords: ("Ethics", "Privacy", "AI", "Big Data"),
    ),
  ),

  languages: (
    (name: "English", level: "Native"),
    (name: "German", level: "Fluent"),
  ),

  interests: (
    (
      subject: "Cello",
      dates: [2005 -- Present],
      entries: (
        [
          #emph[Casa Argentina de Houston] \
          May 2017 \
          Houston, Texas, USA \
          First prize scholarship winner
        ],
        [
          #emph[Oberstdorfer Musiksommer] \
          August 2021 \
          Oberstdorf, Germany \
          Master classes with Wen-Sinn Yang
        ],
      )
    ),
    (
      subject: "Piano",
      dates: [2012 -- Present],
      entries: (
        [
          #emph[National Orchestra Championships] \
          March 2018 \
          Lincoln Center, New York City, USA \
          #link(links.lincoln-center-mozart-url)[Soloist, Mozart Piano Concerto K466]
        ],
      )
    ),
    (
      subject: "Theatrical Performance",
      entries: (
        [
          #emph[Waiting For Godot -- "Lucky" \ Best Supporting Actor, 2017]
        ],
        [
          #emph[Antigone -- "Creon" \ Best Actor, 2016]
        ]
      )
    ),
  ),
)
