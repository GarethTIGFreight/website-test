# TIG Freight Website

TIG Freight Website is company website build for TIG Freight. It uses the following technologies
  - Jekyll (jekyll-paginate, jekyll-feed, jekyll-gist).
  - Bulma.io
  - Font Awesome (might move to Material Design Icons).

This repo hosts the code which displays all content via templates. This documentation describes "Template Development" and "Blog Editing". 

## Template Development
### Prerequsites
  - homebrew
  - Ruby (Install with homebrew)
  - RubyGems (Install manually?)
  - Bundle (install with RubyGems)

### To install
Clone the GIT repo into current directory.
Using "Bundle" to install all the gems required for this project.
Then see Run Dev or Run Build
```sh
$ git clone [REPLACE WITH GIT URL] ./
$ bundle install
```

### Run dev
```sh
$ jekyll serve 
```

### Run build
```sh
$ jekyll build 
```
This will link everything and put into the /site/ folder. This is what gets deployed

### To deploy
Figuring this out... if we go with Siteleaf it'll go through this.

## Blog Editing
To the edit the blog I'm leaning towards using Siteleaf.
Siteleaf also has a repo containing our code but only updates items in the /blog/ folder. 