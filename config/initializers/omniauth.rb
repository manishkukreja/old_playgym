Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 872318953320, "Azhq8cQKRns14ZG8Ut6C0K7G", {
    access_type: 'offline',
    scope: 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/calendar',
    redirect_uri:'http://localhost:3000/oauth2callback	'
  }
end