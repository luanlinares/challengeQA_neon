# frozen_string_literal: true

class Movieget
  def movies_api
    HTTParty.get(
      'http://swapi.co/api/films/',
      headers: {
        'Content-Type' => 'application/jason'
      }
    )
  end
end
