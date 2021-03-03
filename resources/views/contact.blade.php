@extends('layouts.app',[
    $elementActive ='contact'
])
@section('content')
    <!-- Start: 1 Row 3 Columns -->
    <div style="max-width: 100%;width: 100%;">
        <div class="container">
            <div class="row" style="padding:10px;">
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                    <section id="newsletter" style="height: 406px;">
                        <h4>Please Get in Touch</h4>
                        <div class="underrule"></div>
                        <p style="margin-top: 10px;font-size: 13px;">Fill the form below to send us a message</p>
                        <form>
                            <div class="form-inline">
                                <div class="form-group"><input class="form-control form-line" type="text" placeholder="Name" style="margin: 5px;"></div>
                                <div class="form-group"><input class="form-control form-line" type="text" placeholder="Phone Number" style="margin: 5px;"></div>
                            </div><input class="form-control form-line" type="text" style="margin: 5px;" placeholder="Email"><input class="form-control form-line" type="text" style="margin: 5px;" placeholder="Message">
                        </form><button class="btn btn-primary" type="button">submit</button>
                    </section>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4 offset-sm-0" style="padding: 0;">
                    <section style="background-color:rgb(25,27,76) ;height:406px;">
                        <h1 style="font-family: 'Montserrat Alternates', sans-serif;font-weight: bold;color: rgb(255,255,255);">Contact Us</h1>
                        <div class="row">
                            <div class="col"><img src="/assets/img/no1.png?h=81ad830b7c8815b6187f065fe694d0da" style="width: 40px;"></div>
                            <div class="col">
                                <p style="font-size:25px; color:white;" >ADDRESS:<br><small style="font-size:15px;">218 Christ Avenue off Admiralty Road, Lekki Phase 1 Lagos, Nigeria</small></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col"><img src="/assets/img/Group%203.svg?h=2c0b420370a24612bc7115b7ec624ed0"></div>
                            <div class="col"><p style="font-size:25px; color:white;">PHONE:<br><small style="font-size:15px;">+2348138684013</small></p>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col"><img src="/assets/img/Group%206.svg?h=55883cf055cc17a66b2310e4cf28ef77"></div>
                            <div class="col"><p style="font-size:25px; color:white;">Email:<br><small style="font-size:15px;">info@keptecklimited.com</small></p></div>
                        </div>
                    </section>
                </div>
                <div class="col-md-12 col-lg-4 col-xl-4 offset-xl-0"><iframe allowfullscreen="" frameborder="0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCvEHzV7pUcwSMf6Shr1MI6BXVmRLiiXdM&amp;q=21b%2Cchrist+avenue%2Clekki&amp;zoom=11" width="100%" height="400"></iframe></div>
            </div>
        </div>
@endsection
