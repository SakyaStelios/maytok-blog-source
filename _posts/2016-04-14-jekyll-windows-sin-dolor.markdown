---
layout     : post-grid
title      : "Instalar Jekyll en Windows sin dolor"
date       : 2016-04-14 15:04:34
categories : Jekyll
author     : "Giancarlo Ventura"
tags       : [jekyll, ruby, windows] 
---

Instalar Jekyll en Windows por vez primera puede ser un auténtico dolor... en la parte del cuerpo que quieras.
Afortunadamente, la cantidad de pasos puede reducirse 
significativamente y podemos comenzar a crear nuestros sitios estáticos sin seguir un camino
complicado y lleno de espinos. Nuestra ruta adornada de flores será:

* Instalar Chocolatey
* Instalar Ruby (a través de Chocolatey)
* Instalar Jekyll

**¿Choco qué?**

[Chocolatey](https://chocolatey.org/) es un excelente gestor de paquetes al estilo Linux, solo que para Windows.
¡Sí, puedes usar la consola de comandos de Windows para instalar programas! En el día de creación
de este post, hay casi 3800 paquetes que [puedes instalar](https://chocolatey.org/packages).

<p id="wokili"> Espera... ¿Quién eres tú?</p>

**Soy una línea en negrita que simula una voz en tu cabeza. ¿De veras crees**
**que el blog conseguirá visitas inventándome?**

No lo sé, igual podemos eliminarte después.

**¿Ehmm, podemos comenzar ya?**

Bien, vamos a instalarlo. Abre una consola con permisos administrativos y escribe:

<pre>
<code class="language-powershell">
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
</code>
</pre>

Cuando se instale, necesitarás cerrar la consola y abrir una nueva (También con permisos administrativos).

**¿Y ahora?**

<pre>
<code class="language-bash">
choco install ruby -y
</code>
</pre>

**¿Luego? Estoy impaciente**

Cierras y abres una nueva consola (Tranquilo...)

<pre>
<code class="language-bash">
gem install jekyll
</code>
</pre>

Y eso es todo lo que se necesita. Ahora puedes comenzar a crear sitios estáticos
fácil y sin dolor. 

<pre>
<code class="language-bash">
jekyll new mysite
cd mysite
jekyll serve
</code>
</pre>

A propósito, este sitio está soportado en Jekyll y albergado
en Github. Si quieres, puedes echar un vistazo al [repositorio](https://github.com/KhanMaytok/maytok-blog-source). 
(Siento el código desordenado, prometo echarle una revisión después)

El template está basado por completo en un [artículo](http://tympanus.net/codrops/2015/04/15/grid-item-animation-layout/) de [Mary Lou](http://tympanus.net/codrops/author/crnacura/) 
para [Codrops](http://tympanus.net/codrops).
