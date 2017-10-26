---
title: This a test to see what happens to GIT once I save this
date: 2017-02-02 00:00:00 Z
permalink: welcome-to-jekyll.html
categories:
- Jekyll
description: Description of the post.
comments: true
layout: post
---

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:
{% highlight php %}
<?php

namespace FooBar;

class Foo extends Bar
{
    public function __construct(Bim $ec) {
        $var = $ec->getVar();
        $var++;
        echo $this->getInfo($var);
    }

    private function getInfo($var) {
        return $var*2;
    }
}

$bim = new Bim();
$foo = new Foo($bim);
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/