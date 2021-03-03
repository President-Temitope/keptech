<nav class="navbar navbar-light navbar-expand-md navigation-clean fixed-top">
    <div class="container-fluid"><img class="img-fluid"
                                      src="{{setting('site.logo')}}" width="261"
                                      height="86" alt="{{config('app.name')}}">
        <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span
                class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link {{ $elementActive == 'home' ? 'active' : '' }}" href="/">Home</a>
                </li>
                <li class="nav-item "><a class="nav-link {{ $elementActive == 'about' ? 'active' : '' }}" href="{{route('about')}}">About</a></li>
                <li class="nav-item"><a class="nav-link {{ $elementActive == 'services' ? 'active' : '' }}" href="{{route('services')}}">Services</a></li>
                  <li class="nav-item"><a class="nav-link {{ $elementActive == 'solutions' ? 'active' : '' }}" href="{{route('solutions')}}">Solutions</a></li>
                  <li class="nav-item"><a class="nav-link {{ $elementActive == 'internships' ? 'active' : '' }}" href="{{route('internships')}}">Internships</a></li>
                <li class="nav-item"><a class="nav-link {{ $elementActive == 'careers' ? 'active' : '' }}" href="{{route('careers')}}">Careers</a></li>
                <li class="nav-item"><a class="nav-link {{ $elementActive == 'blog' ? 'active' : '' }}" href="{{route('blog')}}">Blog</a></li>
                <li class="nav-item"><a class="nav-link {{ $elementActive == 'contact' ? 'active' : '' }}" href="{{route('contact')}}">Contact</a></li>


            </ul>
        </div>
    </div>
</nav>
