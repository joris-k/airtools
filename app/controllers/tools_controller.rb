class ToolsController < ApplicationController
  before_action :set_tool, except: []

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
