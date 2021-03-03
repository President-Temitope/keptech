<footer class="footer-dark" style="width:100%;background: #152238;color: #003e9000;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 item text">
{{--                <h3 style="color: #ffffff;">{{config('app.name')}}</h3>--}}
                <img src="{{setting('site.logo')}}" class="img-fluid" alt="{{config('app.name')}}" width="261"
                     height="86"/>

                <p style="color: rgb(255,255,255); padding-top: 20px;">At Kep Technologies we make technology an asset for your business by
                    integrating it seamlessly with your business.</p>
            </div>
            <div class="col-sm-6 col-md-3 item" style="padding-left: 20px;">
                <h3 style="color: rgb(255,255,255);">Quick Links</h3>
                <hr style="width: 150px;height: 5px;margin-top: 10px;background: #58CCED;">
                <ul>
                    <li><a href="{{route('about')}}" style="color: rgb(255,255,255);">About</a></li>
                    <li><a href="{{route('services')}}" style="color: rgb(255,255,255);">Services</a></li>
                    <li><a href="{{route('internships')}}" style="color: rgb(255,255,255);">Internships</a></li>
                    <li><a href="{{route('contact')}}" style="color: rgb(255,255,255);">Contact</a></li>
                </ul>
            </div>
            <div class="col-sm-6 col-md-3 item">
                <h3 style="color: rgb(255,255,255);">Contact</h3>
                <hr style="width: 100px;height: 5px;margin-top: 10px;background: #58CCED;">
                <ul>
                    <li style="color: rgb(255,255,255);">Address: {{setting('site.address')}}</li>
                    <li style="color: rgb(255,255,255);">Phone: {{setting('site.phone')}}</li>
                    <li style="color: rgb(255,255,255);">Work: Monday - Friday 8am - 5pm
                    </li>
                </ul>
            </div>
            <div class="col item social" style="text-align: left;"><a href="{{setting('site.facebook')}}"><i class="icon ion-social-facebook"></i></a><a
                    href="{{setting('site.twitter')}}"><i class="icon ion-social-twitter"></i></a><a href="{{setting('site.instagram')}}"><i
                        class="icon ion-social-instagram"></i></a></div>
        </div>
        <p class="copyright" style="color: rgb(255,255,255);">{{config('app.name')}} © @php echo date('Y')@endphp</p>
    </div>
</footer>
