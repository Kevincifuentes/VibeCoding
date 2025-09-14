---
# You can also start simply with 'default'
theme: seriph
# background image
background: /centro_arangoya.jpg
# slide metadata
author: Kevin Cifuentes
title: Git Essentials
info: |
  ## Git Essentials
  A practical guide to Git and GitHub: feature-branch flow and basics.
# apply unocss classes to the current slide
class: text-center
favicon: /favicon.png
# drawings config
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
lineNumbers: true
---

# Git Essentials

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

Master the basics of Git and GitHub

<img src="/centro-arangoya.jpg" class="w-40 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <a href="https://git-scm.com/" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

<!-- Introducción: vamos a ver Git de forma práctica, flujo por ramas y comandos esenciales. -->
---
layout: cover
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# What is <b>Git</b>?
<br>

Distributed version control system

Tracks changes to files and coordinates work among developers

Works locally and with remotes (e.g., GitHub, GitLab)

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Defino Git: control de versiones distribuido, cambios, coordinación y trabajo local/remoto. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://git-scm.com/downloads" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Install Git

```bash
# Linux (Debian/Ubuntu)
sudo apt update && sudo apt install -y git

# macOS (Homebrew)
brew install git

# Windows (winget)
winget install --id Git.Git -e --source winget

# Verify
git --version
```

