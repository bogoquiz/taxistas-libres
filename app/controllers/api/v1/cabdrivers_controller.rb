class API::V1::CabdriversController < ApplicationController
  before_action :set_cabdriver, only: [:show, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @cabdrivers = Cabdriver.all

    # Search
    @cabdrivers = @cabdrivers.search(params[:q]) if params[:q]

    # Filter for state
    @cabdrivers = @cabdrivers.state(params[:state]) if params[:state]

    # Order by
    @cabdrivers = @cabdrivers.order(params[:order].gsub(':', ' ')) if params[:order]

    
    #render :file => File.join(Rails.public_path, '404.html'), :status => 404
    if is_mobile_request?
      respond_to do |format|
         format.json { render :json => @cabdrivers }
      end
    else
         render inline: "<% @cabdrivers.each do |p| %><p><%= p.name %></p><p><%= p.cell %></p><p><%= p.state %></p><% end %>"

    end 


  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    render json: @cabdriver if stale?(@cabdriver)
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @cabdriver = Cabdriver.new(cabdriver_params)

    if @cabdriver.save
      render json: @cabdriver, status: :created
    else
      render json: @cabdriver.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    if @cabdriver.update(cabdriver_params)
      head :no_content
    else
      render json: @cabdriver.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @cabdriver.destroy

    head :no_content
  end

  private
    def set_cabdriver
      @cabdriver = Cabdriver.find(params[:id])
     end

    def cabdriver_params
      params.require(:cabdriver).permit(:name, :cell)
    end
end
