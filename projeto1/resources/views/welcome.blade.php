
@extends('layouts.main')

@section('title', 'HDC')

@section('content')


<div id="search-container" class="col-md-12">
    <h1>busque o quadrinho</h1>
    <form action="" method="GET">
        <input type="text" id="search" name="search" class="form-control" placeholder="Procurar..">
    </form>

</div>
<div id="events-container" class="col-md-12">
    @if ($search)
    <h6>Buscando por: {{$search}}</h6>
    @else
    <h4>Quadrinhos em destaque</h4>

    @endif
    <p class="subtitle">veja os Quadrinhos</p>
    <div id ="cards-container" class="row">
        @foreach ($events as $event )
          <div class="card col-md-3">
              <img src="/img/events/{{ $event->image}}" alt="{{$event->title}}">
              <div class="card-body">
                  <h5 class="card-title">{{$event->title}}</h5>
                  <h5 class="card-title">R$:{{$event->valor}},99</h5>
                  <a href="/events/{{ $event->id}}" class="btn btn-primary">saber mais</a>
              </div>

          </div>

        @endforeach

        @if (count ($events) == 0 && $search )
        <p>Não foi possivel encontrar nenhum evento com {{ $search}}" <a href="/">Ver Quadrinhos</a></p>
          @elseif(count($events) == 0)
          <p>Não há esse quadrinho.</p>
        @endif

    </div>

</div>








<!--<img src="/img/banner2.jpg" alt="Banner">-->
@endsection

