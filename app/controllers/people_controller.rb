class PeopleController < ApplicationController
  def index
    render json: Person.all
  end

  def show
    person = Person.find(params[:id])
    render json: person
  end

  def create
    person = Person.new(
      name: params[:name],
      league: params[:league],
      rank: params[:rank],
      axe: params[:axe]
    )
    person.save
    render json: person
  end

  def update
    person = Person.find(params[:id])
    person.update(
      name: params[:name] || person.name,
      league: params[:league] || person.league,
      rank: params[:rank] || person.rank,
      axe: params[:axe] || person.axe
    )
    render json: person
  end

  def destroy
    person = Person.find(params[:id])
    person.destroy
    render json: {message: "Person has been obliterated."}
  end

end
