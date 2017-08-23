class CreaturesController < ApplicationController

  #display all creatures
  def index

    @creatures = Creatures.all

  end

end
