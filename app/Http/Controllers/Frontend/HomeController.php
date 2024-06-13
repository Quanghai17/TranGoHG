<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;

class HomeController extends Controller
{
    public function index()
    {
  
      $banners = \App\Banner::limit(3)->get();
      $about = Page::where('slug', 'tran-go-hoang-gia')->first();
      $products = \App\Product::limit(5)->get();
      $services = \App\Staticdata::limit(5)->get();
      $posts = Post::orderBy('created_at', 'desc')->limit(6)->get();
      $restaurants = \App\Project::orderBy('created_at', 'desc')->limit(4)->get();
  
      return view('frontend.homepage.index', compact('banners','about','products','services','restaurants','posts'));
      
    }
}
