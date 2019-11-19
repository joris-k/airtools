class ToolsController < ApplicationController
  before_action :set_tool, except: [:index, :new, :create]
  skip_before_action :authenticate_user!, only: :index

  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :category, :description)
  end

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
