class PlanetController < ApplicationController
  Planet = Tarea2::Client.parse <<-'GRAPHQL'
  query ($id: ID){
    planet(id: $id) {
      id
          name
          diameter
          rotationPeriod
          orbitalPeriod
          gravity
          population
          climates
          terrains
          surfaceWater
          residentConnection {
            residents {
              id
              name
            }
          }
          filmConnection{
            films{
              id
              title
            }
          }
        }
      }
      GRAPHQL

  def show
    response = Tarea2::Client.query(Planet, variables: { id: params[:id] })
    @planet = response.data.planet
  end
  end
