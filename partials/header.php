<?php
$current = basename($_SERVER['PHP_SELF']);
?>
<header class="site-header">
  <div class="nav-wrap">
    <a class="brand" href="index.php">CONEJO NEGRO CAFÉ</a>
    <nav class="nav">
      <a href="index.php" class="<?= $current === 'index.php' ? 'active' : '' ?>">Inicio</a>
      <a href="espacio.php" class="<?= $current === 'espacio.php' ? 'active' : '' ?>">Espacio</a>
      <a href="amenidades.php" class="<?= $current === 'amenidades.php' ? 'active' : '' ?>">Amenidades</a>
      <a href="precios.php" class="<?= $current === 'precios.php' ? 'active' : '' ?>">Precios</a>
      <a href="galeria.php" class="<?= $current === 'galeria.php' ? 'active' : '' ?>">Galería</a>
      <a href="ubicacion.php" class="<?= $current === 'ubicacion.php' ? 'active' : '' ?>">Ubicación</a>
      <a href="contacto.php" class="<?= $current === 'contacto.php' ? 'active' : '' ?>">Contacto</a>
    </nav>
  </div>
</header>