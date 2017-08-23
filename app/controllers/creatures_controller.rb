class CreaturesController < ApplicationController

  #display all creatures
  def index
    @creatures = Creature.all
  end

  def new

  end

end
