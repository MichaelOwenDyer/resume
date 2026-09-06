#import "../env.typ": env
#import "../links.typ": links

#let data = (
  labels: (
    contact: "KONTAKT",
    skills: "KOMPETENZEN",
    education: "AUSBILDUNG",
    education-continued: "AUSBILDUNG (FORT.)",
    experience: "BERUFSERFAHRUNG",
    projects: "PROGRAMMIERPROJEKTE",
    projects-continued: "PROGRAMMIERPROJEKTE (FORT.)",
    teaching: "LEHRERFAHRUNG (TU MÜNCHEN)",
    languages: "SPRACHEN",
    interests: "KÜNSTLERISCHE TÄTIGKEIT",
  ),

  name: "Michael Dyer",
  tagline-full: [System-Softwareingenieur mit Fokus auf Korrektheit, rigorose Typsysteme und High-Performance Computing in missionskritischen Umgebungen.\ Erfahrener technischer Kommunikator und Dozent.],
  tagline-short: "Systems & Performance Software Engineer",

  contact: (
    email: env.email,
    phone: env.phone,
    address: (env.street, env.zip + " München"),
    linkedin: (label: links.linkedin-label, url: links.linkedin-url),
    github: (label: links.github-label, url: links.github-url),
  ),

  skills: (
    (
      title: "Programmiersprachen",
      items: ("Rust", "Java", "Python", "JavaScript", "TypeScript", "PHP", "Nix", "OCaml", "SQL"),
    ),
    (
      title: "Technologien und Frameworks",
      items: ("Linux (NixOS)", "MacOS", "Git", "Docker", "Kubernetes", "Jenkins", "Grafana", "Prometheus", "ActiveMQ", "LLMs"),
    ),
  ),

  education: (
    (
      institution: "Technische Universität München",
      degree: "M.Sc. Information Systems",
      dates: [April 2024 -- November 2026],
      details: (
        [Abschlussarbeit: #emph[High-Performance Petri Net Model Checker]],
        [Erwartete Note Abschlussarbeit: 1,0],
        [Erwartete Gesamtnote: 1,5],
      )
    ),
    (
      institution: "Technische Universität München",
      degree: "B.Sc. Information Systems",
      dates: [Oktober 2019 -- April 2024],
      details: (
        [Abschlussarbeit: #emph[Nutzung von LLMs zur Programmieraufgabengenerierung]],
        [Note Abschlussarbeit: 1,3],
        [Gesamtnote: 2,0],
      ),
    ),
  ),

  experience: (
    (
      org: "CHECK24 Kredite",
      role: "Junior Software Engineer (zuvor Werkstudent)",
      location: "München",
      dates: [November 2024 -- Heute],
      summary: [Entwicklung von Kerndiensten zur Kreditabwicklung, Plattform-Modernisierung und Kostenoptimierung der Infrastruktur.],
      bullets: (
        [Leitung von Entwurf und Implementierung eines Java Spring Boot Microservices zur Ablösung der monolithischen Vertragsabwicklung; Reduzierung der AWS-S3-Anfragen um >80% bei monatlichen Einsparungen im vierstelligen Eurobereich.],
        [Unterstützung beim PHP-Rewrite der Kreditplattform mit Fokus auf Profiling, Latenzengpässe und Abfrageoptimierung.],
        [Entwicklung eines Prototyps für einen Linear-Programming-basierten (LP) Kontoauszugsoptimierer in Rust mit deutlichen algorithmischen Vorteilen gegenüber bestehenden imperativen Workflows.],
      ),
      keywords: ("Java", "Spring Boot", "PHP", "Symfony", "AWS S3", "Optimierung"),
    ),
    (
      org: [TUM School of Computation,\ Information and Technology],
      role: "Full-Stack Software Engineer",
      location: "Garching bei München",
      dates: [Februar 2023 -- April 2024],
      summary: [Mitglied des agilen Entwicklungsteams der Online-Lernplattform #link(links.artemis-url)[Artemis].],
      bullets: (
        [Verbesserung des Benutzererlebnisses durch Integration von LLMs und Vektordatenbanken.],
        [Unser KI-Subsystem wird von Tausenden Studierenden und Lehrenden an der TUM und >10 weiteren Universitäten genutzt und in der #link(links.sz-url)[Süddeutschen Zeitung] vorgestellt.],
      ),
      keywords: ("Java", "Spring Boot 3", "AngularJS", "Python", "Prompt Engineering"),
    ),
  ),

  projects: (
    (
      title: [#link(links.petrivet-url)[petrivet] -- Rust Petri-Netz-Model-Checker],
      dates: [März 2024 -- Heute],
      summary: [Open-Source-Bibliothek zur Modellierung und Analyse von Petri-Netzen, geschrieben in Rust.],
      bullets: (
        [Architektur einer CEGAR-basierten SMT-Solver-Refinement-Engine zur Entscheidung von Erreichbarkeits- und Überdeckungseigenschaften.],
        [Implementierung spezialisierter Algorithmen für diverse strukturelle Unterklassen von Petri-Netzen.],
        [Benchmarking im Rahmen des #link(links.mcc-2026-url)[Model Checking Contest 2026 (MCC Hamburg)].],
      ),
      keywords: ("Rust", "Model Checking", "Formale Verifikation", "Z3", "ILP", "WebAssembly", "Forschung & Lehre"),
    ),
  ),

  projects-continued: (
    (
      title: [#link(links.dotfiles-url)[Nix Dotfiles]],
      dates: [Dezember 2024 -- Heute],
      summary: [Mein persönliches Repository für deklarative Nix-Konfigurationen für Workstation, Laptops und Heimnetzwerk. Vollständig reproduzierbar und remote deploybar.],
      bullets: (),
      keywords: ("Nix", "Linux", "MacOS", "Netzwerke", "Deklarative Konfiguration"),
    ),
    (
      title: [#link(links.blackjack-url)[Blackjack Simulator]],
      dates: [August 2023 -- Oktober 2024],
      summary: [Hochperformante statistische Simulations-Engine basierend auf einem Zustandsautomaten.],
      bullets: (),
      keywords: ("Rust", "Blackjack", "Statistik", "Simulation"),
    ),
  ),

  education-continued: (
    (
      institution: "Goethe Institut",
      program: (label: "Studienbrücke", url: links.goethe-url),
      dates: [Oktober 2017 -- Juni 2019],
      bullets: (
        [Intensive Sprachausbildung und Aufnahmeprüfungen für deutsche Universitäten],
        [Gastschuljahr am Gymnasium Ganderkesee],
        [#emph[TestDaF] mit voller Punktzahl bestanden],
      ),
    ),
    (
      institution: "Westchester Academy for International Studies (USA)",
      program: none,
      dates: none,
      bullets: (
        [International Baccalaureate (IB) Diplom Juli 2018],
        [High School Diploma Juni 2018],
      ),
    ),
  ),

  teaching: (
    (
      org: [Business Process Technologies \ and Management],
      dates: [Sommersemester 2025 & 2026],
      bullets: (
        [Mitleitung der wöchentlichen Zentralübungen für \~250 regelmäßige Teilnehmende; Erzielung einer signifikant höheren Beteiligung als in der Hauptvorlesung.],
        [Vermittlung von BPMN-Modellierung, formaler Verifikation mittels Petri-Netzen und cloudbasierter automatisierter Prozessausführung.],
        [Direkte Einbindung modernster formaler Methoden und Petri-Netz-Analyse-Tools in Lehrinhalte und Übungsaufgaben.],
      ),
      keywords: ("Petri-Netze", "BPMN", "Formale Verifikation", "CPEE", "Camunda"),
    ),
    (
      org: "Introduction to Programming & Information Systems",
      dates: "Wintersemester 2021, 2024, 2025",
      bullets: (
        [Halten von Plenarvorlesungen zu Java I/O und Sortieralgorithmen; Betreuung wöchentlicher praxisorientierter Programmierpraktika für 70+ Studierende.],
        [Entwicklung automatisierter Bewertungsaufgaben und Vermittlung von Grundlagen zu Typsystemen, OOP und Datenstrukturen.],
        [Von 75% der Studierenden im Einführungspraktikum für einen Lehrpreis nominiert.],
      ),
      keywords: ("Java 17", "Datenstrukturen", "Algorithmen", "Git", "JUnit 5"),
    ),
    (
      org: "Software Engineering for Business Applications",
      dates: "Wintersemester 2022 & 2023",
      bullets: (
        [Leitung wöchentlicher Übungsgruppen für \~50 Studierende zu UML-Modellierung, OOP-Architektur und Enterprise Java 17/Spring Boot.],
        [Von 90% der Studierenden für einen Lehrpreis nominiert (n = 40).],
      ),
      keywords: ("Java 17", "Spring Boot", "UML", "Git", "Maven"),
    ),
    (
      org: "IT & Society",
      dates: "Sommersemester 2021 & 2022",
      bullets: (
        [Mitleitung der wöchentlichen Zentralübungen für über 300 Studierende zu Ethik, IT-Sicherheit und den sozioökonomischen Auswirkungen der Informatik.],
      ),
      keywords: ("Ethik", "Datenschutz", "KI", "Big Data"),
    ),
  ),

  languages: (
    (name: "Englisch", level: "Muttersprache"),
    (name: "Deutsch", level: "Fließend"),
  ),

  interests: (
    (
      subject: "Cello",
      dates: [2005 -- Heute],
      entries: (
        [
          #emph[Casa Argentina de Houston] \
          Mai 2017 \
          Houston, Texas, USA \
          Erster Preis beim Stipendienwettbewerb
        ],
        [
          #emph[Oberstdorfer Musiksommer] \
          August 2021 \
          Oberstdorf im Allgäu \
          Meisterkurse bei Wen-Sinn Yang
        ],
      )
    ),
    (
      subject: "Klavier",
      dates: [2012 -- Heute],
      entries: (
        [
          #emph[National Orchestra Championships] \
          März 2018 \
          Lincoln Center, New York City, USA \
          #link(links.lincoln-center-mozart-url)[Solist, Mozart Klavierkonzert d-Moll KV 466]
        ],
      )
    ),
    (
      subject: "Schauspiel",
      entries: (
        [
          #emph[Warten auf Godot -- „Lucky“ \ Bester Nebendarsteller, 2017]
        ],
        [
          #emph[Antigone -- „Kreon“ \ Bester Hauptdarsteller, 2016]
        ]
      )
    ),
  ),
)