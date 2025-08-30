---
# You can also start simply with 'default'
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: /centro_arangoya.jpg
# some information about your slides (markdown enabled)
author: Kevin Cifuentes
title: Vibe Coding
info: |
  ## Vibe Coding
  Introducción a la asignatura de Arangoya
# apply unocss classes to the current slide
class: text-center
favicon: /favicon.png
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
lineNumbers: true
# open graph
# seoMeta:
#  ogImage: https://cover.sli.dev
---

# Vibe Coding

Introducción 

<img src="/centro-arangoya.jpg" class="w-40 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <a href="https://github.com/Kevincifuentes/VibeCoding" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

---
transition: fade-out
layout: image-left
image: /kevin.jpg
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Lecturer

- 🧑‍💻 **Name** - Kevin Cifuentes Salas
- 📝 **Email** - kevin.cifuentes@arangoya.net
- 🛠 **Job** - SWE in DLocal, Ex-Inditex, Ex-Eventbrite, Ex-CERN
- 🎨 **Hobbies** - Water Skiing, Videogames, Travelling, Athletic Club
<br>
<br>

<div grid="~ cols-3 gap-3" m="t-3">
  <img src="/cern.png" width="70px">
  <img src="/inditex.png" width="150px">
  <img src="/eventbrite.png" width="150px">
</div>
<div class="items-center">
  <img src="/dlocal.png" width="2000px">
</div>
<br>
<br>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>


---
transition: slide-up
level: 2
layout: image
image: /show-me-yours.jpg
quote: Show me
---

<style>
.container {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-align: center;
  color: #333;
  margin-top: 60px;
}

.boxSize {
  margin: 40px auto;
  padding: 20px;
  border-radius: 10px;
  width: 90%;
  max-width: 800px;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.quoteText {
  font-size: 28px;
  margin-bottom: 20px;
  color:rgb(255, 255, 255);
}
</style>

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

<div class="container">
    <div class="boxSize">
      <h1 class="quoteText">Now, show me!</h1>
      <hr />
    </div>
  </div>


<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

---
layout: section
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# What is <b>Vibe Coding</b> all about?

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

---
layout: image-left
image: /beyond_vibe_coding.jpg
---

# Vibe Coding: AI, Our new partner

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

<div class="w-60 relative">
  <div class="relative w-400 h-40">
    <img
      v-motion
      :initial="{ x: 800, y: -100, scale: 1.5, rotate: -50 }"
      :enter="final"
      class="absolute inset-0"
      src="/addy_osmany.jpeg"
      alt=""
    />
  </div>

  <div
    class="text-5xl absolute top-14 left-40 text-[#2B90B6] -z-1"
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 80, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
    Addy Osmany
  </div>
</div>

<!-- vue script setup scripts can be directly used in markdown, and will only affects current page -->
<script setup lang="ts">
const final = {
  x: 0,
  y: 0,
  rotate: 0,
  scale: 1,
  transition: {
    type: 'spring',
    damping: 10,
    stiffness: 20,
    mass: 2
  }
}
</script>

<div
  v-motion
  :initial="{ x:35, y: 30, opacity: 0}"
  :enter="{ y: 60, opacity: 1, transition: { delay: 3500 } }">

[Learn more](https://addyosmani.com/)

</div>

---
layout: two-cols
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Content

- What is <b>Vibe Coding</b> or AI programming and don't 💀 in the attempt to use it
- How the role of a <b>Junior Software Engineer</b> has changed with AI, how can we adapt to it and learn about it 🤓
- 📚 How to start using the <b>proper tools</b> that will maximize the way you code and learn
- Start building from scratch a <b>AI developed system</b> like a PRO 🥇
- See and understand <b>real examples</b> about how this actually work on a company 🔍


::right::


<div
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 110, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
    <img
      width="150px"
      src="/cursor.png"
      alt=""
    />
</div>

<div
    v-motion
    :initial="{ x: 350, opacity: 0}"
    :enter="{ x: 200, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
    <img
      width="150px"
      src="/git.png"
      alt=""
    />
</div>

<div
    v-motion
    :initial="{ x: -80, y: 50, opacity: 0}"
    :enter="{ x: 110, y: 50, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
    <img
      width="150px"
      src="/ia_comparison.png"
      alt=""
    />
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>


---
layout: section
transition: zoom
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# How are we going to <b>evaluate</b> the subject?

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

---
layout: section
transition: slide-up
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>


<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

# How the grade is calculated?

| Competencia | Evaluación | Distribución | Porcentaje |
| --- | --- | --- | --- |
| Técnica | 1ª Evaluación | Primera entrega proyecto (Escrita) | 10% |
|  |  | Segunda entrega proyecto | 20% |
| Técnica | 2ª Evaluación | Entrega final y presentación | 40% |
| Genérica | Autonomía | Trabajo en clase | 10% |
| Genérica | Expresión escrita / Inglés | Trabajo en clase | 10% |
| Genérica | Puntualidad | - | 10% |

---
layout: section
transition: fade
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# What's the <b>project</b> about?

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

---
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

# AI Project

We will need to implement a new service, app or whatever thing that you have in mind. Sky is the limit 🚀

## Requirements:
- 🧑‍💻 **Don't use a known technology** - For example, we can't use ☕, but any other is permitted
- 🤖 **Unlimited use of AI** - You can use Cursor, ChatGPT or whatever, but <b> you must be able to
understand it!</b>

## Submissions:
 1. <b>First submission (November)</b>: 🗎 Text document describing in detail the idea to implement and how.
 2. <b>Second submission (Late-December)</b>: Repository overview 
 3. <b>Final submission </b>: Final presentation (repository and face-to-face presentation)

<br>
<br>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<style>
h1 {
  background-color: #2B90B6;
  background-image: linear-gradient(45deg, #4EC5D4 10%, #146b8c 20%);
  background-size: 100%;
  -webkit-background-clip: text;
  -moz-background-clip: text;
  -webkit-text-fill-color: transparent;
  -moz-text-fill-color: transparent;
}
</style>


---
class: px-20
transition: fade
---

# Additional activities
<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>


<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>
<div grid="~ cols-2 gap-2" m="t-2">

<div>
  <h2>Presentations</h2>
  <br>
  <iframe width="430" height="360" 
    src="https://www.youtube.com/embed/KKNCiRWd_j0?si=rxp39Iv2szMAUsKL&amp;start=534&amp;autoplay=1&amp;mute=1" 
    title="YouTube video player" 
    frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
    referrerpolicy="strict-origin-when-cross-origin" 
    allowfullscreen>
  </iframe>
</div>

<div>
  <h2>Real world examples</h2>
  <br>
  <iframe width="430" height="360" 
    src="https://www.youtube.com/embed/fQCqGVmvFlY?si=gSGxgrIuFb3BGuOq&amp;start=334&amp;autoplay=1&amp;mute=1" 
    title="YouTube video player" 
    frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
    referrerpolicy="strict-origin-when-cross-origin" 
    allowfullscreen>
  </iframe>
</div>
</div>

---
class: px-100, text-center
transition: fade
layout: image
image: /centro_arangoya.jpg
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>


<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<h1>
  Questions?
</h1>

<style>
h1 {
  color: white;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-size: 4rem;
}
</style>