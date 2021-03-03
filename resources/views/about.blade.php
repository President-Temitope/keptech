@extends('layouts.app',[
    $elementActive ='about'
])
@section('content')

    <div class="row" style="margin: 0px;padding: 20px;width: 100%;">
        <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4">
            <img class="img-responsive" src="assets/img/philipp-katzenberger-iIJrUoeRoCQ-unsplash-768x768.jpg"
                 style="width: 721px;max-width: none;max-height: none;height: 790px;">
        </div>
        {{--        <div class="w-100 d-sm-block d-md-none d-lg-none d-xl-none"></div>--}}
        <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-4"
             style="margin-top: 150px; margin-left: 150px;">
            {{--            <div class="card" style="margin-top: 0; margin-right: 100px;">--}}
            <h4 class="">About Us</h4>
            <hr style="width: 100px;height: 5px;color: #58CCED;">
            <p class="" style="color: rgb(0,0,0);font-size: 15px;font-weight: 300;padding-right: 10px">We
                    are a
                    talented team of data analysts, developers, IT solutions experts from different disciplines
                    and background brought together by a common mission: increase profitability in business by
                    providing innovative and reliable technological solutions.We have helped brands scale their
                    businesses through simplified technological solutions, data analysis and project management.
                    Our modus operandi prioritizes quality services to our clients, through strategic business
                    solutions for increased productivity.At Kep technologies we know building a great brand
                    takes more than just technology - it is about the people: our clients, their customers and
                    our team of experienced and innovative people. Through a shared mission and vision, we
                    design solutions to solve our customers toughest business problems.Whether you are looking
                    at IT Consultancy, Solutions, Data Analysis, or just want to better understand how to scale
                    your business using technology, Kep technologies can provide the expertise to help you build
                    a strategy that is right for you.</p>
            <div style="margin-left: 50px; margin-top: 50px;margin-bottom: 50px">
                <ul class="fa-ul">
                    <li><span class="fa-li"><i class="fas fa-check" style="color:#072F5F"></i></span>Customer
                        Analytics
                    </li>
                    <li><span class="fa-li"><i class="fas fa-check" style="color:#072F5F"></i></span>Service
                        Development
                    </li>
                    <li><span class="fa-li"><i class="fas fa-check" style="color:#072F5F"></i></span>Staff
                        Training
                    </li>

                </ul>
            </div>
        </div>
    </div>

        <div class="row">
            <div class="col-md-4" style="border-style: none;">
                <div
                    style="margin-top: 30px;margin-right: 10px;margin-left: 10px;font-size: 15px;font-weight: 200;text-align: left;border-style: none;box-shadow: inset 0px 0px 15px 4px rgb(193,215,238);height: 310px;max-height: 310px;">
                    <h1 style="margin-left: 20px;margin-top: 0;padding-top: 20px;">Our Mission</h1>
                    <p style="color: #000;font-weight: 350;text-align: left;margin-left: 20px;margin-top: 20px;margin-right: 20px;">
                        To increase profitability in business by providing reliable and cost-effective strategies,
                        specific to the business' requirements and meet customers’ growing needs through the rapid
                        deployment of new technology solutions.</p>
                </div>
            </div>
            <div class="col-md-4" style="border-style: none;">
                <div
                    style="margin-top: 30px;margin-right: 10px;margin-left: 10px;font-size: 15px;font-weight: 200;text-align: left;border-style: none;box-shadow: inset 0px 0px 15px 4px rgb(193,215,238);height: 310px;max-height: 310px;">
                    <h1 style="margin-left: 20px;margin-top: 0;padding-top: 20px;">Our Vision</h1>
                    <p style="color: #000;font-weight: 350;text-align: left;margin-left: 20px;margin-top: 20px;margin-right: 20px;">
                        Our vision is to be the Africa's most preferred technology company and partner of choice by
                        simplifying technological solutions which deliver long term commercial benefits to drive
                        profitable growth for all business owners and helping to create, build and maintain the most
                        innovative, reliable and cost-effective solutions that inspires business lives.</p>
                </div>
            </div>
            <div class="col-md-4" style="border-style: none;">
                <div
                    style="margin-top: 30px;margin-right: 10px;margin-left: 10px;font-size: 15px;font-weight: 200;text-align: left;border-style: none;box-shadow: inset 0px 0px 15px 4px rgb(193,215,238);height: 310px;max-height: 310px;">
                    <h1 style="margin-left: 20px;margin-top: 0;padding-top: 20px;">Our Values</h1>
                    <p style="color: #000;font-weight: 350;text-align: left;margin-left: 50px;margin-top: 20px;">
                        <strong>R -</strong>Reliability <br/><strong>I -</strong>Innovation<br/><strong>T -</strong>Teamwork<br/><strong>E
                            -</strong>Efficiency</p>
                </div>
            </div>
        </div>

    <div>
        <div class="container" style="padding-top: 50px">
            <h2 class="text-center" style="font-family: 'Open Sans', sans-serif;font-size: 22px;font-weight: 800;line-height: 32px;color: rgb(0,0,0);text-align: center;">
                Latest News</h2>
{{--            <hr style="width: 150px;text-align: center;height: 5px;margin-left: 500px;color: rgb(88,204,237);">--}}
            <div class="cust_bloglistintro">
                <p style="margin-left:34px;color:rgba(255,255,255,0.5);font-size:14px;"></p>
            </div>
            <div class="row">
                @if(count($posts )>0)
                    @foreach($posts as $post)
                        <div class="col-md-4 cust_blogteaser" style="padding-bottom:20px;margin-bottom:32px;"><a
                                href="#"><img class="img-fluid" style="height:auto;"
                                              src="{{Voyager::image($post->image)}}"></a>
                            <h3 style="text-align:left;margin-top:20px;font-family:'Open Sans', sans-serif;font-size:18px;margin-right:0;margin-left:24px;line-height:34px;letter-spacing:0px;font-style:normal;font-weight:bold;">
                                {{$post->title}}<br></h3>
                            <p class="text-secondary"
                               style="text-align:left;font-size:14px;font-family:'Open Sans', sans-serif;line-height:22px;color:rgb(9,9,10);margin-left:24px;">
                                {!! substr($post->body,5) !!} </p><a class="h4" href="#"><i
                                    class="fa fa-arrow-circle-right" style="margin-left:23px;"></i></a>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
@endsection
