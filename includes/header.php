<?php $page = basename($_SERVER['PHP_SELF']); ?>

<header class="header">
  <div class="header-droit">
    <a href="index.php">
      <img src="../img/logo.jpg" alt="Logo" class="logo">
    </a>
  </div>

  <nav class="menu">
    <a href="../pages/stagecarte.php" class="<?= ($page == 'stagecarte.php') ? 'actif' : '' ?>">Stage</a>
    <a href="../pages/cours.php" class="<?= ($page == 'cours.php') ? 'actif' : '' ?>">Cours</a>
    <a href="../pages/association.php" class="<?= ($page == 'association.php') ? 'actif' : '' ?>">Association</a>
    <a href="../pages/histoire.php" class="<?= ($page == 'histoire.php') ? 'actif' : '' ?>">Histoire</a>
  </nav>

  <div class="header-droit">
    <span class="phone">06-10-90-24-32</span>
    <a href="contact.php" class="contact <?= ($page == 'contact.php') ? 'actif' : '' ?>">Contact</a>
  </div>
</header>