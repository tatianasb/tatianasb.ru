# Tatiana SB

[Jekyll](http://jekyllrb.com) source files for [my personal portfolio](http://tatianasb.ru).

## Build instructions

### Requirements

* [Ruby](http://www.ruby-lang.org/) 2.3.1 with `gem` available
* [NodeJS](http://nodejs.org) with `yarn` available

### Dependencies

First install [Bundler](http://bundler.io) and then the required [Ruby](http://ruby-lang.org) gems:

```console
$ gem install bundler
$ bundle install
```

Then prepare assets:

```console
$ yarn install
$ yarn run fonts
$ yarn run js
```

Finally, change the site URL at `_config.yml` if needed.

### Building

To build the site:

```console
$ bundle exec jekyll b
```

Optionally use set the `JEKYLL_ENV` variable to build the site with the _production_ server settings (e.g. include Google Analytics tracking code):

```console
$ JEKYLL_ENV=production bundle exec jekyll b
```

### Accessing

Following Jekyll default, to view the site just open `_site/index.html` with your favorite browser:

```console
$ open _site/index.html
```

### Deploy

To deploy via `aws` CLI  get your credentials set under `~/.aws` for a profile named `tatiana` and then:

```console
$ ./contrib/deploy.sh
```

## License

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

[![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-sa/4.0/)