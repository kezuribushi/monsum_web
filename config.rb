###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

set :css_dir, 'stylesheets'
 
set :js_dir, 'javascripts'
 
set :images_dir, 'images'

# Use relative URLs
activate :relative_assets
set :relative_links, true

set :slim, { :pretty => true, :sort_attrs => false, :format => :html5 }

activate :assets_host, :host => "/monsum_web"
end

activate :deploy do |deploy|
	deploy.build_before = true
	deploy.method = :git
	deploy.branch = 'master'
end