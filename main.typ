#import "@preview/fantastic-cv:0.1.0": *

#let name = "Sai Sanjay Kottakota"
#let location = "Bengaluru, Karnataka, India"
#let email = "saisanjay7660@gmail.com"
// #let phone = "+1 (xxx) xxx-xxxx"
#let url = "sanjay7178.github.io"
#show link: underline

// [{network: str, username: str, url: str}]
#let profiles = (
  (
    network: "GitHub",
    username: "sanjay7178",
    url: "https://github.com/sanjay7178",
  ),
  (
    network: "LinkedIn",
    username: "sanjay7178",
    url: "https://linkedin.com/in/sanjay7178",
  ),
)

/*
[
  {
    institution: str,
    location: str,
    url: str,
    area: str,
    studyType: str,
    startDate: str,
    endDate: str,
    score: str,
    courses: [str],
  }
]
*/
#let educations = (
  (
    institution: "Vellore Institute of Technology , Andhra Pradesh",
    location: "Amaravati, India",
    url: "vitap.ac.in",
    area: "Computer Science and Engineering",
    studyType: "Master of Technology (Integrated)",
    startDate: "Sep 2021",
    endDate: "Jun 2026",
    score: "8.68/10.0",
    courses: (
      "Operating Systems", "Data Structures", "Analysis Of Algorithms", "Deep Learning", "Introduction to Networking", "Databases", "Software Application Architecture", "Application Development and Deployment Architecture" ,"NoSQL Databases"
    ),
  ),
)


/*
[
  {
    name: str,
    location: str,
    url: str,
    description: str,
    position: str,
    startDate: str,
    endDate: str,
    highlights: [str],
  }
]
*/
#let works = (
(
  name: "Murf AI",
  location: "Bengaluru, India",
  url: "https://murf.ai",
  description: "Full-time",
  position: "Software Development Engineer I",
  startDate: "Jun 2026",
  endDate: "Present",
  highlights: (
    "Developing an internal Python-based text normalization library for multilingual TTS (French, English, and Telugu).",
    "Developed automated TTS benchmarking for character error rate (CER), word error rate (WER), and grapheme-cluster error rate (GCER), using an OpenAI API-based AI judge to profile and improve multilingual text-normalization quality.",
  ),
),

(
  name: "Murf AI",
  location: "Bengaluru, India",
  url: "https://murf.ai",
  description: "Internship",
  position: "Associate Software Development Engineer Intern",
  startDate: "Oct 2025",
  endDate: "Feb 2026",
  highlights: (
    "Re-architected the " + link("https://github.com/segment-any-text/wtpsplit")[wtpsplit] + " sentence-segmentation model for NVIDIA Triton Inference Server, enabling scalable production inference.",
    "Deployed ByT5 and BERT NLP models on distributed AWS EC2 instances behind an Application Load Balancer.",
    "Optimized NLP inference with ONNX IR, TensorRT, CUDA Graphs, and FlashAttention; used NVIDIA perf_analyzer to increase throughput by 20% and reduce average REST API latency by 15%.",
  ),
),

