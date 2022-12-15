class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def set_lines

  end

  def get_lines
    lines =  db.getLines()
    render :json => lines
  end

  def profile
    @reports = policy_scope(Report)
    # @reports = Report.all
  end

  def liked_shops_map
  end
end
