class FilmController < ApplicationController

  Film = Tarea2::Client.parse <<-'GRAPHQL'
  query ($id: ID){
    film(id: $id) {
       id
       title
       episodeID
       openingCrawl
       director
       producers
       releaseDate
       starshipConnection {
         starships {
           id
           name
         }
       }
       characterConnection {
         characters {
           id
           name
         }
       }
       planetConnection {
         planets {
           id
           name
         }
       }
     }
   }
   GRAPHQL
  def show
    response = Tarea2::Client.query(Film, variables: { id: params[:id] })
    @film = response.data.film
  end
end