(
  name: "Linux Foundation Mentee",
  location: "Remote",
  url: "https://mentorship.lfx.linuxfoundation.org/project/8f651e4b-a0bf-468a-ab2b-a8167bd85e87",
  description: "LFX Mentorship Program",
  position: "Open Source Contributor — kube-burner (Red Hat Performance Engineering)",
  startDate: "Mar 2026",
  endDate: "May 2026",
  highlights: (
    "Contributed 7 merged Go pull requests to " + link("https://github.com/kube-burner/kube-burner")[kube-burner] + ", a Kubernetes performance and scale-testing framework maintained by Red Hat Performance Engineering.",
    "Built KEDA ScaledObject performance testing with phase-level latency measurement, an end-to-end autoscaling workload, and CPU and memory profiling " + link("https://github.com/kube-burner/kube-burner/pull/1234")[(#1234)] + ".",
    "Improved profiling and workload configuration through pprof DaemonSet support " + link("https://github.com/kube-burner/kube-burner/pull/1045")[(#1045)] + ", runtime " + raw("--set") + " overrides " + link("https://github.com/kube-burner/kube-burner/pull/1047")[(#1047)] + ", multi-document YAML manifests " + link("https://github.com/kube-burner/kube-burner/pull/1052")[(#1052)] + ", and concurrent job lifecycle hooks " + link("https://github.com/kube-burner/kube-burner/pull/1068")[(#1068)] + ".",
  ),
),

  (
    name: "Google Summer of Code Contributor",
    location: "Remote",
    url: "https://summerofcode.withgoogle.com/programs/2025/projects/eK7R0d7E",
    description: "Open Science Labs",
    position: "Open Source Software Developement Fellowship",
    startDate: "May 2025",
    endDate: "Sep 2025",
    highlights: (
      "Integrated Docker Swarm support into Sugar CLI and architected swarm-external-secrets plugin bridging external secret providers (HashiCorp Vault, Azure Key Vault, OpenBao) with Docker Swarm, addressing critical gaps in container orchestration and security management while contributing to cross-platform packaging improvements and presenting at " + link("https://fossunited.org/c/hyderabad/2025-apr/cfp/3cvk203l1o")[FOSS United Hyderabad Meetup.],
    ),
  ),
  (
    name: "Digitalfortress Pvt Ltd",
    location: "Amarvati, India",
    url: "https://digitalfortress.in",
    description: "Internship",
    position: "Software Development Engineer ",
    startDate: "May 2024",
    endDate: "May 2025",
    highlights: (
      "Built open source project Saila serving 500+ users with cross-platform HID injection protection. ",
      "Engineered Kubernetes-based secure browser isolation platform reducing phishing risks by 90% and handling 1000+ concurrent sessions with integrated safe file viewing capabilities.",
      // "Developed automated testing frameworks to ensure the reliability of new integrations, achieving 90% test coverage.",
      // "Worked closely with product managers to define feature requirements and deliver a seamless user experience.",
      // "Participated in code reviews and contributed to team-wide best practices for software development.",
    ),
  ),
  // (
  //   name: "Georgia Southern University BCI Lab",
  //   location: "Remote",
  //   url: "h",
  //   description: "BCI Emotion Recognition",
  //   position: "Research Intern",
  //   startDate: "2025-01-01",
  //   endDate: "2025-03-31",
  //   highlights: (
  //     "Developed and trained 3 deep learning models achieving 87% accuracy for multiclass emotion classification using custom EEG dataset with 500+ samples.",
  //     "Advanced research on multimodal emotion recognition by integrating EEG and facial expression data, improving model robustness by 15% using state-of-the-art Deep Learning architectures.",
  //     // "Conducted extensive simulations to validate new features, ensuring compliance with safety standards.",
  //     // "Documented technical findings and contributed to research papers on advancements in autonomous driving technology.",
  //   ),
  // ),
)

/*
[
  {
    name: str,
    url: str,
    source_code: str,
    roles: [str],
    startDate: str,
    endDate: str,
    description: str,
    highlights: [str],
  }
]
*/
#let projects = (
  (
    name: "KubeBrowse",
    url: "https://github.com/browsersec/KubeBrowse",
    source_code: "https://github.com/browsersec/KubeBrowse",
    roles: ("Individual Contributor", "Go , Kubernetes , Docker , React , Websockets , Postgres , Redis , Minio , Falco , Isolated Sandbox"),
    startDate: "Jun 2025",
    endDate: "Present",
    description: "Developed and maintained an Industry first open-source Browser Detection and Response tool for Enterprises and Homelabs.",
    highlights: (
      "A Kubernetes-based secure browser isolation platform with integrated disposable safe file viewer and phishing mitigation.",
      "Websockets based Interactive isolated session shares across internet with minimal latency.",
      // "Coordinated with college administrators to ensure accurate and timely release of course data.",
    ),
  ),
  (
    name: "vRevamp",
    url: "https://chromewebstore.google.com/detail/vrevamp/jfmlhhjlkbliphgkmeingeacbijcilcl",
    source_code: "github.com/sanjay7178/vRevamp",
    roles: ("Contributor", "Javascript , Chrome Extension , Chrome Manifest V3 "),
    startDate: "Sep 2023",
    endDate: "Dec 2024",
    description: "A chrome extension for enhancing VIT AP University Student portal experience in VTOP.",
    highlights: (
      "Improved user experience of university students on a centralized ERP portal using chrome extension.",
      "Built and scaled a Chrome extension to 3,000+ monthly active users, driving consistent user engagement and adoption.",
      // "Provided technical support and documentation to assist users and administrators with platform usage.",
    ),
  ),
  (
    name: "swarm-external-secrets",
    url: "https://sugar-org.github.io/swarm-external-secrets/",
    source_code: "https://github.com/sugar-org/swarm-external-secrets/",
    roles: ("Contributor", "Go , Docker Plugin , AWS Secrets Manager , GCP Secret Manager , OpenBao , Hashicorp Vault , Azure Key Vault"),
    startDate: "May 2025",
    endDate: "Sep 2025",
    description: "A Docker Swarm secrets plugin that integrates with multiple secret management providers including HashiCorp Vault, AWS Secrets Manager, Azure Key Vault, and OpenBao.",
    highlights: (
      "Designed and developed a Docker plugin enabling external secrets providers (e.g., Vault, AWS Secrets Manager) to integrate with Docker Swarm—bridging a gap between Kubernetes External Secrets and Swarm environments.",
      "Aligned with community needs: originated from the lack of native support in Docker Swarm for external secret providers; responded to a request in the Docker community for such a plugin.",
      // "Provided technical support and documentation to assist users and administrators with platform usage.",
    ),
  ) 
)

/*
[
  {
    organization: str,
    position: str,
    url: str,
    startDate: str,
    endDate: str,
    summary: str,
    location: str,
    highlights: [str],
  }
]
*/
#let volunteers = (
  (
    organization: "Null Vijayawada Chapter",
    position: "Community Lead",
    url: "https://nullvijayawada.org/",
    startDate: "Aug 2023",
    endDate: "May 2025",
    summary: "Coordinated and organised Monthly meetups on various Cyber Security Domains, CTF's and Workshops",
    location: "Vijayawada, IN",
    highlights: (
      "Managed a team of 5+ volunteers to organize Monthly meetups.",
      "Contributed and enhanced open source event management platform " + link("https://github.com/null-open-security-community/swachalit/pulls?q=+is%3Apr+author%3Asanjay7178+")[Swachalit] ,
      // "Participated in community education initiatives, promoting awareness of food insecurity and available resources.",
    ),
  ),
)


// Updated achievements section data structure with your actual achievements
#let achievements = (
  (
    title: "Linux Foundation Training (LiFT) Scholarship",
    date: "2026",
    description: "Selected for a Linux Foundation Training scholarship, receiving one e-learning course and one certification exam registration.",
    category: "Technical",
  ),
  (
    title: "Google Summer of Code 2025",
    date: "2025",
    description: "Selected as a Google Summer of Code contributor for Open Science Labs, working on open-source software development fellowship.",
    category: "Technical",
  ),
  // (
  //   title: "Open Source Impact",
  //   date: "2023-2024",
  //   description: "Built Chrome extension vRevamp serving 3,000+ monthly active users and open source project Saila serving 500+ users with cross-platform security protection.",
  //   category: "Technical",
  // ),
  (
    title: "Runner Up 5g6g hackathon",
    date: "2025",
    description: "My efforts and innovations have led me to be a finalist in the prestigious 5G and 6G
Hackathon conducted by the Ministry of Communications and Department of Telecommunications (DoT) India and ITU/WTSA.",
    category: "Research",
  ),
  // (
  //   title: "Academic Achievement",
  //   date: "2023",
  //   description: "Graduated with 8.41/10.0 CGPA in Master of Technology (Integrated) from VIT AP University in Computer Science and Engineering.",
  //   category: "Academic",
  // ),
  // (
  //   title: "Community Leadership",
  //   date: "2023-Present",
  //   description: "Led Null Vijayawada Chapter as Community Lead, managing 5+ volunteers and organizing monthly cybersecurity meetups, CTFs, and workshops.",
  //   category: "Leadership",
  // ),
  // (
  //   title: "Publications",
  //   date: "2023-2024",
  //   description: "Published research papers in IEEE Explore on Transfer Learning for Bird Species Identification and MDPI on Secure Face Antispoofing Detection Models.",
  //   category: "Research",
  // ),
)

