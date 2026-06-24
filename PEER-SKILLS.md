# Peer Skills

The packaged skills are intentionally small. They route to optional peer skills when those skills exist in the local Codex environment.

## High-Value Peers

| Peer skill | Role in the teaching system |
|---|---|
| `mental-models` | Cross-disciplinary models: second-order effects, path dependence, incentives, inversion, map-territory, opportunity cost. |
| `game-theorist` | Players, incentives, strategy sets, repeated games, signalling, commitment, equilibrium, and deterrence. |
| `influence-and-negotiation` | Tactical wording, negotiation discipline, concessions, boundaries, and agreement design. |
| `mao-zedong-perspective` | Auxiliary structural checks: main contradiction, investigation, long-game strategy, alliance analysis. |
| `mao-dialectics` | Dialectical background for contradiction, development, and system change. |
| `elon-musk` | Execution-side lens: first principles, anti-bureaucracy, deadline pressure, deleting process, owner clarity. |

## Philosophy Peers

Use philosophy skills selectively. Do not load all of them in one normal lesson.

| Peer skill | Typical use |
|---|---|
| `aristotle` | Practical wisdom, rhetoric, virtue, purpose, and proportionate exceptions. |
| `confucius` | Role ethics, ritual order, hierarchy, relational duty, and face. |
| `david-hume` | Habit, convention, legitimacy, sentiment, and causality skepticism. |
| `friedrich-nietzsche` | Power, value conflict, resentment, status morality, and self-overcoming. |
| `aurelius-perspective` | Emotional steadiness, self-command, duty, and composure under hierarchy pressure. |
| `elizabeth-anscombe` | Intention, moral description, means and ends, and responsibility language. |

## Routing Rule

Keep `humphrey-social-strategy` as the mother router. It should select only the required peer lenses for the current lesson. The design goal is MoE-like conditional triggering, not a monolithic context dump.

## Installer Coverage

`install-full.ps1` attempts to install verified GitHub sources for:

- `mental-models`
- `mao-zedong-perspective`
- `elon-musk`
- `aristotle`
- `confucius`
- `david-hume`
- `friedrich-nietzsche`
- `elizabeth-anscombe`

The following are still listed as recommended peers but are not hard-coded into the installer because this repository does not currently pin stable verified upstream sources for them:

- `game-theorist`
- `influence-and-negotiation`
- `mao-dialectics`
- local `thinking-*` model skills
