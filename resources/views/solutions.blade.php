@extends('layouts.app',[
    $elementActive ='solutions'
])
@section('content')
    <div style="background: rgba(88,204,237,0.45);">
        <div class="container">
            <div class="cust_bloglistintro">
                <h2 class="text-center">Solutions</h2>
            </div>
            <div class="row">
                @if(count($solutions) > 0)
                    @foreach($solutions as $solution)
                <div class="col-md-4 cust_blogteaser"><a href="#"><img class="img-fluid" src="{{Voyager::image($solution->icon)}}"/></a>
                    <h3>{{$solution->name}}</h3>
                    <p class="text-secondary" style="color: #000000;font-family: 'Open Sans', sans-serif;font-weight: 500;border-color: #000;">
                        {{$solution->desc}} </p><a class="h4" href="#"></a>
                </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    @endsection