/*
[
  {
    title: str,
    date: str,
    url: str,
    awarder: str,
    summary: str,
  }
]
*/
#let awards = (
  (
    title: "Best Student Award",
    date: "2023-05-01",
    url: "stanford.edu",
    awarder: "Stanford University",
    summary: "",
  ),
  (
    title: "Dean's List",
    date: "2023-05-01",
    url: "",
    awarder: "Stanford University",
    summary: "Achieved Dean's List status for maintaining a GPA of 3.9 or higher.",
  ),
  (
    title: "Outstanding Research Assistant",
    date: "2023-05-01",
    url: "stanford.edu",
    awarder: "",
    summary: "Recognized for exceptional contributions to research projects in the Physics and Computer Science departments.",
  ),
  (
    title: "Best Paper Award",
    date: "2023-05-01",
    url: "berkeley.edu",
    awarder: "University of California, Berkeley",
    summary: "Received Best Paper Award at the UC Berkeley Graduate Research Symposium.",
  ),
)

/*
[
  {
    name: str,
    issuer: str,
    url: str,
    date: str,
  }
]
*/
#let certificates = (
  (
    name: "AWS Certified Solutions Architect",
    issuer: "",
    url: "aws.amazon.com/certification/certified-solutions-architect-associate/",
    date: "2023-05-01",
  ),
  (
    name: "Google Cloud Professional Data Engineer",
    issuer: "Google Cloud",
    url: "cloud.google.com/certification/data-engineer/",
    date: "2023-05-01",
  ),
  (
    name: "Microsoft Certified: Azure Fundamentals",
    issuer: "Microsoft",
    url: "learn.microsoft.com/en-us/certifications/azure-fundamentals/",
    date: "2023-05-01",
  ),
  (
    name: "Certified Kubernetes Administrator (CKA)",
    issuer: "Linux Foundation",
    url: "",
    date: "2023-05-01",
  ),
  (
    name: "Certified Ethical Hacker (CEH)",
    issuer: "",
    url: "www.eccouncil.org/programs/certified-ethical-hacker-ceh/",
    date: "2023-05-01",
  ),
)

