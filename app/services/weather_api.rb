class WeatherApi
    include HTTParty
    base_uri 'https://api.openweathermap.org/data/2.5'
  
    def self.get_weather(city)
      options = {
        query: {
          q: city,
          appid: Rails.application.config.weather_api_key,
          units: 'metric' # or 'imperial' for Fahrenheit
        }
      }
      get('/weather', options)
    end
end