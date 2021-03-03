@extends('layouts.app',[
    $elementActive ='blog'
])
@section('content')
    <div class="bg-light border rounded border-light hero-technology jumbotron py-5 px-4"
         style="width: 100%;max-width: 100%;padding-top: 0;margin-top: 0;height: 300px;background: url(&quot;assets/img/notepad-3299127_1920-1536x1229.jpg&quot;) center;background-size: cover;">
        <h1 class="hero-title" style="margin-top: 50px;">Blog</h1>
    </div>
    <div>
        <div class="container">

            {{-- <div class="cust_bloglistintro">
                 <p style="margin-left:34px;color:rgba(255,255,255,0.5);font-size:14px;"></p>
             </div>--}}
            <div class="row">
                @if(count($posts) >0)
                    @foreach($posts as $post)
                        <div class="col-md-4 cust_blogteaser" style="padding-bottom:20px;margin-bottom:32px;"><a
                                href="#"><img
                                    class="img-fluid" style="height:auto;" src="{{Voyager::image($post->image)}}"></a>
                            <h3 style="text-align:left;margin-top:20px;font-family:'Open Sans', sans-serif;font-size:18px;margin-right:0;margin-left:24px;line-height:34px;letter-spacing:0px;font-style:normal;font-weight:bold;">
                                {{$post->title}}<br></h3>
                            <p class="text-secondary"
                               style="text-align:left;font-size:14px;font-family:'Open Sans', sans-serif;line-height:22px;color:rgb(9,9,10);margin-left:24px;">
                                {!! substr($post->body,5) !!} </p><a class="h4" href="/blog/{{$post->id}}"><i
                                    class="fa fa-arrow-circle-right" style="margin-left:23px;"></i></a>
                        </div>
                    @endforeach
                    <div align = "right">
                        {{$posts->links()}}
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
