#import "@preview/resume-ng:1.0.0": *

#show: project.with(
  title: "Resume",
  author: (name: "向嘉豪"),
  contacts: (
    "+86 130-8728-6239",
    link("mailto:jiahaoxiang2000@gmail.com", "jiahaoxiang2000@gmail.com"),
    link("https://github.com/jiahaoxiang2000", "github.com/jiahaoxiang2000"),
  ),
)

// Override template's font settings - must come AFTER show: project
#set text(
  font: "Source Han Serif", // Primary Chinese serif font for main content
  lang: "zh",
  region: "cn",
)

#show heading: set text(
  font: "Source Han Sans", // Sans-serif font for headings
)

#resume-section("教育经历")
#resume-education(
  university: "衡阳师范学院",
  degree: "硕士研究生 师从李浪教授",
  school: "电子信息，计算机学院",
  start: "2023-09",
  end: "至今",
)[

]

#resume-education(
  university: "长沙学院",
  degree: "工学学士",
  school: "机械设计制造及其自动化，机电工程学院",
  start: "2017-09",
  end: "2021-06",
)[
]

#resume-section[技术能力]
- *语言*: 常用 C, Python, LaTeX； 熟悉 Verilog, Assembly, #text(fill: gray, "Rust")；了解 C++, Java, #text(fill: gray, "TypeScript")。
- *工作流*: Linux, Shell, NeoVim, VsCode, Git, GitHub。

#resume-section[论文发表#footnote[本人一作，修改: #datetime.today().display()]]

#resume-project(
  title: "Low-Latency Implementation of Bitsliced SPN-Cipher on IoT Processors",
  duty: "IEEE Transactions on Computers (CCF-A), 2025",
)[
  - SPN类结构对称加密算法，提供精简指令集上低延迟软件实现方案。
]

#resume-project(
  title: "Thread-Adaptive: Optimized Parallel Architectures of SLH-DSA on GPUs",
  duty: "IEEE Computer Architecture Letters, 2025",
)[
  - SLH-DSA后量子数字签名算法，提供高吞吐量异构实现方案。
]

#resume-project(
  title: "Efficient implementations of CRAFT cipher for Internet of Things",
  duty: "Computers and Electrical Engineering (中科院三区), 2024",
)[
  - CRAFT对称加密算法，提供高性能、高性价比和低成本硬件实现方案。
]

#resume-section[项目经历]

#resume-project(
  title: "湖南省研究生科研创新项目《轻量级分组密码的软硬件优化研究与实现》",
  duty: "CX20240977",
  start: "2024",
  end: "2025",
)[
]

#resume-section[个人总结]

- 性格： 本人乐观开朗、自驱能力强，具有较好的沟通能力和很强的团队合作精神。
- 研究展望：为理论安全的密码算法提供高性能和安全实现方案，继续从事密码工程学研究。
