class ToolsController < ApplicationController
  before_action :set_tool, except: [:index]
  skip_before_action :authenticate_user!, only: :index

  def index
    @tools = Tool.all
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
