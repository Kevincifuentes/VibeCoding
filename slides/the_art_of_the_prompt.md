---
# You can also start simply with 'default'
theme: seriph
# background image
background: /centro_arangoya.jpg
# slide metadata
author: Kevin Cifuentes
title: The Art of the Prompt
info: |
  ## The Art of the Prompt 
  Communicating effectively with AI through prompt engineering.
# apply unocss classes to the current slide
class: text-center
favicon: /favicon.png
# drawings config
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html\#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
lineNumbers: true
---

# The Art of the Prompt 

## Communicating effectively with AI

<img src="/centro-arangoya.jpg" class="w-40 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <a href="https://github.com/Kevincifuentes/VibeCoding" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

<!--  Cómo pedirle cosas a la IA para que nos dé buen código. Nada de magia: es comunicación clara y práctica. -->
---
layout: cover
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The New <b>Source Code</b> 💻

<div class="text-center mt-8">

**"In vibe coding, prompts are the new source code"**

</div>

Prompt engineering is the <b>skill of speaking the AI's language</b> 🗣️

<b>Well-crafted prompts</b> = perfect solutions vs irrelevant/buggy suggestions

<b>Programming through AI</b> using natural language 🚀

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  La idea central: los prompts son el nuevo "código". Si defines bien el qué y el cómo, la IA implementa. Especificidad > intuición. -->
---
layout: default
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Why Prompts Matter: Core principles 🎯

- **LLMs are not mind readers** 🧠 - they respond only to the input given
- **Think like a spec writer** 📝 - write prompts like documentation for a literal, pedantic junior developer
- **Reproducibility** 🔄 - effective prompts become valuable knowledge assets
- **Future-proofing** 🔮 - prompt skills help harness new AI capabilities

<img src="/prompt.gif" class="w-100 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Por qué importa: la IA no lee la mente. Si somos claros, obtenemos resultados útiles y repetibles. Esto ahorra tiempo y errores. -->
---
layout: default
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The Golden Rule: Specificity and Clarity ⚡

**Essential Elements to Include:**

- **Programming language and framework** 🐍 ("Write a Python function..." vs "Write a function...")
- **Exact error messages** 🚨 and describe what the code should do
- **Input/output structure** 📊 and expected behavior
- **Requirements and constraints** ⚙️ (performance, algorithms, libraries)
- **Scope definition** 🎯 (single function vs complete module vs tests included)
- **Output format** 📋 (code only, code with comments, explanations)

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Regla de oro: sé específico. Lenguaje, inputs/outputs, restricciones y formato. Piensen como si escribieran una especificación. -->
---
layout: full
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The Iterative Refinement Loop 🔄


<div class="flex justify-center items-center">

```mermaid {theme: 'neutral', scale: 0.8}
flowchart LR
  A[Prompt] --> B[AI Output]
  B --> C[Review]
  C --> D[Refine Prompt]
  D --> A

  style A fill:#e5f5ff,stroke:#1e90ff,stroke-width:2px
  style B fill:#f7e5ff,stroke:#c57eff,stroke-width:2px,stroke-dasharray: 5 5
  style C fill:#fff3cd,stroke:#f0ad4e,stroke-width:2px
  style D fill:#eaffea,stroke:#2ecc40,stroke-width:2px
```

</div>

**Best Practices:**
- Review AI code as critically as human-written code 👀
- Provide specific feedback, not just "that's wrong" 💬
- Keep iteration changes small to preserve good parts 🔧
- Use "rubber duck" debugging 🦆: ask AI to walk through code step-by-step

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Esto es iterativo: pedimos, revisamos, afinamos. Cambios pequeños y feedback concreto. Eso acelera muchísimo. -->
---
layout: two-cols-header
transition: slide-left
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Core Prompting Techniques (Part 1) 🛠️

::left::

## Basic Techniques

<div class="text-sm">

**Zero-Shot** 🎯
- Direct instruction without examples
- *When to use*: Standard, clear tasks

**Few-Shot** 📚
- Provide 1-5 examples of desired input/output
- *When to use*: Specific formats, unusual tasks, style consistency

**Chain-of-Thought (CoT)** 🧠
- "Let's think step-by-step"
- <b>Crucial for students/junior developers</b>
- *When to use*: Complex reasoning, debugging, explanations needed

</div>

::right::
  
<img src="/prompting.webp" class="max-h-100 max-w-s mr-8 rounded-lg shadow-lg" />


<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Tres básicos: zero-shot (rápido), few-shot (consistencia/formatos), CoT (razonamiento paso a paso). -->
---
layout: two-cols-header
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Core Prompting Techniques (Part 2) 🚀

::left::

## Advanced Techniques

<div class="text-sm">

**Role Prompting** 🎭
- "You are an expert Python developer..."
- *When to use*: Influence style, depth, and perspective

