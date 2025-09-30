#import "@preview/resume-ng:1.0.0": *

#set page(footer: align(center, text(size: 9pt, fill: gray)[
  最后更新: #datetime.today().display("[year]-[month]-[day]")
]))

#set text(
  font: "Source Han Serif SC",
)

// Set different fonts for different contexts
#show heading: set text(font: "Source Han Sans SC")
#show strong: set text(font: "Source Han Sans SC")
#show emph: set text(font: "Source Han Serif SC", style: "italic")
#show raw: set text(font: ("Source Han Mono SC", "Source Han Sans SC"))
#show link: set text(font: "Source Han Sans SC")
#show link: underline

#show: project.with(
  title: "Resume",
  author: (name: "向嘉豪"),
  contacts: (
    "+86 130-8728-6239",
    link("mailto:jiahaoxiang2000@gmail.com", "jiahaoxiang2000@gmail.com"),
    link("https://github.com/jiahaoxiang2000", "github.com/jiahaoxiang2000"),
  ),
)

#resume-section("教育经历")
#resume-education(
  university: "衡阳师范学院",
  degree: "专业型硕士研究生",
  school: "电子信息, 计算机学院",
  start: "2023-09",
  end: "至今",
)[
]

#resume-education(
  university: "长沙学院",
  degree: "工学学士",
  school: "机械设计制造及其自动化, 机电工程学院",
  start: "2017-09",
  end: "2021-06",
)[
]

#resume-section[技术能力]
- *AI/ML 开发*: MCP 服务器开发 (FastMCP, 学术 API 集成), AI 视频生成 (FireRedTTS-2, Manim, TTS), AI 编辑器插件 (LSP, WebSocket)
- *系统编程*: Rust (Tokio 异步, WebSocket, LSP), Python, C, Assembly, Verilog
- *开发工具*: Linux, Git, NeoVim, VsCode, Zed, Nix
- *硬件开发*: FPGA (Vivado), GPU (CUDA), 嵌入式系统

#resume-section[项目经历]

#resume-project(
  title: link("https://github.com/jiahaoxiang2000/claude-code-zed", "Claude Code Zed 扩展"),
  duty: "开源项目 (237 Stars)",
  start: "2025.07",
  end: "2025.08",
)[
  - 基于 LSP 的 Zed 编辑器扩展, 通过 WebSocket 实现 Zed 与 Claude Code CLI 的双向通信, 支持文本选择共享和文件引用处理
  - 跨平台支持 macOS (Intel/ARM) 和 Linux, 自动下载并管理 claude-code-server 二进制文件
  - 项目涉及技术: Rust, LSP, WebSocket, Zed 扩展 API
]


#resume-project(
  title: link("https://github.com/jiahaoxiang2000/all-in-mcp", "All-in-MCP - 学术论文搜索 MCP 服务器"),
  duty: "开源项目",
  start: "2025.06",
  end: "至今",
)[
  - FastMCP 模型上下文协议服务器, 集成 IACR ePrint, CryptoBib, Crossref, Google Scholar 等多个学术数据库, 提供统一的论文搜索和 PDF 处理接口
  - 模块化架构支持代理服务器和独立 APaper 模块, 包含 GitHub 仓库集成, 支持 VSCode 和 Claude Code 客户端
  - 项目涉及技术: Python, FastMCP, MCP 协议, 学术 API 集成, PDF 处理, GitHub API
]

#resume-project(
  title: link("https://github.com/jiahaoxiang2000/ai-video-driver", "AI Video Driver - AI 驱动的自动视频生成工具"),
  duty: "开源项目",
  start: "2025.09",
  end: "至今",
)[
  - 基于 FireRedTTS-2 和 Manim 的自动化视频生成工具, 将文本内容转换为带同步语音和动画的专业视频, 支持多说话人语音克隆和中英文混合内容
  - 智能文本解析、对话提取、场景生成和字幕同步的完整视频制作流程, 适用于播客可视化和培训材料制作
  - 项目涉及技术: Python, FireRedTTS-2, Manim, TTS, 视频处理, 字幕生成
]

#resume-project(
  title: link("https://github.com/jiahaoxiang2000/blivedm_rs", "blivedm_rs - Bilibili 直播弹幕客户端"),
  duty: "开源项目 (9 Stars)",
  start: "2025.05",
  end: "至今",
)[
  - 基于 Tokio 的高性能异步 Bilibili 直播弹幕 WebSocket 客户端, 支持智能关键词自动回复、多浏览器 Cookie 自动检测(Chrome/Firefox/Edge/Opera)
  - 插件化架构设计, 支持本地 TTS(Windows/macOS/Linux) 和远程 TTS 服务器, 提供全平台预编译二进制文件
  - 项目涉及技术: Rust, Tokio 异步, WebSocket, 浏览器 Cookie 解析, TTS 集成
]

#resume-project(
  title: "湖南省研究生科研创新项目《轻量级分组密码的软硬件优化研究与实现》",
  duty: "项目负责人",
  start: "2024.09",
  end: "2025.09",
)[
  - *FPGA 硬件实现*: 设计 CRAFT 算法的串行、并行、流水线三种架构, 实现 1.2 Gbps 吞吐量和 200 LUT 低资源消耗, 成果发表于 CEE 期刊
  - *嵌入式软件优化*: 针对 ARM-v7 处理器实现 SPN 算法位切片优化方案, 降低 40% 执行延迟
  - *GPU 并行加速*: 为 SLH-DSA 后量子签名算法设计线程自适应架构, 实现 100 倍以上吞吐量提升, 完成性能测试
]


#resume-section[个人总结]

- 活跃的开源贡献者, GitHub 本年度 2500+ 提交, 23+ PR 贡献, 维护 130+ 开源仓库, 代码质量受到社区认可
- 为多个知名开源项目贡献代码: VSCode (177K stars), Zed (66K stars), newsnow (13K stars), xremap (1.8K stars), paper-search-mcp (361 stars)
- 2 年 Linux 发行版主力使用经验, 良好的代码习惯和文档编写能力, 能够快速学习新技术并应用于实际项目
