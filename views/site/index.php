<?php

/** @var yii\web\View $this */

$this->title = 'My Yii Application';
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
            <div class="col-lg-4 mb-3">
                <h2>Lista de sexos</h2>
                <?php
                foreach($listaSexo as $item) {
                    echo "<p>".$item->SEX_NOMBRE."</p>";
                }
                ?>
            </div>
            <div class="col-lg-4 mb-3">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                    et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                    aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                    dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/forum/">Yii Forum &raquo;</a>
                </p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                    et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                    aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                    dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/extensions/">Yii Extensions
                        &raquo;</a></p>
            </div>
        </div>

    </div>
</div>