/*
[
  {
    name: str,
    publisher: str,
    releaseDate: str,
    url: str,
    summary: str,
  }
]
*/
#let publications = (
  (
    name: "Transfer Learning for Bird Species Identification",
    publisher: "IEEE Explore",
    releaseDate: "2023-01-05",
    url: "https://ieeexplore.ieee.org/document/10142979",
    summary: "A comprehensive overview of Transfer Learning for Bird Species Identification.",
  ),
  (
    name: "Secure and Efficient Deployment of Custom Face Antispoofing Detection Models via Serverless Architecture and SaaS Platform",
    publisher: "MDPI Preprints",
    releaseDate: "2024-05-01",
    url: "https://doi.org/10.20944/preprints202409.0740.v1",
    summary: "",
  ),
)


/*
custom sections
{
  title: str,
  highlights: [
    {
      summary: str,
      description: str,
    }
  ]
}
*/

// Custom achievements section formatted for the template
#let achievements_section = (
  title: "Achievements",
  highlights: achievements.map(achievement => (
    summary: achievement.title + " (" + achievement.date + ")",
    description: achievement.description,
  ))
)

#let programming_language_section = (
  title: "Programming Languages",
  highlights: (
    (
      summary: "Languages",
      description: "Golang, Python, PHP, TypeScript, JavaScript, SQL, Bash, Java",
    ),
    (
      summary: "Frameworks",
      description: "ReactJS , PyTorch,PyTorch Lightning, Go Gin , gRPC",
    ),
    (
      summary: "Databases",
      description: "MySQL, MongoDB, PostgreSQL, Redis , Cassandra",
    ),
    (
      summary: "Tools",
      description: "Kubernetes, Docker, GIT, PostgreSQL, MySQL, MongoDB, PrismaORM , SQLc , PyTorch Lightning, OpenVINO, OpenCV, Redis, RabbitMQ , HonoJS , Azure Functions , Azure FrontDoor , Azure CDN, Falco , Istio",
    )
  )
)

#let skills_section = (
  title: "Skills",
  highlights: (
    (
      summary: "Soft Skills",
      description: "Teamwork, Communication, Problem Solving, Time Management",
    ),
    (
      summary: "Technical Skills",
      description: "DevOPS, Software Development, Web Development , Backend Development ,Data Structures, Algorithms ",
    ),
    (
      summary: "Languages",
      description: "Telugu (Fluent), English (Conversational) , Hindi (Conversational)",
    )
  )
)

#let talks_workshops_section = (
  title: "Talks and Workshops",
  highlights: (
    (
      summary: link("https://www.youtube.com/watch?v=85-8e2W1o0Q")["Setting Your Cluster on Fire: Deep Performance Profiling with kube-burner"],
      description: "Cloud Native Summit Kerala, Kochi - Aug 2026 | Talk recording",
    ),
    (
      summary: link("https://www.linkedin.com/feed/update/urn:li:activity:7073359490414235648/")["Privacy Enhanced Technologies"],
      description: "Standard Chartered, Chennai - Apr 2023",
    ),
    // (
    //   summary: link("https://null.community/event_sessions/4104-docker-orchestration-with-kubernetes")["Docker Orchestration with Kubernetes"],
    //   description: "Null Vijayawada Meetup , VIT AP University, Amaravati - Mar 2023",
    // ),
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
  phone: none,
  url: url,
  profiles: profiles,
)

#render-education(educations)

#render-work(works)

#render-project(projects)

#render-volunteer(volunteers)



// == Open Source Contributions

// *Total Contributions*: 91 PRs across 38+ repositories | 61 merged | 67% merge rate
// - *Chaos Engineering*: 15 PRs to krkn-chaos (testing, rollback features, cloud integrations)
// - *Container Orchestration*: 11 PRs to Sugar-org (Docker Swarm management, external secrets)
// - *Kubernetes Tooling*: 8 PRs to KubeSlice, Kube-burner (multi-arch support, monitoring)
// - *Educational Projects*: 7 PRs to android-vtop-vitap (mobile app enhancements)


// Added achievements section here
#render-custom(achievements_section)

// #render-award(awards)

// #render-certificate(certificates)

// #render-publication(publications)

#render-custom(programming_language_section)

#render-custom(talks_workshops_section)

// #render-custom(skills_section)
