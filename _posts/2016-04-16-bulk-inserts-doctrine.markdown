---
layout:     post-grid
title:      "Importación masiva con doctrine"
date       : 2016-04-14 15:14:34
categories : PHP
author     : "Giancarlo Ventura"
tags       : [doctrine, php, mysql]   
---

Las importaciones masivas de datos, también conocidas como *bulk inserts*, son 
una manera para, en una base de datos, insertar muchas filas en una tabla con 
una sola transacción. 

Para doctrine, hay una manera fácil y genial de realizarla:

<pre>
<code class="language-php">
<?php
$batchSize = 20; //Número de filas para insertar a la vez
for ($i = 1; $i <= 10000; ++$i) {
    $user = new CmsUser;
    $user->setStatus('user');
    $user->setUsername('user' . $i);
    $user->setName('Mr.Smith-' . $i);
    $em->persist($user);
    if (($i % $batchSize) === 0) {
        $em->flush();
        $em->clear(); // Limpiamos todos los objetos de Doctrine. Importante!
    }
}
$em->flush(); //Guardamos los objetos que se han quedado afuera del batch
$em->clear();
</code>
</pre>

Si deseas conocer más, aquí puedes encontrar toda la (documentación de Doctrine)[http://doctrine-orm.readthedocs.org/en/latest/reference/batch-processing.html]
sobre el tema (en inglés). Y como siempre, gracias por leernos.
