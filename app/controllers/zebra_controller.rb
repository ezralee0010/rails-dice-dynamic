class ZebraController < ApplicationController
  def index
    render({ :template => "game_templates/home_page"})
  end

  def giraffe
    @num_dice = params.fetch("cat").to_i
    @sides = params.fetch("dog").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end

    render({ :template => "game_templates/dynamic"})
  end

end
