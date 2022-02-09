@extends('layouts.main')

@section('title','Produtos')


@section('content')

<h1>tela Produtos</h1>

@if($busca != '')
<p>o usuario esta buscando por {{$busca}}</p>
@endif

<a href="/">volta</a>


@endsection


