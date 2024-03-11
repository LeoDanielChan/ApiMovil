<?php

use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\EjercicioController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// NOTA:
// Las unicas rutas que se utilizara son alguna de tipo get, las que te marcare con comentarios

Route::controller(EjercicioController::class)->group(function(){
    Route::get('/ejercicios','ejercicios'); // traer todos los ejercicios con sus imagenes
    Route::get('/ejercicio/{workout}','ejercicio'); //la utilizaremos si creamos un buscador
    Route::post("/nuevoEjer","crearEjercicio");
    Route::post("/ejerImge","ejercicioImagen");
    Route::get("/ejerImge/{id}","buscarImagenEjercicio"); //traer un ejercicio especifico con su imagen
    Route::post("/imagen","image");
    Route::post("/agg/img","agregarImagen");
});


Route::controller(CategoriaController::class)->group(function(){
    Route::get("/categorias","categorias"); //traer todas las categorias y los ejercicios que son de se tipo
    Route::get("/categoria/{category}","categoria");
    Route::post("/nuevaCat","createCategoria");
    Route::put("/categoria/{category}","actualizarCategoria");
    Route::delete("/categoria/{category}","eliminarCategoria");
});

