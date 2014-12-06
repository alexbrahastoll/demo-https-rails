### About

This repository is a demonstration on using HTTPS in a Ruby on Rails application. It was developed using
Ruby 2.1.3 and Rails 4.1.6.

Interesting things you should check out:

- spec/controllers/demo_https_controller_spec.rb - Spec to check if the access to each area of the app
is being forced through the right protocol (HTTP or HTTPS)
- lib/force_http.rb - Implements `force_http`, a method based on Rails' `force_ssl` but that redirects
to HTTP if the configured action(s) were accessed via HTTPS
- config/initializers/action_controller_ext.rb - Opens up `ActionController::Base` and includes
the module implemented at lib/force_http.rb. As a consequence, the `force_http` can be used
out of the box in any controller that is a subclass of `ApplicationController`.

There is a detailed [article](http://helabs.com.br/blog/)
about the contents of this repo. You should definitely take a look on it if you
understand Brazilian Portuguese.

### License

The MIT License (MIT)

Copyright (c) <2014> <Alex Braha Stoll>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE. 
