# Generate script code for Google Analytics with Liquid Tag
require 'jekyll'
require 'jekyll/bower_plugin'
require 'jekyll/plugin_version'

# Register Jekyll Site Post Read hook of Bower plugin
Jekyll::Hooks.register :site, :pre_render do |jekyll| # jekyll here acts as site global object
	JekyllBower = Jekyll::Bower.new()
	JekyllBower.resolve(jekyll)
	print "Reading newly generated bower components"
	jekyll.reset()
	jekyll.read()
	print "Looks like verything is ready"
end