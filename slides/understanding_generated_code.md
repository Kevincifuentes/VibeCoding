---
theme: seriph
background: /centro_arangoya.jpg
author: Kevin Cifuentes
title: Understanding Generated Code
info: |
  ## Understanding Generated Code
  Review, Refine, Own.
class: text-center
favicon: /favicon.png
drawings:
  persist: false
transition: slide-left
mdc: true
lineNumbers: true
---

# Understanding Generated Code

## Review, Refine, Own

<img src="/centro-arangoya.jpg" class="w-40 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <a href="https://github.com/Kevincifuentes/VibeCoding" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

<!-- Chapter 5: Understanding Generated Code—Review, Refine, Own -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The Critical Phase After Generation 🛑
## From AI Output to Production-Ready Code

<div class="grid grid-cols-3 gap-4 mt-10">

<div class="bg-blue-50/10 p-4 rounded-lg text-center" v-click>
  <div class="text-4xl mb-2">👀</div>
  <h3 class="font-bold">Review</h3>
  <p class="text-sm opacity-80">Correctness & Intent</p>
</div>

<div class="bg-green-50/10 p-4 rounded-lg text-center" v-click>
  <div class="text-4xl mb-2">🧪</div>
  <h3 class="font-bold">Test</h3>
  <p class="text-sm opacity-80">Thoroughly</p>
</div>

<div class="bg-purple-50/10 p-4 rounded-lg text-center" v-click>
  <div class="text-4xl mb-2">🤝</div>
  <h3 class="font-bold">Own</h3>
  <p class="text-sm opacity-80">As your project</p>
</div>

</div>

<div class="mt-8 text-center opacity-70">
"You cannot just take the AI's output and ship it."
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 1: The Critical Phase After Generation -->
---
layout: default
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# From Intent to Implementation 🔍
## Step 1: Understanding the AI's Interpretation

<div class="grid grid-cols-2 gap-8 mt-4">

<div>

<v-clicks>

- **Requirements Check** 📋
  <span class="text-sm opacity-70 block">Does it fulfill the prompt?</span>
- **Trace Execution** 🧠
  <span class="text-sm opacity-70 block">Read through logic carefully</span>
- **Multi-part Verification** 🔗
  <span class="text-sm opacity-70 block">Did it do X *and* Y?</span>

</v-clicks>

</div>

<div>

<v-clicks>

- **Check for Extras** 🎁
  <span class="text-sm opacity-70 block">Unasked logging or features?</span>
- **Edge Cases** ⚠️
  <span class="text-sm opacity-70 block">Empty inputs, nulls, negatives?</span>
- **Ambiguities** ❓
  <span class="text-sm opacity-70 block">Where did it guess?</span>

</v-clicks>

</div>

</div>

<div class="mt-6 bg-yellow-500/10 p-4 rounded border-l-4 border-yellow-500 text-sm" v-click>
  <b>Key Point:</b> Understanding code by reading is faster than debugging later.
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 2: From Intent to Implementation -->
---
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The Majority Solution Problem 📉

<div class="grid grid-cols-[1fr_1.5fr] gap-8 mt-6">

<div class="bg-red-500/5 p-5 rounded-lg border-l-4 border-red-400 h-fit">
  <h3 class="text-xl font-bold text-red-400 mb-3">The Trap</h3>
  <p class="text-base opacity-90 leading-relaxed">
    AI models output the <b>most common</b> solution, not necessarily the best.
  </p>
  <div class="mt-4 text-sm bg-white/10 p-3 rounded">
    <b>Example:</b><br>
    Asked for "search" → AI gives <code>Linear Search</code> (O(n))<br>
    You needed <code>Binary Search</code> (O(log n))
  </div>
</div>

<div class="space-y-4">
  <h3 class="text-xl font-bold text-green-400">How to Address It</h3>
  
  <div class="flex items-start gap-4 bg-green-500/5 p-3 rounded" v-click>
    <div class="text-2xl">🧐</div>
    <div>
      <div class="text-base font-bold">Identify Assumptions</div>
      <div class="text-sm opacity-70">Is the input sorted? Valid?</div>
    </div>
  </div>

  <div class="flex items-start gap-4 bg-green-500/5 p-3 rounded" v-click>
    <div class="text-2xl">🔄</div>
    <div>
      <div class="text-base font-bold">Consider Alternatives</div>
      <div class="text-sm opacity-70">Is this the best algorithm?</div>
    </div>
  </div>

  <div class="flex items-start gap-4 bg-green-500/5 p-3 rounded" v-click>
    <div class="text-2xl">🧱</div>
    <div>
      <div class="text-base font-bold">Check Edge Conditions</div>
      <div class="text-sm opacity-70">Boundaries, nulls, empty?</div>
    </div>
  </div>
