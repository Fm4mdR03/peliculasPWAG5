<?php

/** @var yii\web\View $this */

$this->title = 'My Yii Application';
use app\models\Pelicula;
?>
<div class="site-index">

    <div class="section-1 jumbotron text-center mt-5 mb-5">
        <div class="section-1_container container">
            <div>
                <h1 class="section-1_container__titulo display-4">Renta de Películas</h1>
                <h1 class="section-1_container__titulo display-4">CopyFlix</h1>
                <p class="lead">Las mejores películas a un clic de distancia.</p>
            </div>
        </div>
    </div>

    <div class="jumbotron text-center bg-transparent mt-5 mb-5">
        <h1 class="display-4" id="asd">BIENVENIDOS!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="https://www.yiiframework.com">Get started with Yii</a></p>
    </div>

    <div class="body-content">
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





</div>