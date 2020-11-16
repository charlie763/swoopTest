# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :oauth2_generic,
    "swoop_4k6qx64khl0lfbe", "55e26a82b7340687a575bd623e126ced018b442bd40761e2f4fbc0692d63ca69",
    client_options: {
      site: 'https://auth.swoop.email', 
      token_url: '/oauth2/token',
      user_info_url: '/oauth2/profile'
    },
    user_response_structure: {
      attributes: {
        email: 'email',
        uid: 'sub'
      }
    },
    authorize_params: {
        scope: 'email'
    },
    name: 'swoop' 
end
