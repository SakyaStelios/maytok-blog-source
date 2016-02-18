---
layout:     base-post
title:      "Apache2 como proxy para Tomcat con ajp"
subtitle:   "Una manera fàcil de integrar los dos servidores"
date:       2015-12-01 12:00:00
author:     "Giancarlo Ventura"
header-img: "https://nodesource.com/assets/blog-bg.0dc2e3.jpg"
category:   "Servidores"
---

<p>La idea es simple, las aplicaciones Tomcat corren por lo general en el puerto 8080, y seria mas elegante si pudiéramos servir esta app desde apache por el puerto 80. Vamos a ello:</p>

<p>Creamos un nuevo Virtual Host</p>

<script src="https://gist.github.com/SakyaStelios/6843b0357b553cb6016a.js"></script>

<p>Eso es todo</p>
