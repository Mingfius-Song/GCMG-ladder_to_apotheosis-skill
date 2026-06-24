# GCMG Ladder to Apotheosis Skill

Author: **Alden Jin**

English | [中文](#中文说明)

A modular Chinese strategy-learning and power-analysis system for social judgment, hierarchy games, bureaucracy, game theory, psychology, organizational behavior, philosophy, mental models, and institutional power.

Repository name: `GCMG-ladder_to_apotheosis-skill`

## Name Meaning

`GCMG` is intentionally borrowed from *Yes Minister*, Series 2, "Doing the Honours". In the official honours system, GCMG is the post-nominal for **Knight/Dame Grand Cross** in the Most Distinguished Order of St Michael and St George; but Bernard Woolley's civil-service translation is the real joke and the real signal here: **GOD CALLS ME GOD**. In this project, the "ladder to apotheosis" is not merely about a medal. It names the learning ambition: to climb, step by step, toward the almost unreachable Arnoldian ideal of institutional poise, strategic memory, procedural command, and serenely excessive administrative self-possession. See the Royal Family's page on [The Order of St Michael and St George](https://www.royal.uk/order-st-michael-and-st-george) and [Wikiquote's Yes Minister page](https://en.wikiquote.org/wiki/Yes%2C_Minister).

## Design Philosophy

This skill package is designed as a MoE-like teaching system, not a monolithic knowledge dump.

Core principles:

- **Sir Humphrey remains the primary axis**: every lesson starts from nominal authority vs practical control, procedure, agenda, information, timing, responsibility, and sanctions.
- **Persona lenses and knowledge lenses are separated**: characters provide perspective; disciplines explain mechanisms.
- **Arnold is used selectively**: he deepens analysis when the issue involves senior institutional memory, precedent protection, reputation containment, and continuity.
- **Ming court statecraft is a decoupled enhancer**: it strengthens Humphrey with emperor-minister games, inner/outer court, censorial morality, fiscal constraint, and reform backlash, but never replaces the Humphrey axis.
- **Mao-selected-works methodology is auxiliary**: it checks main contradiction, investigation, alliances, and long-game structure, but does not replace the Humphrey axis.
- **Musk is a high-frequency execution lens**: use him for first principles, anti-bureaucracy, owner clarity, speed, and process deletion.
- **Mental models are routed, not dumped**: use only the models that reveal a named blind spot.
- **Lessons are split for density**: one lesson normally unfolds across 2-3 substantial conversations, with explicit digestion pauses.
- **Terminology is mandatory**: every lesson ends with a standalone terminology section.
- **Internal routing stays internal**: the user-facing lesson should not expose implementation labels unless the user asks for system architecture.

## Full Architecture

```mermaid
flowchart TD
    User["User request: lesson, supplement, scenario, or next topic"] --> Router["humphrey-social-strategy<br/>Mother router"]

    Router --> Core["Primary axis<br/>Sir Humphrey power map"]
    Core --> PowerMap["Authority map<br/>nominal decision-maker, practical controller,<br/>intermediary, audience, sanction holder"]

    Router --> PersonaGate{"Persona lens needed?"}
    PersonaGate -->|Institutional continuity / precedent / senior network| Arnold["sir-arnold-robinson"]
    PersonaGate -->|Imperial-bureaucratic analogy / Ming court politics| Ming["ming-court-statecraft"]
    PersonaGate -->|Execution / anti-bureaucracy / first principles| Musk["mimeograph-elon-musk<br/>(optional peer)"]
    PersonaGate -->|Main contradiction / investigation / alliance| Mao["mao-zedong-perspective<br/>(optional peer)"]
    PersonaGate -->|Moral or conceptual conflict| Philosophy["Philosophy peers<br/>Aristotle, Confucius, Hume,<br/>Nietzsche, Aurelius, Anscombe"]

    Router --> KnowledgeGate{"Knowledge lens needed?"}
    KnowledgeGate --> Game["game-theorist<br/>(optional peer)"]
    KnowledgeGate --> Psych["Psychology mechanisms<br/>bias, face, reactance, loss aversion,<br/>identity, threat response"]
    KnowledgeGate --> Org["Organizational behavior<br/>agenda, procedure, minutes,<br/>expert capture, responsibility transfer"]
    KnowledgeGate --> SVO["SVO<br/>competitor, individualist, cooperator"]
    KnowledgeGate --> Models["mental-models<br/>(optional peer)"]

    PowerMap --> LessonPlan["Lesson plan"]
    Arnold --> LessonPlan
    Ming --> LessonPlan
    Musk --> LessonPlan
    Mao --> LessonPlan
    Philosophy --> LessonPlan
    Game --> LessonPlan
    Psych --> LessonPlan
    Org --> LessonPlan
    SVO --> LessonPlan
    Models --> LessonPlan

    LessonPlan --> Turn1["Turn 1/3<br/>Power map and positions"]
    Turn1 --> Pause1["Digestion pause<br/>wait for continue"]
    Pause1 --> Turn2["Turn 2/3<br/>Domain mechanisms"]
    Turn2 --> Pause2["Digestion pause<br/>wait for continue"]
    Pause2 --> Turn3["Turn 3/3<br/>Tactics, wording, mistakes,<br/>counters, terminology"]
    Turn3 --> Review["User review / sedimentation<br/>wait for next lesson"]
```

## Advanced System Architecture

```mermaid
flowchart LR
    Request["User input"] --> Classifier{"Intent classifier"}

    Classifier -->|Next lesson| LessonIntent["New topic route"]
    Classifier -->|Continue| ContinueIntent["Continue current lesson"]
    Classifier -->|Supplement| SupplementIntent["Current-topic supplement"]
    Classifier -->|Scenario| ScenarioIntent["Scenario analysis"]
    Classifier -->|Architecture| ArchitectureIntent["System explanation"]

    LessonIntent --> Budget["Context budget and density control"]
    ContinueIntent --> Budget
    SupplementIntent --> Budget
    ScenarioIntent --> Budget
    ArchitectureIntent --> Budget

    Budget --> CoreRouter["Core router<br/>humphrey-social-strategy"]

    CoreRouter --> Primary["Always-on primary map<br/>nominal power vs practical control"]
    CoreRouter --> PersonaMoE{"Persona MoE<br/>select only what is needed"}
    CoreRouter --> KnowledgeMoE{"Knowledge MoE<br/>select only what explains the mechanism"}

    PersonaMoE --> H["Sir Humphrey<br/>present decision control"]
    PersonaMoE --> A["Sir Arnold<br/>institutional continuity and precedent"]
    PersonaMoE --> MingA["Ming court statecraft<br/>imperial-bureaucratic enhancer"]
    PersonaMoE --> E["Elon Musk<br/>execution and anti-bureaucracy"]
    PersonaMoE --> M["Mao lens<br/>main contradiction and investigation"]
    PersonaMoE --> P["Philosophy lens<br/>conceptual and moral clarity"]

    KnowledgeMoE --> G["Game theory<br/>players, incentives, equilibrium"]
    KnowledgeMoE --> Psy["Psychology<br/>bias, face, identity, threat"]
    KnowledgeMoE --> OB["Organizational behavior<br/>procedure, minutes, responsibility"]
    KnowledgeMoE --> MM["Mental models<br/>second-order, incentives, inversion"]
    KnowledgeMoE --> S["SVO<br/>competitor, individualist, cooperator"]

    Primary --> Composer["Lesson composer"]
    H --> Composer
    A --> Composer
    MingA --> Composer
    E --> Composer
    M --> Composer
    P --> Composer
    G --> Composer
    Psy --> Composer
    OB --> Composer
    MM --> Composer
    S --> Composer

    Composer --> Style["Output style<br/>formal, precise, dry, practical"]
    Composer --> Safety["Boundary layer<br/>no transcript dumps, no hidden full-corpus reproduction"]
    Composer --> Pacing{"Pacing gate"}

    Pacing -->|1/3| Segment1["Power map and positions"]
    Pacing -->|2/3| Segment2["Domain mechanisms"]
    Pacing -->|3/3| Segment3["Tactics, wording, counters, terminology"]

    Segment1 --> PauseA["Explicit digestion pause"]
    Segment2 --> PauseB["Explicit digestion pause"]
    Segment3 --> ReviewGate["Review and sedimentation"]

    PauseA --> UserSignal{"User says continue?"}
    PauseB --> UserSignal
    ReviewGate --> NextSignal{"User says next lesson?"}

    UserSignal -->|yes| CoreRouter
    UserSignal -->|supplement| SupplementIntent
    NextSignal -->|yes| LessonIntent
    NextSignal -->|review needed| SupplementIntent
```

This advanced map is the intended operating model: the mother skill does not load every expert at once. It classifies the user's request, preserves context budget, selects only the necessary persona and knowledge lenses, composes a dense lesson segment, then waits for explicit continuation or review.

## Internal Architecture

### Sir Humphrey Operating Structure

```mermaid
flowchart TD
    S["Concrete situation<br/>policy, workplace, negotiation, hierarchy"] --> FP["Nominal authority<br/>title, office, signature, public blame"]
    S --> C{"Where is practical control?"}

    C --> A["Agenda<br/>what enters attention"]
    C --> O["Options<br/>what choices appear available"]
    C --> I["Information<br/>what facts arrive"]
    C --> T["Timing<br/>when action is possible"]
    C --> P["Procedure<br/>reviews, approvals, formats"]
    C --> R["Risk frame<br/>what looks prudent or reckless"]
    C --> M["Minutes<br/>official memory"]

    FP --> VC["Visible choice<br/>what the decision-maker thinks is being decided"]
    A --> VC
    O --> VC
    I --> VC
    T --> VC
    P --> VC
    R --> VC

    VC --> B["Buffer / translator<br/>softens, sequences, records"]
    B --> L["Administrative language<br/>preference becomes professionalism"]
    L --> D["Plausible deniability<br/>steer without owning refusal"]
    D --> OUT["Visible decision"]

    M --> PR["Future precedent"]
    OUT --> PR
    OUT --> BL["Blame allocation"]

    PR -.shapes next case.-> A
    BL -.shapes future caution.-> R
```

| Layer | What It Means | Typical Signals | Teaching Use |
|---|---|---|---|
| Nominal authority | The person who appears to decide and bears visible responsibility. | Title, signature, public statement, meeting chair. | Ask whether formal power also controls facts, options, and timing. |
| Agenda control | Deciding what can enter discussion. | "Not today", "outside scope", "not the right forum". | Show how games are often decided before the meeting starts. |
| Option design | Shaping the menu of choices. | One recommended option, one terrible decoy, missing alternatives. | Train the user to ask for omitted options and exclusion criteria. |
| Information filtering | Controlling what facts arrive and in what order. | Summaries, briefings, selective data, delayed disclosure. | Separate fact, interpretation, preference, and recommendation. |
| Risk framing | Making one path look reckless and another look prudent. | Action risks listed in detail; inaction treated as neutral. | Require symmetrical risk comparison. |
| Procedure | Turning process into a soft veto. | Review, consultation, approval loops, legal sign-off, next cycle. | Ask what value the procedure protects and when it ends. |
| Minutes and records | Controlling the official memory of the event. | "Discussed", "noted", "broad agreement", missing dissent. | Confirm decisions, dissent, owners, and dates in writing. |
| Plausible deniability | Steering without appearing to refuse. | Advice, caution, delay, drafting, "helpful" alternatives. | Identify who shaped the outcome without owning it. |
| Counter-strategy | Reclaiming decision quality. | Three real options, risk symmetry, owner clarity, written confirmation. | Teach upper-position and lower-position moves separately. |

Sir Humphrey is therefore not merely a "bureaucratic style". In this system, he is the model for **present-tense control**: how a visible decision is quietly shaped through agenda, language, sequencing, records, and apparently responsible caution.

### Sir Arnold Institutional Structure

```mermaid
flowchart TD
    E["Visible event<br/>request, scandal, reform, appointment"] --> RISK{"What does the institution fear?"}

    RISK --> P0["Precedent risk<br/>can this be copied?"]
    RISK --> R0["Reputation risk<br/>who becomes exposed?"]
    RISK --> C0["Continuity risk<br/>does the institution look weakened?"]

    P0 --> SC["Senior consensus<br/>agreement without visible command"]
    R0 --> SC
    C0 --> SC

    MEM["Institutional memory<br/>old files, old promises, old embarrassments"] --> SC
    NET["Elite network<br/>appointments, honours, retirement, reciprocity"] --> SC

    SC --> N["Narrow the exception"]
    SC --> DL["Delay without denial"]
    SC --> RC["Reclassify the issue"]
    SC --> DE["Dignified exit<br/>move, honour, retire, settle"]

    N --> ST["Stability language"]
    DL --> ST
    RC --> PP["Procedural propriety"]
    DE --> PP

    ST --> OUT["Publicly acceptable outcome"]
    PP --> OUT
    OUT --> DOC["Doctrine preserved<br/>the system is harder to injure next time"]

    DOC -.sets future instinct.-> MEM
    DOC -.raises future threshold.-> P0
```

| Layer | What It Means | Typical Signals | Teaching Use |
|---|---|---|---|
| Precedent risk | The fear that one concession becomes a reusable template. | "We cannot open this door", "what about everyone else?" | Ask what exact conditions would make the case generalizable. |
| Reputation containment | Preventing exposure of respectable people or institutions. | Private settlement, dignified exit, honours, retirement, silence. | Separate personal dignity from operational responsibility. |
| Continuity protection | Keeping the institution looking stable across scandals and ministers. | "For the good of the service", "constitutional propriety", "stability". | Test whether public necessity is masking class or network preservation. |
| Institutional memory | Old files, old favours, old embarrassments, old relationships. | Someone knows the background before anyone explains it. | Teach the user to investigate what happened before the visible meeting. |
| Senior consensus | Agreement among people who do not need to issue direct orders. | Informal calls, clubs, quiet alignment, career pressure. | Look for common knowledge among elites, not just formal instructions. |
| Network protection | Mutual protection among people who expect future reciprocity. | Appointments, promotions, honours, consultancies, references. | Model it as an indefinite repeated game. |
| Containment design | Solving the scandal without weakening the system. | Narrow exception, delay, private compromise, reclassification. | Identify whether the solution fixes the problem or protects the doctrine. |
| Counter-strategy | Challenging the protected premise, not merely the individual. | Written criteria, narrow exceptions, independent records, review points. | Build a parallel long game: documentation, allies, public standards. |

Sir Arnold is therefore the model for **deep institutional self-preservation**: not the everyday steering of a single decision, but the longer game by which precedent, memory, elite reciprocity, and respectable language keep the system difficult to injure.

## Repository Structure

```text
GCMG-ladder_to_apotheosis-skill/
├── README.md
├── LICENSE
├── NOTICE.md
├── PEER-SKILLS.md
├── install.ps1
└── skills/
    ├── humphrey-social-strategy/
    │   ├── SKILL.md
    │   └── agents/openai.yaml
    ├── sir-humphrey/
    │   ├── SKILL.md
    │   ├── agents/openai.yaml
    │   └── references/
    │       ├── model.md
    │       └── sources.md
    ├── sir-arnold-robinson/
    │   ├── SKILL.md
    │   └── agents/openai.yaml
    └── ming-court-statecraft/
        ├── SKILL.md
        ├── agents/openai.yaml
        └── references/
            ├── model.md
            └── sources.md
```

## Included Skills

| Skill | Purpose |
|---|---|
| `humphrey-social-strategy` | Mother router for Chinese fragmented lessons and scenario analysis. It coordinates persona lenses, domain knowledge, lesson pacing, terminology, and output style. |
| `sir-humphrey` | Power hidden in procedure: agenda control, option design, information filtering, timing, minutes, risk framing, and nominal-vs-practical authority. |
| `sir-arnold-robinson` | Senior institutional self-preservation, precedent control, continuity, reputation containment, succession, and elite administrative memory. |
| `ming-court-statecraft` | Decoupled Ming imperial-bureaucratic enhancer: throne authority, inner/outer court, grand secretariat, censors, moralized legitimacy, fiscal constraint, and reform aftershock. |

## Optional Peer Skills

This repository intentionally does not copy external or third-party skill packages. For the full teaching system, install or provide equivalents for:

- `mental-models`
- `game-theorist`
- `influence-and-negotiation`
- `mao-zedong-perspective`
- `mao-dialectics`
- `elon-musk`
- selected philosophy skills, such as Aristotle, Confucius, Hume, Nietzsche, Aurelius, or Anscombe

See `PEER-SKILLS.md` for the detailed peer-skill map.

## Lesson Output Contract

| Segment | Function |
|---|---|
| `1/3` | Theme, power map, positions, visible issue vs real issue, first layer of Sir Humphrey-style maxims. |
| `2/3` | Game theory, psychology, organizational behavior, SVO, mental models, philosophy, Mao auxiliary check, and Musk execution lens when relevant. |
| `3/3` | Upper-position and lower-position tactics, direct wording, escalation rules, mistakes, counters, terminology, and review prompt. |

Every non-final segment ends with a digestion pause and waits for an explicit continuation. The final segment waits for review or `下一课`.

## Install

Core install:

Run from this repository root:

```powershell
.\install.ps1
```

Full best-effort install:

```powershell
.\install-full.ps1 -ContinueOnPeerFailure
```

One-line install after publishing this repository to GitHub:

```powershell
git clone https://github.com/Mingfius-Song/GCMG-ladder_to_apotheosis-skill.git; cd GCMG-ladder_to_apotheosis-skill; powershell -ExecutionPolicy Bypass -File .\install-full.ps1 -ContinueOnPeerFailure
```

The full installer installs the core skills from this repository, then attempts to install verified peer skills from their own GitHub sources. Peers without stable verified install sources are reported for manual installation instead of being silently bundled into this repository.

Or manually copy the packaged skills into your Codex skills directory:

```powershell
$src = "C:\path\to\GCMG-ladder_to_apotheosis-skill\skills\*"
$dst = "$HOME\.codex\skills"
Copy-Item -Path $src -Destination $dst -Recurse -Force
```

Then restart Codex or reload skills if your client supports it.

## Copyright Boundary

This repository does not include full transcripts, scripts, subtitles, episode text, or copied dialogue from *Yes Minister* or *Yes, Prime Minister*. The character-based skills use non-verbatim analytical patterns and should be treated as commentary, criticism, education, and style abstraction rather than a reproduction of copyrighted source material.

`Yes Minister`, `Yes, Prime Minister`, Sir Humphrey, Sir Arnold Robinson, and related names are the property of their respective rights holders. This project is unofficial and unaffiliated.

## License

MIT for the original skill instructions in this repository. The MIT license does not grant rights to any third-party copyrighted works, trademarks, characters, scripts, transcripts, or episode dialogue.

---

# 中文说明

作者：**Alden Jin**

[English](#gcmg-ladder-to-apotheosis-skill) | 中文

这是一个面向中文语境的模块化策略学习与权力分析系统，覆盖日常社会判断、层级博弈、官僚系统、博弈论、心理学、组织行为、哲学、心智模型与制度权力分析。

仓库名：`GCMG-ladder_to_apotheosis-skill`

## 命名含义

`GCMG` 这个名字有意取自《Yes Minister》第二季第二集 “Doing the Honours”。在正式授勋体系里，GCMG 是 The Most Distinguished Order of St Michael and St George 中 **Knight/Dame Grand Cross** 的勋衔缩写；但本项目真正想表达的，是 Bernard Woolley 对这条文官授勋阶梯的那句绝妙翻译：**GOD CALLS ME GOD**。这里的“登神长阶”不只是一个勋章梗，而是这套学习系统的目标隐喻：通过一阶一阶的策略训练，向阿诺德式那个可望不可即的 GCMG 状态攀登——沉着、老练、记忆深长、程序在握，并带着一点恰到好处的行政自我神圣化。参见英国王室官网关于 [The Order of St Michael and St George](https://www.royal.uk/order-st-michael-and-st-george) 的说明，以及 [Wikiquote 的 Yes Minister 页面](https://en.wikiquote.org/wiki/Yes%2C_Minister)。

## 设计理念

这个 skill 包不是巨型知识库，而是一个类 MoE 的教学系统：母 skill 负责路由，具体人物视角和领域知识按需触发。

核心原则：

- **Sir Humphrey 是主轴**：每一课优先从名义权力与实际控制、流程、议程、信息、时机、责任与制裁来分析。
- **人物视角与领域知识分层**：人物提供观察位置，学科解释运行机制。
- **Arnold 选择性触发**：当问题涉及高级制度记忆、先例保护、声誉隔离与连续性时启用。
- **明代宫廷权术是解耦增强包**：用于把皇权-官僚结构、内外廷、言官清议、财政约束与改革反噬补进 Humphrey 分析，但不取代 Humphrey 主轴。
- **毛选方法论是重要旁证**：用于校验主要矛盾、调查研究、联盟与长期斗争结构，但不取代 Humphrey 主轴。
- **马斯克视角高频但从属**：用于第一性原理、反官僚、责任 owner、速度、删除无效流程。
- **mental models 只按需触发**：只使用能揭示盲点的模型，避免上下文臃肿。
- **课程按密度拆分**：一堂课通常拆成 2-3 次高密度对话，并设置明确消化节点。
- **术语学习固定保留**：每堂课结尾必须有单独术语沉淀。
- **内部路由不外露**：除非用户要求系统架构，否则正文不展示内部实现标签。

## 完整结构图

```mermaid
flowchart TD
    UserCN["用户请求：下一课、补充、场景分析、继续"] --> RouterCN["humphrey-social-strategy<br/>母路由"]

    RouterCN --> CoreCN["主轴<br/>Sir Humphrey 权力地图"]
    CoreCN --> PowerMapCN["权力地图<br/>名义决策者、实际控制者、<br/>中间人、旁观者、制裁者"]

    RouterCN --> PersonaGateCN{"是否需要人物视角？"}
    PersonaGateCN -->|制度连续性 / 先例 / 高级网络| ArnoldCN["sir-arnold-robinson"]
    PersonaGateCN -->|皇权-官僚类比 / 明代宫廷政治| MingCN["ming-court-statecraft"]
    PersonaGateCN -->|执行 / 反官僚 / 第一性原理| MuskCN["mimeograph-elon-musk<br/>可选 peer"]
    PersonaGateCN -->|主要矛盾 / 调查研究 / 联盟| MaoCN["mao-zedong-perspective<br/>可选 peer"]
    PersonaGateCN -->|道德或概念冲突| PhilosophyCN["哲学 peer<br/>亚里士多德、孔子、休谟、<br/>尼采、奥勒留、安斯康姆"]

    RouterCN --> KnowledgeGateCN{"是否需要领域知识？"}
    KnowledgeGateCN --> GameCN["game-theorist<br/>可选 peer"]
    KnowledgeGateCN --> PsychCN["心理学机制<br/>偏差、面子、反抗、损失厌恶、<br/>身份、威胁反应"]
    KnowledgeGateCN --> OrgCN["组织行为<br/>议程、流程、纪要、<br/>专家捕获、责任转移"]
    KnowledgeGateCN --> SVOCN["SVO<br/>竞争型、个人主义型、合作型"]
    KnowledgeGateCN --> ModelsCN["mental-models<br/>可选 peer"]

    PowerMapCN --> LessonPlanCN["课程规划"]
    ArnoldCN --> LessonPlanCN
    MingCN --> LessonPlanCN
    MuskCN --> LessonPlanCN
    MaoCN --> LessonPlanCN
    PhilosophyCN --> LessonPlanCN
    GameCN --> LessonPlanCN
    PsychCN --> LessonPlanCN
    OrgCN --> LessonPlanCN
    SVOCN --> LessonPlanCN
    ModelsCN --> LessonPlanCN

    LessonPlanCN --> Turn1CN["第 1/3 段<br/>权力地图与位置"]
    Turn1CN --> Pause1CN["消化节点<br/>等待继续"]
    Pause1CN --> Turn2CN["第 2/3 段<br/>领域机制"]
    Turn2CN --> Pause2CN["消化节点<br/>等待继续"]
    Pause2CN --> Turn3CN["第 3/3 段<br/>策略、话术、误区、<br/>反制、术语"]
    Turn3CN --> ReviewCN["回顾沉淀<br/>等待下一课"]
```

## 高级系统架构图

```mermaid
flowchart LR
    RequestCN["用户输入"] --> ClassifierCN{"意图分类器"}

    ClassifierCN -->|下一课| LessonIntentCN["新主题路由"]
    ClassifierCN -->|继续| ContinueIntentCN["继续当前课程"]
    ClassifierCN -->|补充| SupplementIntentCN["当前主题补充"]
    ClassifierCN -->|场景| ScenarioIntentCN["场景分析"]
    ClassifierCN -->|架构| ArchitectureIntentCN["系统说明"]

    LessonIntentCN --> BudgetCN["上下文预算与知识密度控制"]
    ContinueIntentCN --> BudgetCN
    SupplementIntentCN --> BudgetCN
    ScenarioIntentCN --> BudgetCN
    ArchitectureIntentCN --> BudgetCN

    BudgetCN --> CoreRouterCN["核心路由<br/>humphrey-social-strategy"]

    CoreRouterCN --> PrimaryCN["常驻主地图<br/>名义权力 vs 实际控制"]
    CoreRouterCN --> PersonaMoECN{"人物 MoE<br/>只选择必要视角"}
    CoreRouterCN --> KnowledgeMoECN{"知识 MoE<br/>只选择能解释机制的领域"}

    PersonaMoECN --> HCN["Sir Humphrey<br/>当前决策控制"]
    PersonaMoECN --> ACN["Sir Arnold<br/>制度连续性与先例"]
    PersonaMoECN --> MingACN["明代宫廷权术<br/>皇权-官僚增强包"]
    PersonaMoECN --> ECN["Elon Musk<br/>执行与反官僚"]
    PersonaMoECN --> MCN["毛选视角<br/>主要矛盾与调查研究"]
    PersonaMoECN --> PCN["哲学视角<br/>概念与道德澄清"]

    KnowledgeMoECN --> GCN["博弈论<br/>玩家、激励、均衡"]
    KnowledgeMoECN --> PsyCN2["心理学<br/>偏差、面子、身份、威胁"]
    KnowledgeMoECN --> OBCN["组织行为<br/>流程、纪要、责任"]
    KnowledgeMoECN --> MMCN["心智模型<br/>二阶效应、激励、逆向"]
    KnowledgeMoECN --> SCN["SVO<br/>竞争型、个人主义型、合作型"]

    PrimaryCN --> ComposerCN["课程合成器"]
    HCN --> ComposerCN
    ACN --> ComposerCN
    MingACN --> ComposerCN
    ECN --> ComposerCN
    MCN --> ComposerCN
    PCN --> ComposerCN
    GCN --> ComposerCN
    PsyCN2 --> ComposerCN
    OBCN --> ComposerCN
    MMCN --> ComposerCN
    SCN --> ComposerCN

    ComposerCN --> StyleCN["输出风格<br/>正式、精确、冷幽默、可操作"]
    ComposerCN --> SafetyCN["边界层<br/>不打包台词库，不复刻全文语料"]
    ComposerCN --> PacingCN{"节奏闸门"}

    PacingCN -->|1/3| Segment1CN2["权力地图与位置"]
    PacingCN -->|2/3| Segment2CN2["领域机制"]
    PacingCN -->|3/3| Segment3CN2["策略、话术、反制、术语"]

    Segment1CN2 --> PauseACN["明确消化节点"]
    Segment2CN2 --> PauseBCN["明确消化节点"]
    Segment3CN2 --> ReviewGateCN["回顾与沉淀"]

    PauseACN --> UserSignalCN{"用户是否继续？"}
    PauseBCN --> UserSignalCN
    ReviewGateCN --> NextSignalCN{"用户是否下一课？"}

    UserSignalCN -->|继续| CoreRouterCN
    UserSignalCN -->|补充| SupplementIntentCN
    NextSignalCN -->|下一课| LessonIntentCN
    NextSignalCN -->|继续沉淀| SupplementIntentCN
```

这张高级图对应实际运行方式：母 skill 不会一次性加载所有专家，而是先识别用户意图，再控制上下文预算，按需选择人物视角与领域知识，合成高密度课程段落，并在消化节点等待用户明确继续或复盘。

## 内部结构图

### Sir Humphrey 的现场操盘结构

```mermaid
flowchart TD
    SCN["具体场景<br/>政策、职场、谈判、层级关系"] --> FPCN["名义权力<br/>头衔、职位、签字、公开背锅"]
    SCN --> CCN{"实际控制点在哪里？"}

    CCN --> ACN["议程<br/>什么进入注意力"]
    CCN --> OCN["选项<br/>哪些选择显得可用"]
    CCN --> ICN["信息<br/>哪些事实抵达"]
    CCN --> TCN["时机<br/>何时还能行动"]
    CCN --> PCN["流程<br/>复核、审批、格式"]
    CCN --> RCN["风险框定<br/>什么显得审慎或鲁莽"]
    CCN --> MCN["纪要<br/>官方记忆"]

    FPCN --> VCCN["可见选择<br/>决策者以为自己正在决定的事"]
    ACN --> VCCN
    OCN --> VCCN
    ICN --> VCCN
    TCN --> VCCN
    PCN --> VCCN
    RCN --> VCCN

    VCCN --> BCN["缓冲 / 转译者<br/>软化、排序、记录"]
    BCN --> LCN["行政语言<br/>偏好变成专业"]
    LCN --> DCN["可否认性<br/>塑造结果但不拥有拒绝"]
    DCN --> OUTCN["可见决策"]

    MCN --> PRCN["未来先例"]
    OUTCN --> PRCN
    OUTCN --> BLCN["责任分配"]

    PRCN -.塑造下一次个案.-> ACN
    BLCN -.提高未来审慎度.-> RCN
```

| 层级 | 含义 | 典型信号 | 教学用途 |
|---|---|---|---|
| 名义权力 | 看起来做决定并承担公开责任的人。 | 头衔、签字、公开表态、主持会议。 | 训练用户区分“能签字”与“能控制事实、选项、时机”。 |
| 议程控制 | 决定什么能进入讨论。 | “今天不谈”“不在范围内”“不是合适场合”。 | 说明很多博弈在会议开始前已经被决定。 |
| 选项设计 | 设计可见选择菜单。 | 一个推荐方案、一个糟糕陪衬、关键选项缺席。 | 训练用户追问被排除的选项和排除标准。 |
| 信息过滤 | 控制哪些事实以何种顺序到达决策者。 | 摘要、简报、选择性数据、延迟披露。 | 区分事实、解释、偏好与建议。 |
| 风险框定 | 让一条路显得鲁莽，另一条路显得审慎。 | 行动风险写满，不行动风险隐身。 | 要求行动与不行动风险对称比较。 |
| 流程 | 把程序变成柔性否决。 | 复核、咨询、审批循环、法务签字、下个周期。 | 追问流程保护什么价值，以及何时结束。 |
| 纪要与记录 | 控制事件的官方记忆。 | “已沟通”“已知悉”“原则认可”、异议消失。 | 训练用户书面确认结论、异议、责任人与日期。 |
| 可否认性 | 推动结果但不显得自己拒绝。 | 建议、提醒、拖延、代拟文本、“帮助性”替代方案。 | 识别谁塑造了结果，却没有拥有结果。 |
| 反制策略 | 夺回决策质量。 | 三个真实选项、风险对称、owner 清晰、书面确认。 | 分开讲上位者与下位者打法。 |

因此，Sir Humphrey 在本系统中不只是“官僚风格”，而是**当前现场控制**的模型：一个可见决策如何被议程、语言、顺序、记录和看似负责的审慎悄悄塑形。

### Sir Arnold 的深层制度结构

```mermaid
flowchart TD
    ECN["可见事件<br/>请求、丑闻、改革、任命"] --> RKCN{"制度真正害怕什么？"}

    RKCN --> P0CN["先例风险<br/>这件事能否被复制"]
    RKCN --> R0CN["声誉风险<br/>谁会被暴露"]
    RKCN --> C0CN["连续性风险<br/>制度是否显得被削弱"]

    P0CN --> SCCN["高级共识<br/>没有可见命令的一致行动"]
    R0CN --> SCCN
    C0CN --> SCCN

    MEMCN["制度记忆<br/>旧档案、旧承诺、旧尴尬"] --> SCCN
    NETCN["精英网络<br/>任命、授勋、退休、互惠"] --> SCCN

    SCCN --> NCN["窄化例外"]
    SCCN --> DLCN["拖延但不否认"]
    SCCN --> RCCN["重新定性问题"]
    SCCN --> DECN["体面退场<br/>调离、授勋、退休、和解"]

    NCN --> STCN["稳定语言"]
    DLCN --> STCN
    RCCN --> PPCN["程序正当性"]
    DECN --> PPCN

    STCN --> OC2N["公开可接受结果"]
    PPCN --> OC2N
    OC2N --> DOCCN["原则被保存<br/>制度下一次更难被伤害"]

    DOCCN -.塑造未来本能.-> MEMCN
    DOCCN -.提高未来门槛.-> P0CN
```

| 层级 | 含义 | 典型信号 | 教学用途 |
|---|---|---|---|
| 先例风险 | 害怕一次让步变成可复制模板。 | “不能开这个口子”“以后大家都这样怎么办”。 | 追问到底哪些条件会让本案可泛化。 |
| 声誉隔离 | 防止体面人物或体面机构被暴露。 | 私下解决、体面退场、授勋、退休、沉默。 | 区分个人体面与操作责任。 |
| 连续性保护 | 让制度在丑闻和换届中保持稳定外观。 | “为了整体”“宪制责任”“稳定大局”。 | 检查公共必要性是否在掩护阶层或网络自保。 |
| 制度记忆 | 旧档案、旧人情、旧尴尬、旧关系。 | 某些人还没解释就已经知道背景。 | 训练用户调查可见会议之前发生了什么。 |
| 高级共识 | 不需要正式命令也能形成一致行动。 | 私人电话、俱乐部、安静对齐、职业压力。 | 观察精英间共同知识，而不只看正式指令。 |
| 网络保护 | 预期未来互保的人彼此保护。 | 任命、晋升、授勋、顾问职位、推荐信。 | 用无限期重复博弈理解互保机制。 |
| 控制性处理 | 解决丑闻，但不削弱制度。 | 窄化例外、拖延、私下妥协、重新定性。 | 判断方案是在解决问题，还是保存原则。 |
| 反制策略 | 攻击被保护的前提，而不只是攻击个人。 | 书面标准、窄化例外、独立记录、复盘节点。 | 建立平行长线：文档、盟友、公共标准。 |

因此，Sir Arnold 是**深层制度自保**的模型：不是单次决策的日常操盘，而是通过先例、记忆、精英互惠与体面语言，让制度长期保持难以被伤害。

## 仓库结构

```text
GCMG-ladder_to_apotheosis-skill/
├── README.md
├── LICENSE
├── NOTICE.md
├── PEER-SKILLS.md
├── install.ps1
└── skills/
    ├── humphrey-social-strategy/
    │   ├── SKILL.md
    │   └── agents/openai.yaml
    ├── sir-humphrey/
    │   ├── SKILL.md
    │   ├── agents/openai.yaml
    │   └── references/
    │       ├── model.md
    │       └── sources.md
    ├── sir-arnold-robinson/
    │   ├── SKILL.md
    │   └── agents/openai.yaml
    └── ming-court-statecraft/
        ├── SKILL.md
        ├── agents/openai.yaml
        └── references/
            ├── model.md
            └── sources.md
```

## 包含的 Skills

| Skill | 用途 |
|---|---|
| `humphrey-social-strategy` | 中文碎片化课程与场景分析的母路由，协调人物视角、领域知识、课程节奏、术语与输出风格。 |
| `sir-humphrey` | 分析隐藏在流程里的权力：议程控制、选项设计、信息过滤、时机、纪要、风险框定、名义权力与实际控制。 |
| `sir-arnold-robinson` | 分析高级制度自保、先例控制、连续性、声誉隔离、继任与行政记忆。 |
| `ming-court-statecraft` | 解耦的明代皇权-官僚政治增强包：皇权、内外廷、内阁、司礼监、言官清议、财政约束与改革反噬。 |

## 可选 Peer Skills

本仓库不复制外部或第三方 skill 包。完整教学系统建议配套：

- `mental-models`
- `game-theorist`
- `influence-and-negotiation`
- `mao-zedong-perspective`
- `mao-dialectics`
- `elon-musk`
- 选择性哲学 skills，例如亚里士多德、孔子、休谟、尼采、奥勒留、安斯康姆

详细 peer skill 地图见 `PEER-SKILLS.md`。

## 课程输出约定

| 段落 | 功能 |
|---|---|
| `1/3` | 主题、权力地图、位置、表面问题与真实问题、第一层汉弗莱式金句。 |
| `2/3` | 博弈论、心理学、组织行为、SVO、mental models、哲学、毛选旁证，必要时加入马斯克执行视角。 |
| `3/3` | 上位者与下位者策略、直接话术、升级规则、误区、反制、术语沉淀与复盘问题。 |

非最终段落必须停在消化节点，等待用户明确继续。最终段落等待用户复盘或说“下一课”。

## 安装

核心安装：

在仓库根目录运行：

```powershell
.\install.ps1
```

尽可能完整的一键安装：

```powershell
.\install-full.ps1 -ContinueOnPeerFailure
```

仓库发布到 GitHub 后，可以用一条命令安装：

```powershell
git clone https://github.com/Mingfius-Song/GCMG-ladder_to_apotheosis-skill.git; cd GCMG-ladder_to_apotheosis-skill; powershell -ExecutionPolicy Bypass -File .\install-full.ps1 -ContinueOnPeerFailure
```

完全体安装脚本会先安装本仓库核心 skills，再尝试从各自 GitHub 来源安装已确认来源的 peer skills。没有稳定确认安装源的 peer skills 不会被强行打包进本仓库，而是由脚本提示用户后续手动补齐。

或手动复制到 Codex skills 目录：

```powershell
$src = "C:\path\to\GCMG-ladder_to_apotheosis-skill\skills\*"
$dst = "$HOME\.codex\skills"
Copy-Item -Path $src -Destination $dst -Recurse -Force
```

然后重启 Codex，或使用客户端提供的 reload skills 功能。

## 版权边界

本仓库不包含 *Yes Minister* 或 *Yes, Prime Minister* 的完整台词、剧本、字幕、集文本或复制对白。相关人物 skill 使用的是非逐字的分析模式，应理解为评论、批评、教育与风格抽象，而不是对受版权保护文本的复制。

`Yes Minister`、`Yes, Prime Minister`、Sir Humphrey、Sir Arnold Robinson 及相关名称归其权利人所有。本项目为非官方项目，与权利人无关联。

## 许可

本仓库中的原创 skill 指令使用 MIT 许可。MIT 许可不授予任何第三方版权作品、商标、角色、剧本、台词或字幕文本的权利。
