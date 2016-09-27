class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    render component: 'Ideas', props: { ideas: @ideas }
  end
end
