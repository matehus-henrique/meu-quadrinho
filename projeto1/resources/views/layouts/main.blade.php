<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>@yield('title ')</title>

        <!-- Fonte do Google-->
        <link href="https://fonts.googleapis.com/css2?family=Roboto" rel="stylesheet">
        <!-- CSS Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- CSS da Aplicação-->

        <link rel="stylesheet" href="/css/styles.css">


    </head>
    <body >

        <header>
            <nav class="navbar navbar-expand-lg navbar-light">
                 <div class="collapse navbar-collapse" id="navbar">
                     <a href="/" class="navbar-brand">
                        <img src="/img/mEuQuadrinho.png" alt="">
                    </a>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="/" class="nav-link">Home</a>
                        </li>

                        <li class="nav-item">
                            <a href="/events/vender" class="nav-link">vender Quadrinhos</a>
                        </li>

                    </ul>
                 </div>
            </nav>
        </header>
      <main>
        <div class="container-fluid">
            <div class="row">
                @if (session('msg'))
                    <p class="msg">{{session('msg')}} </p>
                @endif

                @yield('content')
            </div>
        </div>
      </main>
        <footer>
            <p> Meu Quadrinhos &copy; 2022</p>
        </footer>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>


    <script>
        const timesStamp = '';
        const apiKey = '';
        const md5 = '';
    </script>
</html>

