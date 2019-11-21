class ToolsController < ApplicationController
  before_action :set_tool, except: [:index, :new, :create]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @map_tools = Tool.geocoded

    @markers = @map_tools.map do |tool|
      {
        lat: tool.latitude,
        lng: tool.longitude,
        info_window: render_to_string(partial: "info_window", locals: { tool: tool })
      }
    end

    search = params[:search]
    search_command = []
    search_values = {}
    if !search.nil?
      search.each do |filter|
        if filter[1] != ""
          value = ""
          if filter[0] == "category" || filter[0] == "brand"
            value = filter[1]
            search_command << "#{filter[0]} = :#{filter[0]}"
          elsif filter[0] == "price"
            value = filter[1].to_i
            search_command << "#{filter[0]} <= :#{filter[0]}"
          elsif filter[0] == "location"
          elsif filter[0] == "date"
          end
          search_values[filter[0].to_sym] = value
        end
      end
    end
    @tools = policy_scope(Tool).where(search_command.join(" AND "), search_values)
  end

  def show
    @map_tools = Tool.geocoded

    @markers = @map_tools.map do |tool|
      {
        lat: @tool.latitude,
        lng: @tool.longitude
      }
    end
  end

  def new
    @tool = Tool.new
    authorize @tool
  end

  def create
    @tool = Tool.new(tool_params)
    date_array = params[:tool][:date].split(' to ')
    authorize @tool
    @tool.user = current_user
    @tool.date = date_array
    if @tool.save
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tool.update(tool_params)
    redirect_to tool_path(@tool)
  end

  def destroy
    @tool.destroy
    redirect_to root_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :brand, :price, :category, :description, :photo, :address)
  end

  def set_tool
    @tool = Tool.find(params[:id])
    authorize @tool
  end
end
