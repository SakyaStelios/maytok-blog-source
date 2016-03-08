---
layout:     post-grid
title:      "Habilitar WebGL en Ionic con Crosswalk"
date       : 2016-02-19 15:23:34
categories : Mobile
author     : "Giancarlo Ventura"
tags       : [ionic, crosswalk]   
---

En Android, puede ser complicado mostrar proyectos basados en WebGL si se usa Ionic Framework. 
Ionic se basa en Cordova, que permite desarrollar aplicaciones basadas en un WebView.

¿Cuál es el problema? WebGL no es soportado en WebViews antes de Android Lollipop.
En KitKat, Android cambió a Chromium como la implementación de  WebView nativa, 
pero está bloqueada a Chromium 33, que no tiene WebGL. En Lollipop, sin embargo, puedes habilitarlo
a través de una actualización vía Play Store, para habilitar el soporte. (fuente: https://developer.chrome.com/multidevice/webview/overview)

**¿Wow, wow, y para las otras versiones de Android? ¿Imposible?**

Crosswalk entra al rescate.

**¿Cross... qué?**

Uno de los problemas que acarrea el desarrollo de aplicaciones HTML5 híbridas es
que ante la variedad de plataformas móviles (y versiones dentro de cada una), 
no tienes seguridad de qué APIs de Javascript y soporte a capacidades de CSS 
estarán disponibles en el dispositivo donde se ejecutará tu app. El proyecto 
Crosswalk busca atacar este problema. Crosswalk es un runtime HTML que incluyes 
en tu app, de manera que tu app funcione sobre éste y se comporta de la misma forma
en cualquier dispositivo. Crosswalk es open source, así que no solo es gratuito
sino que también puedes modificarlo.

**¿Y está en Ionic?**

¡Sí en Android! solo tienes que ejecutar:

{% highlight cli %}
ionic browser add crosswalk
{% endhighlight %}

Y Crosswalk estará habilitado en tu proyecto. Ahora, solo te falta añadir unas líneas más:
Y es que por defecto, Chromium tiene una lista negra de GPU's, en donde no permite ejecutar
WebGL. Puedes dejarla como está, pero no funcionará en muchos dispositivos. Así que en el archivo 
`config.xml` solo tienes que agregar el siguiente flag: `--ignore-gpu-blacklist`

{% highlight xml %}
<preference name="xwalkCommandLine" value="--disable-pull-to-refresh-effect --ignore-gpu-blacklist" />
{% endhighlight %}

¿Sencillo, verdad? Ahora WebGL funciona en tu proyecto.
