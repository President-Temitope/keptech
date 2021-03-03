<?php

namespace App\Http\Controllers;

use App\Internship;
use App\Service;
use App\Solution;
use App\Team;
use TCG\Voyager\Models\Post;

class PagesController extends Controller
{
    public function index()
    {
        $services = Service::all(['image', 'title']);
        $teams = Team::all();
        return view('index')->with('services', $services)->with('teams', $teams);
    }

    public function about()
    {
        $posts = Post::orderBy('created_at', 'DESC')->take(3)->get(['title', 'image', 'body']);
        return view('about')->with('posts', $posts);
    }

    public function blog()
    {
        $posts = Post::orderBy('created_at', 'DESC')->simplePaginate(12);
        return view('blog')->with('posts', $posts);
    }

    public function careers()
    {
        return view('careers');
    }

    public function contact()
    {
        return view('contact');
    }

    public function internship()
    {
        $internships = Internship::all();
        return view('internship')->with('internships', $internships);

    }

    public function services()
    {
        $services = Service::all();
        return view('services')->with('services', $services);

    }

    public function solutions()
    {
        $solutions = Solution::all();
        return view('solutions')->with('solutions', $solutions);
    }

    public function blogView($id)
    {
        $post = Post::find($id);
        return view('blogView')->with('post', $post);
    }
}