- Alternatively, download installers from [git-scm.com/downloads](https://git-scm.com/downloads)

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Instalación rápida por SO y verificación con git --version. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# First-time setup

```bash
# Identify yourself (once per machine)
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# Optional: better default branch name
git config --global init.defaultBranch main

# Optional: colorful, concise logs
git config --global color.ui auto
git config --global core.editor "code --wait"   # or vim, nano, etc.
```

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Configuración inicial: nombre, email y preferencias básicas (branch por defecto, editor). -->
---
layout: two-cols-header
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Create a repo <b>or</b> clone from GitHub

::left::

<div class="pr-6 max-w-[44rem]">

## Create new repository (local)

```bash
mkdir my-project && cd my-project
git init
# add a file
printf "# My Project\n" > README.md
git add README.md
git commit -m "chore: initialize repository"
```

## Add a remote (later)
```bash
git remote add origin git@github.com:org/my-project.git
```
<br>
<br>
<br>
<br>
<br>

</div>

::right::

<div class="pl-6 max-w-[44rem]">

## Clone existing repository

```bash
# SSH (recommended if you set up SSH keys)
git clone git@github.com:org/my-project.git

# HTTPS
git clone https://github.com/org/my-project.git
```

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Creo repo local o clono; muestro el flujo mínimo para empezar o enganchar un remoto. -->
---
layout: full
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Feature-Branch Flow (overview)

<img src="/feature_branch.png" class="w-140 mx-auto mt-4 rounded-lg shadow-lg">

- Short-lived branches off `main`
- Commit locally, push, open PR, review, merge, delete branch

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Flujo por ramas: ramas cortas desde main, PR y revisión. Mantener simple y limpio. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Create and remove branches

```bash
# Create and switch to a new branch (modern)
git switch -c feature/awesome

# Equivalent (older)
git checkout -b feature/awesome

# List branches
git branch

# Delete local branch (merged)
git branch -d feature/awesome
# Force delete local branch (unmerged)
git branch -D feature/awesome

# Delete remote branch
git push origin --delete feature/awesome
```

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Crear, listar y borrar ramas; prefiero nombres claros y ramas cortas. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Make changes and commit

```bash
# Stage files
git add file1.ts file2.ts
# or everything modified
git add -A

# Commit with a clear message
git commit -m "feat(login): enable OAuth sign-in"

# Amend the last commit (message only)
git commit --amend -m "feat(login): enable OAuth sign-in (GitHub)"
```

- Prefer conventional messages: `type(scope): summary`
  - Common types: `feat`, `fix`, `chore`, `docs`, `refactor`, `test`

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Añadir y commitear con mensajes claros; mejor convención type(scope): resumen. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Inspect changes and history

```bash
# What changed (not staged)
git diff
# What is staged
git diff --cached

# Concise, beautiful log
git log --oneline --graph --decorate --all

# Who last changed each line (blame)
git blame path/to/file
```

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Inspeccionar cambios y el historial para entender y revisar antes de empujar. -->
---
layout: two-cols-header
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Sync with remote: <b>push</b> and <b>pull</b>

::left::

<div class="pr-6 max-w-[44rem]">

## Push your branch
```bash
git push -u origin feature/awesome
# next pushes
git push
```

## Update your branch
```bash
# Rebase keeps history linear (recommended)
git pull --rebase
```

</div>

<br>
<br>
<br>
<br>
<br>

::right::

<div class="pl-6 max-w-[44rem]">

## Keep `main` fresh locally
```bash
git switch main
git pull --rebase
```

## Fetch without merging
```bash
git fetch origin
# then inspect & merge/rebase manually
```

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Sincronizar: push para publicar; pull --rebase para mantener historial lineal. -->
---
layout: image-right
transition: fade
image: /pull_request.gif
backgroundSize: contain
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

<div class="max-w-4xl">

# Open a Pull Request (GitHub)

1. Push your branch: `git push -u origin feature/awesome`
2. Go to your repository on GitHub → Compare & pull request
3. Fill title/description, link issues, request reviewers
4. Ensure checks pass (CI)
5. Merge: Squash (recommended), Merge, or Rebase
6. Delete the branch

<div class="text-sm mt-4">
<b>Tip</b>: Prefer <b>Squash & merge</b> for clean history on `main`.
</div>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Abrir PR con buen contexto; revisar checks y preferir Squash para historial limpio. -->
---
layout: full
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Review & Merge

```mermaid {theme: 'neutral', scale: 0.75}
flowchart LR
  A[feature/awesome]
  B[PR #123]
  C[CI checks]
  D[Merged into main]
  E[Deploy]

  A --> B --> C --> D --> E

  style A fill:#f7e5ff,stroke:#c57eff,stroke-width:2px,stroke-dasharray: 5 5
  style D fill:#e5f5ff,stroke:#1e90ff,stroke-width:2px
  style E fill:#eaffea,stroke:#2ecc40,stroke-width:2px
```

- Automated tests + code review gate changes
- Merge strategy affects history: Squash vs Merge vs Rebase

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Revisión y CI como puertas; elegir estrategia de merge según el equipo. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Revert changes (safe undo)

```bash
# Revert a commit by creating a new inverse commit
git revert <commit-sha>

# Revert a range (inclusive)
git revert <old-sha>^..<new-sha>
```

- Keeps history intact; preferred for shared branches
- Avoid `git reset --hard` on shared branches (rewrites history)

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Revertir es seguro para deshacer sin reescribir historia; evitar reset --hard en ramas compartidas. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Cherry-pick (copy a commit)

```bash
# Apply a commit from another branch to current branch
git switch release/1.2.x
git cherry-pick <commit-sha>

# Resolve conflicts, then continue
git add -A
git cherry-pick --continue
```

- Useful to backport fixes to release branches

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Cherry-pick para traer commits específicos entre ramas (p. ej. backports). -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Quick cheat sheet

<div class="text-sm max-w-3xl mx-auto">

<div>

[Learn more](https://education.github.com/git-cheat-sheet-education.pdf)

</div>

```bash {2-3|6|8|11,13|16|19-20|23|26|33}{maxHeight:'400px', maxWidth: '1000px', lines:true}
# setup
git config --global user.name "Name"
git config --global user.email "you@x.com"

# start
git init
# or
git clone <url>

# branches
git switch -c feature/x
# or
git checkout -b feature/x

# delete branch (after merge)
git branch -d feature/x

# stage & commit
git add -A
git commit -m "feat(x): ..."

# history
git log --oneline --graph --decorate --all

# sync
git push -u origin HEAD
# later
git pull --rebase

# PR (GitHub) → open, review, merge

# undo
git revert <sha>

# cherry-pick
git cherry-pick <sha>
```

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Hoja rápida con comandos de uso diario; útil como referencia. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

# Resources

- Pro Git (Scott Chacon, Ben Straub) — [git-scm.com/book](https://git-scm.com/book)
- Atlassian Git Tutorials — [atlassian.com/git](https://www.atlassian.com/git)
- GitHub Docs — [docs.github.com](https://docs.github.com/)

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div> 
<!-- Recursos confiables; guarda esta lista para volver cuando necesites profundizar o una referencia rápida. -->
