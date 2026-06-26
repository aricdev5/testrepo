# frozen_string_literal: true

require 'sinatra'
require 'sinatra/json'

WEATHER_DATA = {
  location: 'San Francisco, CA',
  updated_at: '2024-06-26T12:00:00Z',
  current: {
    condition: 'Partly Cloudy',
    temperature_f: 68,
    temperature_c: 20,
    humidity_percent: 72,
    wind_mph: 12,
    wind_direction: 'WNW',
    uv_index: 4
  },
  forecast: [
    { day: 'Today',     high_f: 70, low_f: 57, condition: 'Partly Cloudy' },
    { day: 'Thursday',  high_f: 65, low_f: 54, condition: 'Foggy Morning' },
    { day: 'Friday',    high_f: 72, low_f: 58, condition: 'Sunny' },
    { day: 'Saturday',  high_f: 75, low_f: 60, condition: 'Sunny' },
    { day: 'Sunday',    high_f: 69, low_f: 56, condition: 'Mostly Cloudy' }
  ]
}.freeze

get '/api/weather' do
  json WEATHER_DATA
end
