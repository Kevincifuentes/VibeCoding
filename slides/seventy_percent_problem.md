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
  The 70% problem
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

The 70% problem 

<img src="/centro-arangoya.jpg" class="w-40 mx-auto mt-4 rounded-lg shadow-lg" />

<div class="abs-br m-6 text-xl">
  <a href="https://github.com/Kevincifuentes/VibeCoding" target="_blank" class="slidev-icon-btn">
    <carbon:logo-github />
  </a>
</div>

---
transition: fade-out
layout: center
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# The 70% percent (and then rest 30%) problem 

<div class="flex justify-center items-center w-full max-w-xl mx-auto">
  <Tweet id='1863058206752379255' scale="0.8" hideCard={false} hideThread={false} />
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- 

La IA ha hecho que el problem inicial del 100% (el humano tiene que hacer todo el trabajo, programarlo y completarlo) se convierta en un problema de 70-30, es decir, la IA es capaz de completar el 70% del trabajo, pero carece de una serie de aspectos para cubrir el 30%:

- Desconoce la complejidad asociada a sus cambios (a qué otros sistemas puede afectar, por ejemplo)
- Carece del conocimiento de negocio para entender si su cambio encaja con los flujos de la empresa (salvo que se lo demos por adelantado)
- Desconoce los "corner cases", la arquitectura que se utiliza o asegura mantenibilidad.

Hay que tener claro que la IA no entiende realmente el problema, solamente es capaz de buscar patrones comunes ya probados (en Internet, conocidos) y hacer un remix de los mismos buscando conexiones. 

Es por eso, que en realidad, viene a reemplazar el proceso más automatizado y repetitivo, pero el 30% sigue siendo trabajo humano.

-->

---
transition: slide-up
layout: section
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# AI is a powerful tool, but it's not a magic bullet. <b> Human judgment and good software engineering practises</b> are essential

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!-- 

De manera general, la IA es una herramienta super valiosa, pero sigue requiriendo una intervención humana, la cuál es vital para que todo sistema sea realmente éxitoso.

Nos tenemos que centrar en ese 30%.

-->

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

# How developers use AI: two patterns

<div grid="~ cols-2 gap-2" m="t-2">

  <div>
    <h2>Bootstrappers</h2>
    <br>
    <div
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 110, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
      <img
        width="100px"
        src="/bolt.png"
        alt=""
      />
    </div>
    <div
      v-motion
      :initial="{ x: 380, y: 10, opacity: 0}"
      :enter="{ x: 210, y: 10, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
      <img
        width="100px"
        src="/v0.png"
        alt=""
      />
    </div>
    <div
    v-motion
    :initial="{ x: -80, y: 30, opacity: 0}"
    :enter="{ x: 110, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
      <img
        width="100px"
        src="/lovable.png"
        alt=""
      />
    </div>
  </div>

  <div>
    <h2>Iterators</h2>
    <br>
    <div
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 110, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
      <img
        width="100px"
        src="/cursor.png"
        alt=""
      />
    </div>
    <div
      v-motion
      :initial="{ x: 380, y: 10, opacity: 0}"
      :enter="{ x: 210, y: 10, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
      <img
        width="100px"
        src="/windsurf.png"
        alt=""
      />
    </div>
    <div
    v-motion
    :initial="{ x: -80, opacity: 0}"
    :enter="{ x: 110, opacity: 1, transition: { delay: 2000, duration: 1000 } }">
      <img
        width="100px"
        src="/copilot.png"
        alt=""
      />
    </div>
  </div>
</div>

<div
  v-motion
  :initial="{ x: 500, opacity: 0 }"
  :enter="{ x: -180, opacity: 1, transition: { delay: 10000, duration: 1000 } }"
  class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-4xl font-bold text-white bg-black bg-opacity-50 p-4 rounded">
  What is the take?
</div>

<!--
 Hay dos tipos de maneras en cómo los desarrolladores utilizan la IA:
 * Iniciadores: crean desde 0 un sistema con un diseño o concepto prestablecido, generalmente usando herramientas no-code o screenshot-to-code (Bolt, V0, etc)
 * Iteradores: usan herramientas con IA en su trabajo diario, potenciando su eficiencia (Cursor, Github Copilot, Cursor, etc). Recomendaciones, refactoring, generando tests (usando la IA como un "pair programmer")

Entre estos dos modelos hay una diferencia crucial: los iniciadores, generalmente, no tienen los suficientes conocimientos para diferenciar si lo generado por la IA está bien o no, pero los iteradores en cambio, revisan, corrigen y mejoran lo que la IA les presenta, aplicando años de experiencia y aumentando la potencia de la IA.

-->

---
transition: fade
layout: section
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Enhancing that 70%: Common Junior <b>failure patterns</b>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--
 A continuación vamos a ver una serie de patrones asociados a trabajar con la IA y que realmente son errores, lo que hace el proceso se eternice y se pierda la mejora de eficiencia. ¿Cómo usáis vosotros la IA?
-->

---
transition: fade
layout: full
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Common failure patterns: <b>Two steps back problem</b>

<div class="flex justify-center items-center w-full h-4/5">
```mermaid {scale: 0.65}
graph TD
    A["Try to fix a small bug 🐛"] --> B["AI suggests a change<br/>that seems reasonable 🤖"]
    B --> C["This creates two more<br/>problems ↗️➡️↘️"]
    C --> D["You ask AI to fix new<br/>issues 👤"]
    D --> B["AI suggests a change<br/>that seems reasonable 🤖"]
```
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--

Este patrón es común especialmente en personas que utilizan la IA para crear algo pero no tienen el conocimiento suficiente para entender lo que están creando. También llamado Whack-a-mole. Se acepta una solución y esta solución genera n problemas y, por tanto, n soluciones nuevas que potencialmente generarán n problemas más.

Es la diferencia entre un programador Junior y uno Senior, la "paradoja del conocimiento". Mientras que un desarrollador Senior utiliza la IA para acelerar su proceso de un conocimiento/experiencia que ya posee, el junior la utiliza para aprender qué hacer. Por eso, es importante que no solamente useis la IA para que "os haga el trabajo" si no que os ayudéis de la IA para entender el "por qué se hace así el trabajo".

-->

---
transition: fade
layout: full
---

<div class="abs-tr m-6 text-xl">
  <a href="https://wwww.arangoya.org" target="_blank" class="slidev-icon-btn">
    <img src="/favicon.png">
  </a>
</div>

# Common failure patterns: <b>Demo-quality trap</b>


<div class="flex justify-center items-center w-full my-10">
  <img src="/duct_tape.jpg" class="w-1/4 rounded-lg shadow-lg" />
</div>

<div class="abs-br m-6 text-xl">
  <SlideCurrentNo />
</div>

<!--

Es un patrón cada vez más común, debido a la necesidad de presentar prototipos (MVP, Minimum Viable Product) con mayor velocidad. En esencia, hace referencia al hecho de que estos prototipos generados puede que cubran el Happy Path, es decir, el flujo normal éxitoso que hará el usuario, pero cuando empeizas a indagar y te encuentras con corner cases (casos no tan comunes) el prototipo empieza hacer aguas. Precisamente esto es la diferencia entre software que alguien ama (pongamos Google, Apple, etc) de ejemplo y software que simplemente "tolera". 

Puntos como Seguridad, rendimiento, accesibilidad son parte de los detalles y vienen de la experiencia y la empatía.

-->