</div>

</div>

<div class="mt-8 text-center opacity-60 text-base">
  "AI gives an educated guess; you provide the context."
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 3: The Majority Solution Problem -->
---
layout: two-cols-header
transition: slide-left
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Code Readability and Structure 📝

::left::

<div class="mr-4">

<h3 class="font-bold mb-4 text-orange-400">Patterns to Watch For</h3>

<div class="space-y-3">
  <div class="bg-orange-500/5 p-3 rounded" v-click>
    <div class="font-bold text-sm">💬 Excessive Comments</div>
    <div class="text-xs opacity-70">Learned from tutorials</div>
  </div>
  <div class="bg-orange-500/5 p-3 rounded" v-click>
    <div class="font-bold text-sm">🏷️ Generic Names</div>
    <div class="text-xs opacity-70"><code>data</code>, <code>item</code>, <code>val</code></div>
  </div>
  <div class="bg-orange-500/5 p-3 rounded" v-click>
    <div class="font-bold text-sm">📜 Verbose Style</div>
    <div class="text-xs opacity-70">Overly explicit logic</div>
  </div>
</div>

</div>

<br>
<br>
<br>
<br>
<br>

::right::

<div class="ml-4">

<h3 class="font-bold mb-4 text-blue-400">Readability Checklist</h3>

<ul class="space-y-2 text-sm">
  <li class="flex items-center gap-2" v-click>
    <span class="text-green-400">✔</span> <b>Rename variables</b>
  </li>
  <li class="flex items-center gap-2" v-click>
    <span class="text-green-400">✔</span> <b>Prune comments</b>
  </li>
  <li class="flex items-center gap-2" v-click>
    <span class="text-green-400">✔</span> <b>Apply formatting</b> (Black/Prettier)
  </li>
  <li class="flex items-center gap-2" v-click>
    <span class="text-green-400">✔</span> <b>Simplify structure</b>
  </li>
  <li class="flex items-center gap-2" v-click>
    <span class="text-green-400">✔</span> <b>Check team style</b>
  </li>
</ul>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 4: Code Readability and Structure -->
---
layout: full
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>


# Red Flags in AI-Generated Code 🚩

<br>
<br>
<br>


<div class="grid grid-cols-3 gap-3 mt-4 text-sm">

<div class="bg-red-500/10 p-3 rounded border border-red-500/20" v-click>
  <div class="font-bold text-red-400">Off-by-one</div>
  <div class="opacity-80">Loop boundaries (< vs <=)</div>
</div>

<div class="bg-red-500/10 p-3 rounded border border-red-500/20" v-click>
  <div class="font-bold text-red-400">Exceptions</div>
  <div class="opacity-80">Unhandled file/format errors</div>
</div>

<div class="bg-red-500/10 p-3 rounded border border-red-500/20" v-click>
  <div class="font-bold text-red-400">Performance</div>
  <div class="opacity-80">Inner loops, O(n^2) ops</div>
</div>

<div class="bg-orange-500/10 p-3 rounded border border-orange-500/20" v-click>
  <div class="font-bold text-orange-400">Libraries</div>
  <div class="opacity-80">Unintended/outdated deps</div>
</div>

<div class="bg-orange-500/10 p-3 rounded border border-orange-500/20" v-click>
  <div class="font-bold text-orange-400">Inconsistencies</div>
  <div class="opacity-80">Docstrings ≠ Code logic</div>
</div>

<div class="bg-yellow-500/10 p-3 rounded border border-yellow-500/20" v-click>
  <div class="font-bold text-yellow-400">Placeholders</div>
  <div class="opacity-80">"Your code here" left in</div>
</div>

</div>

<div class="mt-4 text-center italic opacity-60">
"Syntax issues are rare, but logic gaps are common."
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 5: Red Flags in AI-Generated Code -->
---
layout: quote
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The Code Review Mindset 🧠

"Treat AI Code Like an Intern's Work"

Review it for quality and correctness as you would any colleague's code.

Don't assume it's correct just because it "looks polished".

Manual trace through logic with sample inputs.

Mentally test edge cases.

Ask "why" about unclear patterns.

**Remember: This is your code now. You're responsible for it.**

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 6: The Code Review Mindset -->
---
layout: default
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Debugging AI-Generated Code 🐞
<br>

## Six-Step Debugging Approach
<br>

<div class="grid grid-cols-2 gap-6 mt-4">

