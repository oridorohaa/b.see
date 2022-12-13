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
    @reports = Report.all
  end
end
