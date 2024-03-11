<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoriaController extends Controller
{
    public function categorias(){
        $category = Category::with("workouts")->get();
        return response()->json($category);
    }


    public function createCategoria(Request $request){

        $categoria = new Category;
        $categoria->categoria = $request->categoria;
        $categoria->descripcion = $request->descripcion;
        $categoria->save();
        $data = [
            "message" => "creado exitosamente",
            "categoria" => $categoria,
        ];
        return response()->json($data);

    }

    public function categoriasEjercicios(Category $category){
        return response()->json($category->workouts);
    }

    public function actualizarCategoria(Request $request, Category $category){

        $category->categoria = $request->categoria;
        $category->descripcion = $request->descripcion;
        $category->update();

        $data = [
            "message" => "categoria actualizada correctamente",
            "categoria" => $category,
        ];
        return response()->json($data);
    }

    public function eliminarCategoria(Category $category){
        $category->delete();
        $data = [
            "message" => "eliminado correctamente"
        ];
        return response()->json($data);
    }
}
