@extends('layouts.app',[
    $elementActive ='blog'
])
@section('content')
    <div class="bg-light border rounded border-light hero-technology jumbotron py-5 px-4"
         style="width: 100%;max-width: 100%;padding-top: 0;margin-top: 0;height: 300px;background: url(&quot;assets/img/notepad-3299127_1920-1536x1229.jpg&quot;) center;background-size: cover;">
        <h1 class="hero-title" style="margin-top: 50px;">Blog</h1>
    </div>
    <section class="article-clean">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-xl-8 offset-lg-1 offset-xl-2">
                    <div class="intro"><img class="img-fluid" src="{{Voyager::image($post->image)}}">
                        <h1 class="text-center">{{$post->title}}</h1>
                        <p class="text-center"><span class="by">by</span> <a
                                href="#">{{$post->authorId()->name}}</a><span
                                class="date">{{$post->created_at->diffForHumans()}} </span></p>
                    </div>
                    <div class="text">
                        <p style="color: #000;">{!! $post->body !!}</p>

                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
