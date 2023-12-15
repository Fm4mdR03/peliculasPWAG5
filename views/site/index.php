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

            foreach ($peliculasAlquiladas as $pelicula) : ?>
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

    <div class="section-5 jumbotron text-center mt-5 mb-5">
        <div id="carouselTestimonios" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselTestimonios" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselTestimonios" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselTestimonios" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselTestimonios" data-bs-slide-to="3" aria-label="Slide 4"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../web/images/usuario1.png" class="rounded-circle" width="100" height="100">
                    <p class="lead">"Me encanta esta página, puedo ver las películas que quiera."</p>
                    <h6 class="fw-bold">- Juan Pérez</h6>
                </div>
                <div class="carousel-item">
                    <img src="../web/images/usuario2.png" class="rounded-circle" width="100" height="100">
                    <p class="lead">"Es una página muy buena, puedo ver las películas que quiera."</p>
                    <h6 class="fw-bold">- María Pérez</h6>
                </div>
                <div class="carousel-item">
                    <img src="../web/images/usuario3.png" class="rounded-circle" width="100" height="100">
                    <p class="lead">"Me encanta esta página, puedo ver las películas que quiera."</p>
                    <h6 class="fw-bold">- José Pérez</h6>
                </div>
                <div class="carousel-item">
                    <img src="../web/images/usuario4.png" class="rounded-circle" width="100" height="100">
                    <p class="lead">"Es una página muy buena, puedo ver las películas que quiera."</p>
                    <h6 class="fw-bold">- Juanita Pérez</h6>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselTestimonios" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselTestimonios" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>
        </div>
    </div>

    <hr>

    <div class="section-6 jumbotron mt-5 mb-5">
        <div class="section-6_container container">
            <div class="table-responsive">
                <table class="table table-borderless ">
                    <tbody>
                        <tr>
                            <td>
                                <h1 class="display-4 fw-bold">Nuestras oficinas</h1>
                                <p class="lead">Visítanos en nuestras oficinas.</p>
                                <p class="lead">Calle 123, frente a la ESPE Campus Belisario Quevedo.</p>
                            </td>
                            <td rowspan="2">
                                <img src="../web/images/fachada.jpg" class="img-fluid rounded mx-auto d-block" alt="Fachada de nuestras oficinas">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.2120238453513!2d-78.58867262527593!3d-0.9988702989915021!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91d4639e3fb9755f%3A0x22fe7f63301b5fee!2sCanchas%20deportivas%20de%20ecuavoley%20%22Don%20Julio%22!5e0!3m2!1ses-419!2sec!4v1702600506230!5m2!1ses-419!2sec" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </td>
                        </tr>
                    </tbody>

                </table>
            </div>
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