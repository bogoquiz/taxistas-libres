class API::V1::CabdriversController < ApplicationController
  before_action :set_cabdriver, only: [:show, :update, :destroy]
  before_action :is_geo, only: [:index]

  # GET /contacts
  # GET /contacts.json
  def index
    @cabdrivers = Cabdriver.all
    #{}"4.6993083","74.1124884" ?latitude=4.664821&longitude=-74.0714571
    @cabdrivers = Cabdriver.reverse_geocoded_by(params[:latitude],params[:longitude]) if is_geo #(params[:latitude] && params[:longitude])

    if is_geo # (params[:latitude] && params[:longitude])

      @cabdrivers = Geocoder.search(params[:latitude] + "," + params[:longitude])[0].formatted_address

      #render json:  @locate

    end

    # Search
    @cabdrivers = @cabdrivers.search(params[:q]) if params[:q]

    # Filter for occupied
    @cabdrivers = @cabdrivers.occupied(params[:occupied]) if params[:occupied]

    # Order by
    @cabdrivers = @cabdrivers.order(params[:order].gsub(':', ' ')) if params[:order]

    #puts @locate
    
    #render :file => File.join(Rails.public_path, '404.html'), :status => 404
    if is_mobile_request?
      respond_to do |format|
         #format.json { render :json => @cabdrivers }
         render json: @cabdrivers
      end
    else 
        if is_geo
         render json: @cabdrivers
        else
         
         render inline: "<% @cabdrivers.each do |p| %><p><%= p.name %></p><p><%= p.cell %></p><p><%= p.latitude %></p><% end %>"
        end 
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
      #params.require(:cabdriver).permit(:name, :cell)
      params.require(:cabdriver).permit(:name, 
                                        :cell,
                                        :occupied, 
                                        :latitude, 
                                        :longitude)
    end

    def is_geo
      if (params[:latitude] && params[:longitude])
        return true
      else
        return false
      end
    end 
end