<div class="space-y-2">
  <div class="flex items-center gap-2" v-click>
    <div class="bg-blue-500 text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">1</div>
    <span><b>Reproduce</b> with failing inputs</span>
  </div>
  <div class="flex items-center gap-2" v-click>
    <div class="bg-blue-500 text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">2</div>
    <span><b>Locate</b> source (print/debug)</span>
  </div>
  <div class="flex items-center gap-2" v-click>
    <div class="bg-blue-500 text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">3</div>
    <span><b>Check Prompt</b> vs Code</span>
  </div>
</div>

<div class="space-y-2">
  <div class="flex items-center gap-2" v-click>
    <div class="bg-purple-500 text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">4</div>
    <span><b>Leverage AI</b> ("Fix this error...")</span>
  </div>
  <div class="flex items-center gap-2" v-click>
    <div class="bg-green-500 text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">5</div>
    <span><b>Fix</b> (Manual or AI)</span>
  </div>
  <div class="flex items-center gap-2" v-click>
    <div class="bg-green-500 text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">6</div>
    <span><b>Test Again</b> (Regression check)</span>
  </div>
</div>

</div>

<div class="mt-8 bg-gray-500/10 p-4 rounded text-center" v-click>
  <span class="text-2xl mr-2">💡</span>
  <b>Pro Tip:</b> Write a few tests for critical functions.<br>
  <span class="text-sm opacity-70">Test-driven debugging is faster than manual checking.</span>
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 7: Debugging AI-Generated Code -->
---
layout: full
transition: slide-left
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Understanding Why Bugs Occur 🤔
<div class="grid grid-cols-[1fr_1.2fr] gap-12 mt-8">

<div class="bg-red-500/5 p-6 rounded-xl border border-red-500/10 h-fit">
  <h3 class="text-2xl font-bold mb-4 text-red-400">The "Why" Question</h3>
  <p class="mb-4 text-lg">When you find a bug, don't just fix it.</p>
  <div class="bg-black/20 p-4 rounded text-base font-mono">
    Did the prompt lack clarity?<br>
    Did I miss an edge case?
  </div>
  <p class="mt-4 text-base opacity-70">This informs future prompting.</p>
</div>

<div class="space-y-6">
  <h3 class="text-2xl font-bold text-blue-400" v-click>Example Scenario</h3>
  
  <div class="bg-blue-500/5 p-5 rounded-lg" v-click>
    <div class="font-bold text-lg mb-1">Issue</div>
    <div class="text-base opacity-80">AI ignores empty inputs.</div>
  </div>

  <div class="flex justify-center text-3xl opacity-50" v-click>⬇️</div>

  <div class="bg-green-500/5 p-5 rounded-lg" v-click>
    <div class="font-bold text-lg mb-1">Workflow Fix</div>
    <div class="text-base opacity-80">Always specify "handle empty inputs" in prompts.</div>
  </div>
</div>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 8: Understanding Why Bugs Occur -->
---
layout: default
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Refactoring for Maintainability 🛠️

<div class="grid grid-cols-3 gap-4 mt-8">

<div class="bg-gray-500/5 p-4 rounded-lg" v-click>
  <div class="text-3xl mb-2">🎨</div>
  <h3 class="font-bold">Style</h3>
  <p class="text-xs opacity-70">Align with guidelines (Black, gofmt)</p>
</div>

<div class="bg-gray-500/5 p-4 rounded-lg" v-click>
  <div class="text-3xl mb-2">🏷️</div>
  <h3 class="font-bold">Naming</h3>
  <p class="text-xs opacity-70">No more <code>helper1</code></p>
</div>

<div class="bg-gray-500/5 p-4 rounded-lg" v-click>
  <div class="text-3xl mb-2">✂️</div>
  <h3 class="font-bold">Prune</h3>
  <p class="text-xs opacity-70">Remove unused blocks</p>
</div>

<div class="bg-gray-500/5 p-4 rounded-lg" v-click>
  <div class="text-3xl mb-2">📄</div>
  <h3 class="font-bold">Docs</h3>
  <p class="text-xs opacity-70">Standard docstrings</p>
</div>

<div class="bg-gray-500/5 p-4 rounded-lg" v-click>
  <div class="text-3xl mb-2">⚡</div>
  <h3 class="font-bold">Optimize</h3>
  <p class="text-xs opacity-70">Check complexity</p>
</div>

<div class="bg-gray-500/5 p-4 rounded-lg" v-click>
  <div class="text-3xl mb-2">✨</div>
  <h3 class="font-bold">Simplify</h3>
  <p class="text-xs opacity-70">Reduce verbosity</p>
