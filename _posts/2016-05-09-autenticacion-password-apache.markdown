---
layout:     post-grid
title:      "Autenticación con password en Apache"
date       : 2016-05-09 11:14:34
categories : Servidores
author     : "Giancarlo Ventura"
tags       : [apache, password, ubuntu]   
---

A menudo, cuando levantamos un servidor, queremos restringir el acceso a partes del mismo.
Si bien hay innumerables maneras de lograrlo, una muy fácil y sencilla es 
usar una de las utilidades que Apache nos brinda. Hoy aprenderemos como.

Necesitaremos, obviamente, apache y un paquete de utilidades

<pre>
<code class="language-cli">
sudo apt-get update
sudo apt-get install apache2 apache2-utils
</code>
</pre>

Ahora vamos a crear el archivo de usuarios y claves. Si vamos a hacerlo por primera vez, 
debemos añadir el flag `-c` al comando, cosa que obviaremos si vamos a añadir otro. 

<pre>
<code class="language-cli">
sudo htpasswd -c /etc/apache2/.htpasswd waka
</code>
</pre>

La terminal te pedirá una contraseña. Recuerda que para añadir un usuario debes escribir...


<pre>
<code class="language-cli">
sudo htpasswd /etc/apache2/.htpasswd nuevo_waka_user
</code>
</pre>

**Espera, espera... ¿estamos guardando los usuarios y sus contraseñas en texto plano?**

No. Si revisamos el contenido del archivo .htpasswd, veremos algo como...

<pre>
<code class="language-cli">
waka:$apr1$lz.IfXG$tsC.vCwb49vfPF$GVsuYz.
nuevo_waka_user:$apr1$p1E9MeAf$k.eUewr.MhAE2kKGYHK.
</code>
</pre>

**¡Genial, ahora tengo todo protegido!**

Aun no... Hemos creado la llave, ahora crearemos la cerradura. 

No importa si proteges el directorio con .htaccess o un virtual host, el comando es el mismo.
Solo tienes que escribir tres líneas para estar listo:

<pre>
<code class="language-apacheconf">
&lt;Directory "/var/www/html"&gt;
    AuthType Basic
    AuthName "Restricted Content"
    AuthUserFile /etc/apache2/.htpasswd
    Require valid-user
&lt;/Directory&gt;
</code>
</pre>

En el ejemplo, estamos protegiendo el directorio `"/var/www/html"` con los usuarios que
pusimos en el archivo `.htpasswd`. Ahora, si ingresamos, veremos algo como:


