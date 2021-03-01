@extends('layouts.app')
@section('content')
    <div class="bg-light border rounded border-light hero-technology jumbotron py-5 px-4"
         style="height: 600px;background: url(&quot;assets/img/BKG%209.png&quot;) center;max-width: 100%;">
        <h1 class="hero-title" style="text-align: left;margin-top: 200px;margin-bottom: 20px;margin-left: 20px;">Hero
            Technology</h1>
        <p style="text-align: left;"><a class="btn btn-primary btn-lg hero-button" role="button" href="#"
                                        style="margin-left: 20px;">Get In Touch</a></p>
    </div>
    <div class="row clearmargin clearpadding row-image-txt"
         style="background: #F2F3F4;padding-top: 150px;max-width: 100%;">
        <div class="col-xs-12 col-sm-6 col-md-6 clearmargin clearpadding col-sm-push-6"
             style="height: 400px;background: #F2F3F4;">
            <div></div>
            <h1 style="color: #000000;margin-left: 50px;">About Us</h1>
            <hr style="background: #2aa3ff;height: 5px;width: 100px;margin-left: 50px;">
            <p style="color: rgb(0,0,0);font-family: Aleo, serif;font-size: 18px;font-weight: normal;margin-left: 50px;">
                We are a talented team of data analysts, developers, IT solutions experts from different disciplines and
                background brought together by a common mission: increase profitability in business by providing
                innovative and reliable technological solutions.<br></p>
            <button class="btn btn-light btn-lg" type="button"
                    style="background: #58CCED;border-radius: 20px;border-width: 100px;border-style: none;margin-left: 50px;">
                READ MORE
            </button>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-sm-pull-6" style="padding: 20px;background: #F2F3F4;"><img
                src="assets/img/about-us-300x293.png" style="margin-left: 250px"></div>
    </div>
    <div class="container">
        <h3 align="center">Services</h3>
        <div class="row">

            <div class="col-md-3">
                <div class="card shadow" style="width: 20rem; height: 500px">
                    <div class="inner">
                        <img src="assets/img/sl-texture_verte.jpg" class="card-img-top img-responsive" alt="..."></div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Business Analysis</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card shadow" style="width: 20rem;">
                    <div class="inner">
                        <img src="assets/img/sl-texture_verte.jpg" class="card-img-top img-responsive" alt="..."></div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Business Analysis</h5>
                    </div>
                </div>
            </div>
        </div>
       {{-- <div class="row" style="margin-top: 50px;">
            <div class="col-md-3">
                <div class="card shadow" style="width: 20rem;">
                    <div class="inner">
                        <img src="assets/img/sl-texture_verte.jpg" class="card-img-top img-responsive" alt="..."></div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Business Analysis</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card shadow" style="width: 20rem;">
                    <div class="inner">
                        <img src="assets/img/sl-texture_verte.jpg" class="card-img-top img-responsive" alt="..."></div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Business Analysis</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card shadow" style="width: 20rem;">
                    <div class="inner">
                        <img src="assets/img/sl-texture_verte.jpg" class="card-img-top img-responsive" alt="..."></div>
                    <div class="card-body text-center">
                        <h5 class="card-title">Business Analysis</h5>
                    </div>
                </div>
            </div>

        </div>--}}
    </div>
    <div class="container" style="background: #072F5F;height: 89px;width: 2000px;max-width: 100%;">
        <div class="row">
            <div class="col-md-6">
                <p style="font-style: oblique;font-family: Allan, cursive;font-weight: bold;margin-left: 95px;margin-top: 15px;font-size: 44px;">
                    Interested?</p>
            </div>
            <div class="col-md-6">
                <button class="btn btn-primary" type="button"
                        style="margin-left: 300px;width: 200px;border-radius: 15px;margin-top: 28px;background: #58CCED;">
                    CONTACT
                </button>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6"><img src="assets/img/slidebean-8u-GQiK_J5c-unsplash-scaled-1024x1959.jpg"
                                       style="max-width: 753px;width: 559px;"></div>
            <div class="col">
                <h1 style="margin-left: 100px;">Why Choose Us?</h1>
                <p style="margin-left: 100px;color: rgba(13,12,12,0.89);font-family: 'Source Sans Pro', sans-serif;font-size: 20px;">
                    <strong>Your Business Depends on Your Decisions</strong></p>
                <p style="color: rgb(23,20,20);font-family: 'Source Sans Pro', sans-serif;font-weight: 400;">At Kep
                    technologies we know building a great brand takes more than just technology - it is about the
                    people: our clients, their customers and our team of experienced and innovative people. Through a
                    shared mission and vision, we design solutions to solve our customers toughest business
                    problems.</p>
                <ul class="list-unstyled fa-ul">
                    <li style="margin-top: 20px;width: 50%;margin-right: 500px;"><i
                            class="fas fa-lightbulb fa-li text-primary"
                            style="border-radius: 200px;height: 50px;max-height: 50px;margin: 20px;margin-left: 200px;padding-bottom: 70px;padding-right: 20px;border: 20px solid rgb(42,103,191);font-size: 50px;background: rgb(42,103,191);padding-left: 15px;max-width: 120px;color: rgb(255,255,255);"></i>Plain
                        Text Listed Item
                    </li>
                </ul>
            </div>
        </div>
    </div>
@endsection
