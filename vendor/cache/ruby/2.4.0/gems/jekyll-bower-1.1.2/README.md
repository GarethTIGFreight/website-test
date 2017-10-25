# Jekyll Bower

[![build status](https://gitlab.com/SaiAshirwadInformatia/Jekyll-Bower/badges/master/build.svg)](https://gitlab.com/SaiAshirwadInformatia/Jekyll-Bower/commits/master)
[![Gem Version](https://badge.fury.io/rb/jekyll-bower.svg)](https://badge.fury.io/rb/jekyll-bower)

This plugin provides support for resolving JavaScript dependencies using **bower**

### Installation

This plugin is available as a [RubyGem](https://rubygems.org/gems/jekyll-bower/)

Add this line to your application's Gemfile:

```
gem 'jekyll-bower'
```

And then execute the `bundle install` command to install the gem.

Alternatively, you can also manually install the gem using the following command:

```
$ gem install jekyll-bower
```

After the plugin has been installed successfully, add the following lines to your _config.yml in order to tell Jekyll to use the plugin:

```yaml
gems:
  - jekyll-bower
```

#### Resolve Dependency using Jekyll Config

```yaml
bower:
	jquery-timego: timeago#~1.5.3
	bootstrap: bootstrap#~3.1.1
```

Above line downloads `timeago` and `bootstrap` dependencies which are later available as **bower_components**

### Contribute

Fork this repository, make your changes and then issue a pull request. If you find bugs or have new ideas that you do not want to implement yourself, file a bug report.

### Copyright

Copyright (c) 2016 Rohan Sakhale

License: MIT