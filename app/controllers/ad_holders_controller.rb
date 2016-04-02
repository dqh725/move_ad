class AdHoldersController < ApplicationController
  before_action :set_ad_holder, only: [:show, :edit, :update, :destroy]

  # GET /ad_holders
  # GET /ad_holders.json
  def index
    @ad_holders = AdHolder.all
  end

  # GET /ad_holders/1
  # GET /ad_holders/1.json
  def show
  end

  # GET /ad_holders/new
  def new
    @ad_holder = AdHolder.new
  end

  # GET /ad_holders/1/edit
  def edit
  end

  # POST /ad_holders
  # POST /ad_holders.json
  def create
    @ad_holder = AdHolder.new(ad_holder_params)

    respond_to do |format|
      if @ad_holder.save
        format.html { redirect_to @ad_holder, notice: 'Ad holder was successfully created.' }
        format.json { render :show, status: :created, location: @ad_holder }
      else
        format.html { render :new }
        format.json { render json: @ad_holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_holders/1
  # PATCH/PUT /ad_holders/1.json
  def update
    respond_to do |format|
      if @ad_holder.update(ad_holder_params)
        format.html { redirect_to @ad_holder, notice: 'Ad holder was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_holder }
      else
        format.html { render :edit }
        format.json { render json: @ad_holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_holders/1
  # DELETE /ad_holders/1.json
  def destroy
    @ad_holder.destroy
    respond_to do |format|
      format.html { redirect_to ad_holders_url, notice: 'Ad holder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_holder
      @ad_holder = AdHolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_holder_params
      params.require(:ad_holder).permit(:type, :description, :price, :available)
    end
end
