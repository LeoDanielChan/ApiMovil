<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Image;
use App\Models\Workout;
use Illuminate\Http\Request;
use Cloudinary\Api\Upload\UploadApi;
use Cloudinary\Configuration\Configuration;

class EjercicioController extends Controller
{
    public function ejercicios(){
        $ejercicios = Workout::with("images")->get();

        return response()->json($ejercicios);
    }

    public function ejercicio(Workout $workout){
        return response()->json($workout->category); 
    }

    public function crearEjercicio(Request $request,Workout $workout){

        $workout->nombre = $request->nombre;
        $workout->descripcion = $request->descripcion;
        $workout->category_id = $request->category_id;
        $workout->save();

        $data = [
            "message"=>"ejercicio guardado exitosamente",
            "ejercicio" => $workout,
        ];
        return response()->json($data);
        // $workout->category()->associate($request->category);
    }

    public function ejercicioImagen(Request $request){
        $workout= Workout::find($request->workout_id);
        $workout->images()->attach($request->image_id);
        $data = [
            "message" => "se ha agregado la imagen correctamente",
            "ejecicio" => $workout,
        ];
        return response()->json($data);
    }


    public function image(Request $request,Image $image){
        // $file = $request->file("imagen");            
    Configuration::instance([
        'cloud' => [
            'cloud_name' => 'dlxpr11ok', 
            'api_key' => '684419351949932', 
            'api_secret' => 'P2F1tpvLqz6681avsE0oxPQeBV0'],
        'url' => [
            'secure' => true]]);
    
        $cloudinary = new UploadApi();
        $result=$cloudinary->upload($request->url,["public_id" => $request->public_id,"folder"=>"Ejercicios"]);
        $imagenurl = $result["secure_url"];
        $publicId = $result["public_id"];

        $image->ulr = $imagenurl;
        $image->public_id = $publicId;
        $image->save();

        $data =[
            "message" => "imagen guradado exitosamente",
            "data" => $image
        ];
        return response()->json($data);

    }

    public function agregarImagen(Request $request,Image $image){
        $image->ulr = $request->url;
        $image->public_id = $request->public_id;
        $image->save();
        return response()->json($image);
}

    public function buscarImagenEjercicio($id){
        // $workout = Workout::find($id)->images()->get();

        $workout= Workout::with("images")->find($id);
        return response()->json($workout);
    }

}
