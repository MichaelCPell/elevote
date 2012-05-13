class InfoController < ApplicationController

  before_filter :nav_content_show_elections

  def for_candidates
  @candidate = Candidate.new
  end

  def for_citizens

  end

end
