source "https://rubygems.org"

gem "middleman", "~> 3.3.5"
gem "rake", "~> 10.4.2"

# Environment specific config with environment variables
gem "dotenv", "~> 0.11.1"

# Live-reloading plugin
gem "middleman-livereload", "~> 3.3.4"

# For faster file watcher updates on Windows:
gem "wdm", "~> 0.1.0", :platforms => [:mswin, :mingw]

# Windows does not come with time zone data
gem "tzinfo-data", platforms: [:mswin, :mingw]

# Redirects
gem "middleman-alias", "~> 0.0.9"

# Syntax highlighting
gem "middleman-syntax", "~> 2.0.0"

# Deploy to GitHub Pages
gem "middleman-gh-pages", "~> 0.0.3"

# Markdown
gem "kramdown", "~> 1.4.1"

# JSON validation
gem "multi_json", "~> 1.10.1"

# Bootstrap
gem "bootstrap-sass", "~> 3.2.0.1"

# JS runtime for execjs (used for asset minification).
gem "therubyracer", "~> 0.12.2"

source "https://rails-assets.org" do
  # jQuery
  gem "rails-assets-jquery", "~> 1.11.2"

  # Programmatic bootstrap modals
  gem "rails-assets-bootbox", "~> 4.3.0"

  # Form validation
  gem "rails-assets-parsleyjs", "~> 2.0.3"

  # Icons
  gem "rails-assets-font-awesome", "~> 4.1.0"
end

group :development do
  # Deployment
  gem "capistrano", "~> 3.3.5"
  gem "capistrano-bundler", "~> 1.1.4"
end