</div>

</div>

<div class="mt-8 text-center opacity-60 italic">
  "Make it look like good code, not AI code."
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 9: Refactoring for Maintainability -->
---
layout: two-cols-header
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Testing is Non-Negotiable 🧪

<div class="grid grid-cols-3 gap-4 mt-8">

<div class="bg-gray-500/10 p-4 rounded-lg" v-click>
  <div class="text-xl font-bold mb-2 text-blue-400">Unit Tests</div>
  <p class="text-sm opacity-80">Test individual functions and edge cases.</p>
  <div class="mt-2 text-xs bg-black/20 p-2 rounded">
    Example: Primes (0, 1, -1, large)
  </div>
</div>

<div class="bg-gray-500/10 p-4 rounded-lg" v-click>
  <div class="text-xl font-bold mb-2 text-purple-400">Integration</div>
  <p class="text-sm opacity-80">Interactions with DBs, APIs, and other modules.</p>
</div>

<div class="bg-gray-500/10 p-4 rounded-lg" v-click>
  <div class="text-xl font-bold mb-2 text-green-400">End-to-End</div>
  <p class="text-sm opacity-80">Full workflow from start to finish.</p>
</div>

</div>

<div class="mt-8 text-center" v-click>
  <span class="opacity-60">"Even simple asserts are better than nothing."</span>
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 10: Testing is Non-Negotiable -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# What Testing Provides 🛡️
## Beyond Finding Bugs

<div class="text-left">

- **Locks down behavior** — If you change something later or AI does, tests guard functionality
- **Asserts ownership** — Once tested and fixed, it's fair to say the code is yours
- **Builds confidence** — You understand it, trust it, and have tests to guard it
- **Creates regression detection** — Future changes won't silently break functionality

> **Important Note**: AI tools may suggest tests (e.g., CodeWhisperer with assert suggestions), but don't assume they're 100% comprehensive. Use human intuition for creative edge cases.

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 11: What Testing Provides -->
---
layout: default
transition: slide-left
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Copyright and Attribution Considerations ⚖️
## Responsible AI Code Ownership

<div class="mt-8 space-y-2">

<div class="flex items-start gap-6" v-click>
  <div class="text-4xl">👤</div>
  <div>
    <h3 class="text-xl font-bold">You are Responsible</h3>
    <p class="text-base opacity-80 mt-1">AI is a tool. You own the final output.</p>
  </div>
</div>

<div class="flex items-start gap-6" v-click>
  <div class="text-4xl">📜</div>
  <div>
    <h3 class="text-xl font-bold">Licensing & Verification</h3>
    <p class="text-base opacity-80 mt-1">Check large outputs for verbatim copying (rare but possible).</p>
  </div>
</div>

<div class="flex items-start gap-6" v-click>
  <div class="text-4xl">📝</div>
  <div>
    <h3 class="text-xl font-bold">Attribution</h3>
    <p class="text-base opacity-80 mt-1">Optional, but good for team transparency in commit messages.</p>
  </div>
</div>

<div class="flex items-start gap-6" v-click>
  <div class="text-4xl">🛡️</div>
  <div>
    <h3 class="text-xl font-bold">Standard Checks</h3>
    <p class="text-base opacity-80 mt-1">Treat it like any other code: check licenses and polish.</p>
  </div>
</div>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 12: Copyright and Attribution Considerations -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Integration and Version Control 🔄
## Making AI Code Part of Your Project

<div class="flex flex-col items-center justify-center mt-4 space-y-4">

<div class="flex items-center gap-8 w-full max-w-4xl bg-white/5 p-6 rounded-xl" v-click>
  <div class="text-5xl">📦</div>
  <div>
    <h3 class="text-2xl font-bold">Commit to VC</h3>
    <p class="text-lg opacity-80 mt-1">Add refactored, tested code as normal.</p>
  </div>
</div>

<div class="flex items-center gap-8 w-full max-w-4xl bg-white/5 p-6 rounded-xl" v-click>
  <div class="text-5xl">🏷️</div>
  <div>
    <h3 class="text-2xl font-bold">Transparent History</h3>
    <p class="text-lg opacity-80 mt-1">Optional: Mention AI assistance in commit messages.</p>
  </div>
</div>

<div class="flex items-center gap-8 w-full max-w-4xl bg-white/5 p-6 rounded-xl" v-click>
  <div class="text-5xl">🛠️</div>
  <div>
    <h3 class="text-2xl font-bold">Evolve Freely</h3>
    <p class="text-lg opacity-80 mt-1">Modify by hand or AI as requirements change.</p>
  </div>
