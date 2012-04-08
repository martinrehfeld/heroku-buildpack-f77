Heroku buildpack: FORTRAN-77
============================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) for FORTRAN-77 apps.
Apps need to be compiled using the included [f2c FORTRAN to C tranlator](http://www.netlib.org/f2c/).
It uses [Make](http://www.gnu.org/software/make/).

Usage
-----

Example usage:

    $ ls
    Makefile myapp.f

    $ heroku create --stack cedar --buildpack http://github.com/martinrehfeld/heroku-buildpack-f77.git

    $ git push heroku master
    ...
    -----> Heroku receiving push
    -----> Fetching custom buildpack
    -----> f77 app detected
    -----> Fetching f2c binaries
    -----> Setting up build environment
    -----> Compiling with Make
           f2c myapp.f
           gcc -o myapp myapp.c -lf2c

The buildpack will detect your app as FORTRAN-77 if it has the file `Makefile` in the root.
It will then run `make` to compile the app (see examples/Makefile for a template).
