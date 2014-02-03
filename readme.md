# AAF Rapid Connect - Ruby Sample App

In addition to the information and live demo available from the [Rapid Connect page](http://rapid.aaf.edu.au), we have provided the following sample code which underpins our examples.

This is the Ruby sample application. It is provided purely for illustrative purposes only to give you an idea of how we went about building our Ruby demo. It should be noted that the code presented here should not be used as a base to build your application, but is provided to give you an idea of the concepts behind connecting a service so you can pick it apart (everybody’s requirements are different and just cutting and pasting the code won’t generally work if you decide to do that). No effort has been made to audit the code's security, or make it production-ready.

AAF has used the [Sinatra](http://www.sinatrarb.com/) framework to develop this application. It is a prerequisite of this sample application that you are able to run Ruby applications via Bundler. Please see the [Bundler](http://bundler.io/) documentation for more information. As this is purely for illustrative purposes, AAF is regretfully unable to provide support for the Sinatra framework, Bundler and general Ruby development questions, you will need to get in touch with your local software development team to help you out here :smile:.

## Getting Started

There are two modifications which **MUST** be made before this application will work correctly:

1. In `web.rb`, replace the value of `secret` with a new, random value that you have generated. This will be your **Secret** which is used during registration with Rapid Connect.
2. In `views/index.erb`, find the link with `href="INSERT_YOUR_RAPID_CONNECT_URL_HERE"`. Replace the value of the `href` with the **UNIQUE URL** provided after you register your application.

### Registration

You may register against [Rapid Connect Test](http://rapid.test.aaf.edu.au) to test this application. Please use a sensible descriptive name for your service. It's much easier for us if we don't have a database full of "test service" belonging to various people.

If you are running this on your desktop with the default settings, the callback URL is most likely `http://localhost:8080/auth/jwt`

### Starting the application

Before running the application for the first time, you should ensure dependencies are installed by running:

    bundle install

On Linux, Mac OS X and other UNIX-like operating systems, the following command will start the application:

    bundle exec ruby web.rb -p 8080

If you encounter any errors, please review the [Bundler](http://bundler.io/) documentation to ensure you have completed all the necesssary setup.

## License

Copyright 2014, Australian Access Federation

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

### Contributing

AAF is happy to accept contributions which improve the quality of this sample application. Feel free to issue a pull request.
