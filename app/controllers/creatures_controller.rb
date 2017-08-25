class CreaturesController < ApplicationController

  #display all creatures
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    # creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    creature_id = params[:id]
    @creature = Creature.find_by(id: creature_id)
  end

  def edit
    creature_id = params[:id]
    @creature = Creature.find_by(id: creature_id)
  end

  def update

    # get the creature id from the params
    creature_id = params[:id]
    # use the creature_id to find the right creature in the DB
    creature = Creature.find_by(id: creature_id)
    # update the creature
    creature.update_attributes(creature_params)
    # redirect to show the updated creature
    redirect_to creature_path(creature)
    # could also be:
    # redirect_to "/creatures/#{creature.id}"

  end

  def destroy
    creature_id = params[:id]
    creature = Creature.find_by(id: creature_id)
    creature.delete
    redirect_to creatures_path

  end

  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
