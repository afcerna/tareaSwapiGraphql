class PersonController < ApplicationController
  Person = Tarea2::Client.parse <<-'GRAPHQL'
  query ($id: ID){
    person(id: $id) {
      id
      name
      birthYear
      eyeColor
      gender
      hairColor
      height
      mass
      skinColor
      homeworld {
        id
        name
      }
      filmConnection {
        films {
          id
          title
        }
      }
      starshipConnection {
        starships {
          id
          name
        }
      }
    }
  }
  GRAPHQL

  def show
    response = Tarea2::Client.query(Person, variables: { id: params[:id] })
    @person = response.data.person
  end
end
