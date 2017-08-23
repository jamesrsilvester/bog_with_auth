class CreaturesController < ApplicationController

  #display all creatures
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creature_path(creature)
    end
  end

  def show
    creatureId = params[:id]
    @creature = Creature.find_by(id: creatureId)
  end

  def edit
    creatureId = params[:id]
    @creature = Creature.find_by(id: creatureId)
    
  end

end
