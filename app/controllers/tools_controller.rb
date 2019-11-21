class ToolsController < ApplicationController
  before_action :set_tool, except: [:index, :new, :create]
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index


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
    if search[:date] != ''
      @tools = filter_by_date(@tools, search['date'])
    end
    @map_tools = @tools.geocoded

    @markers = @map_tools.map do |tool|
      {
        lat: tool.latitude,
        lng: tool.longitude,
        info_window: render_to_string(partial: "info_window", locals: { tool: tool })
      }
    end
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

  def filter_by_date(tools_array, searched_dates)
    selection = list_dates(searched_dates)
    @tools = tools_array.select do |tool|
      selection.all? { |e| tool.available_dates_after_bookings.include?(e) }
    end
    p @tools
  end

  def list_dates(dates_string)
    dates = dates_string.split(' to ')
    dates.map! { |date| Date.parse(date)}
    list = []
    i = dates[0]
    if dates.length == 2
      while i <= dates[1] do
        list.push(i)
        i += 1
      end
    else
      list.push(dates[0])
    end
    list
  end
end
