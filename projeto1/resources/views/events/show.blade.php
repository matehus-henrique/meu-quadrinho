@extends('layouts.main')
<link rel="stylesheet" href="/css/styles.css">

@section('title', $event->title)

@section('content')

<div class=" col-md-10 offset-md-1">
    <div class="row">
        <div id="image-container" class=" col-md-6">
            <img src="/img/events/{{ $event ->image}}" class="img-fluid" alt="{{$event -> title}}">
        </div>
        <div id="image-container" class=" col-md-6">
            <h1>{{$event->title}}</h1>
            <br>
            <h3>Descrição</h3>
           <p>{{$event->description}}</p>
           <br>
           <h3>Preço</h3>
           <p>R$:{{$event->valor}},99</p>
           <a href="#" class="btn btn-primary" id="event-submit">Comprar</a>
        </div>

    </div>

</div>

@endsection
