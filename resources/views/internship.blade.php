@extends('layouts.app',[
    $elementActive ='internships'
])
@section('content')

    <div class="bg-light border rounded border-light hero-technology jumbotron py-5 px-4"
         style="
         padding-top: 0px;background: url(assets/img/karytonndev_background.jpg)center;height: 600px;max-width: 100%;">
        <h1 class="hero-title" style="padding-top: 50px;">Internships</h1>
        <p class="hero-subtitle" style="max-width: 1000px;">At Kep Technologies, our internship program spans from 3
            months, 6 months and 1 year. It's your chance to show off your skills and competences. This program is
            designed to get interns working on tasks that will equip them with skills needed for a successful future
            career once they scale through our interview.</p>
    </div>
    <div class="container" style="background: #58CCED;width: 100%;max-width: 100%;margin-top: 0; padding-bottom: 150px;">
        <div class="row">
            @if(count($internships)>0)
                @foreach($internships as $intern)
            <div class="col-md-4" style="max-height:300px; width: 450px; padding: 50px; ">
                <div class="card card1">
                    <div class="card-body">
                        <h3 class="card-title">{{$intern->title}}</h3>
                        <p class="card-text small">{!! $intern->brief !!}</p>
                        <div><a href="" class="btn btn-primary">{{$intern->status}}</a></div>
                    </div>
                </div>
            </div>
                @endforeach
            @else
                <div class="col-md-4" style="max-height:300px; width: 450px; padding: 50px; ">
                    <div class="card card1">
                        <div class="card-body">
                            <h3 class="card-title">No Spot</h3>
                            <p class="card-text small" style="color: #000000">Try again later</p>
                            <div><a href="" class="btn btn-primary">Application close</a></div>
                        </div>
                    </div>
                </div>
@endif

        </div>

    </div>
@endsection
