class ApplicationController < ActionController::Base
  def query(definition, variables = {})
    response = Tarea2::Client.query(definition, variables: variables)

    if response.errors.any?
      raise QueryError.new(response.errors[:data].join(", "))
    else
      response.data
    end
  end
end
