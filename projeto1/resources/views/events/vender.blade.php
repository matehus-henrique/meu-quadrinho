@extends('layouts.main')
<link rel="stylesheet" href="/css/styles.css">

@section('title', 'vender')

@section('content')

<div id="avent-create-container" class="col-md-6 offset-md-3">
    <h1>vender seu quadrinho</h1>

    <form action="/events" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="image">imagem</label>
            <input type="file" id="image" name="image" class="from-control-file">
        </div>
        <div class="form-group">
            <label for="title">Nome</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="nome do quadrinho">
        </div>
        <div class="form-group">
            <label for="description">descrição</label>
            <textarea name="description" id="description" class="form-control" placeholder="descrição"></textarea>
        </div>

        <div class="form-group">
            <label for="valor">valor</label>
            <input type="valor" class="form-control" id="valor" name="valor" placeholder="valor">
        </div>

        <input type="submit" class="btn btn-primary " value="Enviar">
    </form>

</div>

@endsection
