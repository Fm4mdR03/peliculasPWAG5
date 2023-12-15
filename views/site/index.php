<?php

/** @var yii\web\View $this */

$this->title = 'My Yii Application';
use app\models\Pelicula;
?>
<div class="site-index">

    <div class="section-1 jumbotron text-center mt-5 mb-5">
        <div class="section-1_container container">
            <div>
                <h1 class="section-1_container__titulo display-4 fw-bold">Renta de Películas</h1>
                <h1 class="section-1_container__titulo display-4 fw-bold">CopyFlix</h1>
                <p class="lead fw-light">Las mejores películas a un clic de distancia.</p>
                <a href="#section-2">
                    <button type="button" class="btn btn-outline-light btn-lg">Ver más</button>
                </a>
            </div>
        </div>
    </div>

    <div class="jumbotron text-center bg-transparent mt-5 mb-5" id="section-2">
        <h1 class="display-4 fw-bold" id="asd">En tendencia</h1>
        <p class="lead">Podrás visualizar nuestras películas más vistas a continuación:</p>
        <div class="row">
            <?php
            $peliculasAlquiladas = Pelicula::find()
                ->select(['pelicula.PEL_NOMBRE', 'pelicula.PEL_FECHA_ESTRENO'])
                ->addSelect(['director.DIR_NOMBRE', 'genero.GEN_NOMBRE'])
                ->leftJoin('director', 'pelicula.DIR_ID = director.DIR_ID')
                ->leftJoin('genero', 'pelicula.GEN_ID = genero.GEN_ID')
                ->joinWith('alquilers')
                ->groupBy(['pelicula.PEL_ID'])
                ->orderBy(['COUNT(alquiler.ALQ_ID)' => SORT_DESC])
                ->limit(4)
                ->asArray()  // Importante para que las relaciones se carguen correctamente en el resultado
                ->all();
            ?>

            <?php foreach ($peliculasAlquiladas as $pelicula) : ?>
                <div class="col-lg-3 mb-3">
                    <h2><?= $pelicula['PEL_NOMBRE'] ?></h2>
                    <p><strong>Director:</strong> <?= $pelicula['DIR_NOMBRE'] ?? 'N/A' ?></p>
                    <p><strong>Género:</strong> <?= $pelicula['GEN_NOMBRE'] ?? 'N/A' ?></p>
                    <p><strong>Fecha de Estreno:</strong> <?= $pelicula['PEL_FECHA_ESTRENO'] ?></p>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <hr>

    <div class="section-7 jumbotron text-center mt-5 mb-5">
        <div class="section-7_container container">
            <h1 class="fw-bold">Redes Sociales</h1>
            <p class="lead">Síguenos en nuestras redes sociales para más contenido.</p>
            <div class="row">
                <div class="col-lg-4">
                    <a href="https://www.facebook.com/" target="_blank">
                        <img src="https://img.icons8.com/color/96/000000/facebook-new.png" />
                    </a>
                    <p>Facebook</p>
                </div>
                <div class="col-lg-4">
                    <a href="https://www.instagram.com/" target="_blank">
                        <img src="https://img.icons8.com/color/96/000000/instagram-new.png" />
                    </a>
                    <p>Instagram</p>
                </div>
                <div class="col-lg-4">
                    <a href="https://www.twitter.com/" target="_blank">
                        <img src="https://img.icons8.com/color/96/000000/twitter.png" />
                    </a>
                    <p>Twitter</p>
                </div>
        </div>
    </div>

</div>