---
layout: post-grid
title:  "Instalar Jekyll en Windows sin dolor"
date:   2016-03-23 15:23:34
categories: Jekyll
author     : "Giancarlo Ventura"
tags       : [jekyll, ruby, windows] 
---

Instalar Jekyll en Windows puede ser un auténtico dolor. Afortunadamente, la cantidad de pasos puede reducirse 
significativamente y podemos comenzar a crear nuestros sitios estáticos sin seguir un camino
complicado y lleno de espinos. Nuestra ruta adornada de flores será:

* Instalar Chocolatey
* Instalar Ruby (a través de Chocolatey)
* Instalar Jekyll

**¿Choco qué?**

Chocolatey no es más que un gestor de paquetes al estilo Linux, solo que para Windows.
¡Sí, puedes usar la consola de comandos de Windows para instalar programas!

Para comenzar a usarlo, abre una consola con permisos administrativos y escribe:

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
fácil y sin dolor

<pre>
<code class="language-bash">
jekyll new mysite
cd mysite
jekyll serve
</code>
</pre>