**Contextual Prompting** 📋
- Provide relevant data, API specs, class definitions
- *When to use*: Integration with existing code, specific requirements

**Metaprompting** 🎨
- Instructions about output format
- *When to use*: Precise formatting needs, automated processing

</div>

::right::
  
<img src="/prompting.webp" class="max-h-100 max-w-s mr-8 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Subimos nivel: rol para tono/profundidad, contexto para integrar con lo real, metaprompt para formatos exactos. -->
---
layout: two-cols-header
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Comparing Prompt Quality ⚖️

::left::


<div class="pr-6 max-w-[44rem]">

## Poor Prompt Example ❌

```javascript
"Why isn't my mapUsersById function working?"
```

**Result**: Generic debugging advice, no actual solution

</div>

<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>
::right::

<v-click>
<div class="pl-6 max-w-[30rem]">


## Improved Prompt Example ✅

```javascript
"I have a JavaScript function mapUsersById that 
converts an array of user objects into a map 
keyed by user ID. It throws 'Cannot read property 
id of undefined' when I pass [{id: 1, name: "Alice"}]. 
Here's the code: [code snippet]. What is the bug and 
how can I fix it?"
```

**Result**: Precise identification of the loop bounds bug and exact fix

</div>
</v-click>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Fíjense cómo cambia el resultado con contexto. Un buen prompt describe el objetivo, el error y el código relevante. -->
---
layout: default
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Advanced Strategies 🎯
##

**Combining Techniques:** 🔗
- Mix role + CoT: "As a senior engineer, think step-by-step..."
- Few-shot + constraints: Examples with specific requirements
- Context + metaprompting: Background info with format instructions

**Complex Task Management:** 📋
- Break large tasks into subtasks
- Use separate prompts for <b>planning</b> vs <b>implementation</b>
- Leverage stateful conversations for <b>iterative development</b>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Para tareas grandes, separen planificación de ejecución y combinen técnicas. Iteren con estado de la conversación. -->
---
layout: full
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Common Antipatterns to Avoid ⚠️

<div class="text-sm">

| **Antipattern** | **Problem** | **Solution** |
|-----------------|-------------|--------------|
| **Vague Prompt** | "It doesn't work, fix it" | Add context, error messages, specifics |
| **Overloaded** | Too many tasks at once | Split into sequential prompts |
| **Missing Question** | Code dump without clear ask | Always include explicit instruction |
| **Vague Criteria** | "Make it faster/cleaner" | Define specific success metrics |
| **Ignoring Clarifications** | Not answering AI's questions | Respond to clarification requests |
| **Inconsistent Style** | Mixed formats/approaches | Maintain consistent prompt structure |

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Lo que NO hacer: vaguedad, demasiadas cosas a la vez, sin pregunta clara. Siempre definan criterios de éxito. -->
---
layout: two-cols-header
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Practical Guidelines 📖


::left::

## Do's ✅

- Start with zero-shot, then refine if needed
- Provide examples for specific formats
- Use step-by-step for complex logic
- Set roles for appropriate complexity level
- Include relevant context and constraints

<br>
<br>
<br>
<br>
<br>

::right::

## Don'ts ❌

- Write novel-length prompts with irrelevant info
- Assume AI will correctly fill in missing details
- Use open-ended creative prompts for deterministic outputs
- Reference "above code" without clear context

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Aquí tienen el checklist rápido: prueben simple primero, agreguen ejemplos y usen paso a paso cuando haya lógica. -->
---
layout: two-cols-header
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Key Takeaways 🎯

::right::

1. **Treat prompting as a new essential programming skill** 💻
2. **Communication quality directly impacts code quality** 📢
3. **Iteration and refinement are normal and expected** 🔄
4. **Combine techniques for complex scenarios** 🧩
5. **Learn from failures - refine prompts like debugging code** 🐛

::left::

<img src="/prompt_joke.png" class="w-50 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="text-center mt-8 text-lg">

**Remember**: Prompt engineering is both an art and a science - practice makes perfect! 🎨🔬

</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--  Aquí remato: prompting es una habilidad clave; cuanto mejor te comunicas, mejor es el código. Iteren sin miedo, combinen técnicas según el caso y aprendan de los fallos. La meta es que el prompt sea tan claro que otro dev pueda implementarlo sin dudas. -->
---
layout: center
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Bibliography 📚
Useful resources

Beyond Vibe Coding (Addy Osmani) — [O'Reilly Media](https://www.oreilly.com/library/view/beyond-vibe-coding/9798341634749/)

Prompt Engineering Guide — [promptingguide.ai](https://www.promptingguide.ai/)

OpenAI Prompt Engineering — [platform.openai.com](https://platform.openai.com/docs/guides/prompt-engineering)

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>
<!--  Si quieren profundizar, estas referencias son un buen punto de partida. No hace falta leerlo todo hoy; guárdenlas y vuelvan cuando necesiten ideas o plantillas de prompts. -->
