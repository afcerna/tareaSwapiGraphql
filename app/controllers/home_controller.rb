class HomeController < ApplicationController

  AllFilms = Tarea2::Client.parse <<-'GRAPHQL'
  {
    allFilms{
      films{
        title
        releaseDate
        director
        producers
        episodeID
        id
      }
    }
  }
  GRAPHQL

  def index
    @allFilms = Tarea2::Client.query(AllFilms).data.all_films.films
  end
end