</div>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 13: Integration and Version Control -->
---
layout: center
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The Review-Test-Own Cycle 🚲
<br>

<div class="flex justify-center mt-4">

```mermaid {theme: 'neutral', scale: 0.7}
graph LR
    A[Generate AI Code] -->|Raw| B(Review & Intent)
    B -->|Check| C(Debug & Fix)
    C -->|Refine| D(Refactor)
    D -->|Verify| E(Test)
    E -->|Final| F[Own the Code]

    style A fill:#e5f5ff,stroke:#1e90ff,stroke-width:2px
    style F fill:#eaffea,stroke:#2ecc40,stroke-width:2px
```

</div>

<div class="grid grid-cols-2 gap-8 mt-8 text-center">
  <div class="bg-blue-500/10 p-2 rounded">
    <div class="font-bold text-blue-400">Fast Cycle ⚡</div>
    <div class="text-xs">Minutes for small functions</div>
  </div>
  <div class="bg-purple-500/10 p-2 rounded">
    <div class="font-bold text-purple-400">Extended Cycle 🗓️</div>
    <div class="text-xs">Days for complex modules</div>
  </div>
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 14: The Review-Test-Own Cycle -->
---
layout: full
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Key Takeaways for Students 🎓

<div class="grid grid-cols-[1.2fr_1fr] gap-12 mt-8">

<div>
  <h3 class="text-2xl font-bold mb-6 text-red-400">Responsibilities</h3>
  <ul class="space-y-6">
    <li v-click class="flex items-start gap-3">
      <span class="text-2xl">🚫</span> <span class="text-lg"><b>Never ship untested</b> AI code</span>
    </li>
    <li v-click class="flex items-start gap-3">
      <span class="text-2xl">📖</span> <span class="text-lg"><b>Read & Trace</b> logic before accepting</span>
    </li>
    <li v-click class="flex items-start gap-3">
      <span class="text-2xl">🤔</span> <span class="text-lg"><b>Question assumptions</b> (it optimizes for average)</span>
    </li>
    <li v-click class="flex items-start gap-3">
      <span class="text-2xl">🧹</span> <span class="text-lg"><b>Refactor ruthlessly</b> for human readability</span>
    </li>
  </ul>
</div>

<div v-click class="bg-blue-500/10 p-8 rounded-2xl flex flex-col justify-center items-center text-center h-fit">
  <div class="text-7xl mb-6">🚀</div>
  <h3 class="text-3xl font-bold mb-4">Bottom Line</h3>
  <p class="opacity-90 text-xl leading-relaxed">
    AI accelerates generation.<br>
    <b>You</b> provide the rigor.
  </p>
  <div class="mt-8 text-base opacity-70 font-mono bg-white/10 p-3 rounded">
    Review + Test + Own = Production Ready
  </div>
</div>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 15: Key Takeaways for Students -->
---
layout: center
transition: slide-left
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# What Comes Next 🔮
## Prototyping and Production

<div class="grid grid-cols-2 gap-4 mt-4 text-left max-w-5xl">

<div class="bg-white/5 p-8 rounded-xl border border-white/10" v-click>
  <div class="text-4xl mb-4">⚡</div>
  <h3 class="text-xl font-bold">Rapid Prototyping</h3>
  <p class="text-base opacity-70 mt-2">Using AI assistants to move fast.</p>
</div>

<div class="bg-white/5 p-8 rounded-xl border border-white/10" v-click>
  <div class="text-4xl mb-4">🛠️</div>
  <h3 class="text-xl font-bold">New Tools</h3>
  <p class="text-base opacity-70 mt-2">Vercel v0, screenshot-to-code.</p>
</div>

<div class="bg-white/5 p-8 rounded-xl border border-white/10" v-click>
  <div class="text-4xl mb-4">🏭</div>
  <h3 class="text-xl font-bold">To Production</h3>
  <p class="text-base opacity-70 mt-2">Transitioning prototypes to real apps.</p>
</div>

<div class="bg-white/5 p-8 rounded-xl border border-white/10" v-click>
  <div class="text-4xl mb-4">📚</div>
  <h3 class="text-xl font-bold">Case Studies</h3>
  <p class="text-base opacity-70 mt-2">Real-world examples and pitfalls.</p>
</div>

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- Slide 16: What Comes Next -->

<style>
.slidev-layout {
  padding-top: 6rem !important;
  padding-bottom: 4rem !important;
}

.slidev-layout h1 {
  margin-bottom: 2rem !important;
}
</style>
