# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
  
      resource '*',
        headers: :any,
        credentials: true,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end

    allow do
      origins 'https://nifty-pike-99c3ce.netlify.app'
  
      resource '*',
        headers: :any,
        credentials: true,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end