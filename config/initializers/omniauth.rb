# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :oauth2_generic,
    "swoop_4k6qx64khl1er6m", "6d7ac9c247452488cd435d0676c1dec0b0f27b1b317e87bbdb92c255f58847c6",
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
