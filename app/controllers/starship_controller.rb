class StarshipController < ApplicationController
  Starship = Tarea2::Client.parse <<-'GRAPHQL'
  query ($id: ID){
    starship(id: $id) {
      id
        name
        model
        starshipClass
        manufacturers
        costInCredits
        length
        crew
        passengers
        maxAtmospheringSpeed
        hyperdriveRating
        MGLT
        cargoCapacity
        consumables
        pilotConnection{
          pilots{
            id
            name
          }
        }
        filmConnection {
          films {
            id
            title
          }
        }
      }
    }
    GRAPHQL

  def show
    response = Tarea2::Client.query(Starship, variables: { id: params[:id] })
    @starship = response.data.starship
  end
  end
