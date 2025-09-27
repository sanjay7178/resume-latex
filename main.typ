#import "@preview/fantastic-cv:0.1.0": *
      summary: "Languages",
      description: "Telugu (Fluent), English (Conversational) , Hindi (Conversational)",
    )
  )
)

#let talks_workshops_section = (
  title: "Talks and Workshops",
  highlights: (
    (
      summary: link("https://www.linkedin.com/feed/update/urn:li:activity:7073359490414235648/")["Privacy Enhanced Technologies"],
      description: "Standard Chartered, Chennai - Apr 2023",
    ),
    (
      summary: link("https://null.community/event_sessions/4104-docker-orchestration-with-kubernetes")["Docker Orchestration with Kubernetes"],
      description: "Null Vijayawada Meetup , VIT AP University, Amaravati - Mar 2023",
    ),
    (
      summary: link("https://fossunited.org/c/hyderabad/2025-apr/cfp/3cvk203l1o")["Simplifying Container Workflows and Orchestration with Sugar"],
      description: "FOSSUnited Meetup Hyderabad , Plane.so Office - May 2025",
    ),
  )
)

#let render_font = "New Computer Modern"
#let render_size = 7.6pt
#let render_size_title = render_size * 1.5
#let render_size_section = render_size * 1.3
#let render_size_entry = render_size * 1.1
#let render_page_paper = "a4"
#let render_margin = (
  top: 0.3in,
  bottom: 0.3in,
  left: 0.3in,
  right: 0.3in,
)
#let render_accent_color = "#26428b"

#let render_space_between_highlight = -0.5em
#let render_space_between_sections = -0.5em

#show: config.with(
  font: render_font,
  font-size: render_size,
  page-paper: render_page_paper,
  margin: render_margin,
  accent-color: render_accent_color,
  space-between-sections: render_space_between_sections,
  space-between-highlight: render_space_between_highlight,
)

#render-basic-info(
  name: name,
  location: location,
  email: email,
  url: url,
  profiles: profiles,
  // phone: phone,
)

#render-education(educations)

#render-work(works)

#render-project(projects)

#render-volunteer(volunteers)

// Added achievements section here
#render-custom(achievements_section)

// #render-award(awards)

// #render-certificate(certificates)

#render-publication(publications)

#render-custom(programming_language_section)

#render-custom(talks_workshops_section)

// #render-custom(skills_section)
