<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Event;

class EventController extends Controller

/**
 * a public function index, uma função para busca dos produtos do site
 */
{
    public function index(){

        $search = request('search');

        if($search){

            $events = Event::where([
                ['title', 'like', '%'.$search.'%']
            ])->get();

        } else {
            $events = Event::all();

        }

        return view('welcome',['events'=> $events, 'search' => $search]);


    }

    /**
     * public function vende, é a conexão da página com o banco de dados
     */

    public function vender(){
        return view('events.vender');

    }

    public function store(Request $request){
        $event = new Event;

        $event ->title = $request->title;
        $event ->description = $request->description;
        $event ->valor = $request->valor;


        /**
         * imagem Upload. essa parte a baixo, são metodos para fazer um Upload da imagem e adacionar página vender.
         * a
         */

        //imagem Upload


        if($request->hasFile('image') && $request->file('image')->isValid()){
            $requestImage = $request->image;

            $extension = $requestImage->extension();

            $imageName =md5($requestImage->getClientOriginalName() . strtotime("now") . "." . $extension);

            $requestImage->move(public_path('img/events'), $imageName);

            $event->image = $imageName;
        }

        $event->save();
        return redirect('/')->with('msg', 'quadrinho adicionado com secesso!!');
    }

    public function show($id){

        $event = Event::findOrFail($id);
        return view('events.show', ['event' => $event]);


    }
}


