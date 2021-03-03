@extends('layouts.app',[
    $elementActive ='services'
])
@section('content')
    <div class="bg-light border rounded border-light hero-technology jumbotron py-5 px-4"
         style="width: 100%;padding-top: 0;margin-right: 26px;height: 300px;background: url(&quot;assets/img/glenn-carstens-peters-P1qyEf1g0HU-unsplash.jpg&quot;);background-size: cover;">
        <h1 class="hero-title">Services</h1>
    </div>
    <div class="container">
        <div class="row">
            @if(count($services) > 0)
                @foreach($services as $service)
            <div class="col-md-3" style="color: #000000;">
                <div class="card"
                     style="width: 270px;border-top-left-radius: 20px;border-top-right-radius: 20px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;box-shadow: 5px 5px 16px 2px rgba(0,0,0,0.25);margin: 14px;min-width: 260px;max-width: 300px;margin-bottom: 20px;margin-left: 0;">
                    <div
                        style="width: 100%;height: 300px;background: url({{Voyager::image($service->image)}}) center / contain;border-top-left-radius: 20px;border-top-right-radius: 20px;"></div>
                    <div class="card-body d-flex flex-column" style="height: 170px;text-align: center;">
                        <div>
                            <h4 style="font-family: 'Source Sans Pro', sans-serif;font-weight: 700;color: #000000;">
                                {{$service->title}}</h4>
                        </div>
                        <a class="card-link align-self-end" data-bss-hover-animate="pulse" href="#" data-bs-toggle="modal" data-bs-target="#{{$service->title}}"
                           style="padding: 4px;background: #b86868;color: rgb(255,255,255);border-radius: 17px;padding-right: 14px;padding-left: 14px;padding-bottom: 6px;font-family: 'Source Sans Pro', sans-serif;margin-top: auto;">read more</a>
                    </div>
                </div>
            </div>

                    <div class="modal fade" role="dialog" tabindex="-1" id="{{$service->title}}" aria-labelledby="exampleModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4>{{$service->title}}</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    {!! $service->brief !!}
                                </div>
                                <div class="modal-footer"><button class="btn btn-warning" style="background-color:rgb(255,139,160);" type="button" data-bs-dismiss="modal">Close</button></div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
    {{--    <div class="container" style="margin-top: 30px;">--}}
    {{--        <div class="row">--}}
    {{--            <div class="col-md-4">--}}
    {{--                <div class="card" style="width: 357px;border-top-left-radius: 20px;border-top-right-radius: 20px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;box-shadow: 5px 5px 16px 2px rgba(0,0,0,0.25);margin: 14px;min-width: 350px;max-width: 360px;margin-bottom: 20px;margin-left: 0;">--}}
    {{--                    <div style="width: 100%;height: 300px;background: url(&quot;assets/img/karytonndev_background.jpg&quot;) center / contain;border-top-left-radius: 20px;border-top-right-radius: 20px;"></div>--}}
    {{--                    <div class="card-body d-flex flex-column" style="height: 170px;text-align: center;">--}}
    {{--                        <div>--}}
    {{--                            <h4 style="font-family: 'Source Sans Pro', sans-serif;font-weight: 700;color: #000000;">Karytonn Oliveira</h4>--}}
    {{--                        </div><a class="card-link align-self-end" data-bss-hover-animate="pulse" href="#" style="padding: 4px;background: #b86868;color: rgb(255,255,255);border-radius: 17px;padding-right: 14px;padding-left: 14px;padding-bottom: 6px;font-family: 'Source Sans Pro', sans-serif;margin-top: auto;">Ver mais</a>--}}
    {{--                    </div>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--            <div class="col-md-4">--}}
    {{--                <div class="card" style="width: 357px;border-top-left-radius: 20px;border-top-right-radius: 20px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;box-shadow: 5px 5px 16px 2px rgba(0,0,0,0.25);margin: 14px;min-width: 350px;max-width: 360px;margin-bottom: 20px;margin-left: 0;">--}}
    {{--                    <div style="width: 100%;height: 300px;background: url(&quot;assets/img/karytonndev_background.jpg&quot;) center / contain;border-top-left-radius: 20px;border-top-right-radius: 20px;"></div>--}}
    {{--                    <div class="card-body d-flex flex-column" style="height: 170px;text-align: center;">--}}
    {{--                        <div>--}}
    {{--                            <h4 style="font-family: 'Source Sans Pro', sans-serif;font-weight: 700;color: #000000;">Karytonn Oliveira</h4>--}}
    {{--                        </div><a class="card-link align-self-end" data-bss-hover-animate="pulse" href="#" style="padding: 4px;background: #b86868;color: rgb(255,255,255);border-radius: 17px;padding-right: 14px;padding-left: 14px;padding-bottom: 6px;font-family: 'Source Sans Pro', sans-serif;margin-top: auto;">Ver mais</a>--}}
    {{--                    </div>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--            <div class="col-md-4">--}}
    {{--                <div class="card" style="width: 357px;border-top-left-radius: 20px;border-top-right-radius: 20px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;box-shadow: 5px 5px 16px 2px rgba(0,0,0,0.25);margin: 14px;min-width: 350px;max-width: 360px;margin-bottom: 20px;margin-left: 0;">--}}
    {{--                    <div style="width: 100%;height: 300px;background: url(&quot;assets/img/karytonndev_background.jpg&quot;) center / contain;border-top-left-radius: 20px;border-top-right-radius: 20px;"></div>--}}
    {{--                    <div class="card-body d-flex flex-column" style="height: 170px;text-align: center;">--}}
    {{--                        <div>--}}
    {{--                            <h4 style="font-family: 'Source Sans Pro', sans-serif;font-weight: 700;color: #000000;">Karytonn Oliveira</h4>--}}
    {{--                        </div><a class="card-link align-self-end" data-bss-hover-animate="pulse" href="#" style="padding: 4px;background: #b86868;color: rgb(255,255,255);border-radius: 17px;padding-right: 14px;padding-left: 14px;padding-bottom: 6px;font-family: 'Source Sans Pro', sans-serif;margin-top: auto;">Ver mais</a>--}}
    {{--                    </div>--}}
    {{--                </div>--}}
    {{--            </div>--}}
    {{--        </div>--}}
    {{--    </div>--}}
    <div class="bg-light jumbotron-main jumbotron py-5 jumbotron-fluid" style="background: rgb(7,47,95);">
        <div class="container center-vertically-holder"
             style="margin-top: -20px;background: #072f5f;width: 100%;max-width: 100%;">
            <div class="row center-vertically">
                <div class="col-md-8 offset-sm-0 offset-md-2 text-center" style="margin-top:200px;margin-bottom:100px;">
                    <h1 style="color: #ffffff;">What Do You Want To Achieve Today?</h1>
                    <p style="margin-top: 50px;"><a class="btn btn-primary" role="button" href="#"
                                                    style="border-radius: 21px;">Contact Us</a></p>
                </div>
            </div>
        </div>
    </div>
@endsection
