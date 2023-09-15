class WeatherController < ApplicationController
    def show
        response = ::WeatherApi.get_weather(params[:city])
        if response.success?
          @weather_data = response.parsed_response
          @current_time = Time.zone.at(@weather_data['dt']).strftime('%Y-%m-%d %H:%M:%S')
        else
          flash[:error] = 'Could not retrieve weather data'
          redirect_to root_path
        end
      end
end
