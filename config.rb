###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

page "/404.html", :directory_index => false

# General configuration

activate :sprockets do |c|
  c.imported_asset_path = "assets"
  c.expose_middleman_helpers = true
end
activate :directory_indexes
activate :syntax

set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascripts"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"

set :markdown_engine, :kramdown
set :markdown, {
  :input => "GFM",
  :smart_quotes => ["apos", "apos", "quot", "quot"],
}

# Reload the browser automatically whenever files change
configure :development do
  if(ENV["MIDDLEMAN_LIVERELOAD_PORT"] && ENV["MIDDLEMAN_LIVERELOAD_JS_HOST"])
    activate :livereload, :port => ENV["MIDDLEMAN_LIVERELOAD_PORT"], :js_host => ENV["MIDDLEMAN_LIVERELOAD_JS_HOST"]
  else
    activate :livereload
  end
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def breadcrumbs_trail
    page = current_page
    trail = [page]

    while(page = page.parent)
      unless(page.data.disable_in_breadcrumbs_trail)
        trail << page
      end
    end

    trail.reverse
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash, :ignore => [
    # Don't cache-bust the embed javascript file, since its references need to
    # be hardcoded.
    %r{signup_embed.js},
  ]
end

activate :relative_assets
