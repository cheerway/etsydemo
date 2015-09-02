class Admin::ListingsController < ApplicationController
  before_action :set_admin_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_manager!

  # GET /admin/listings
  # GET /admin/listings.json
  def index
    @admin_listings = Admin::Listing.all
  end

  # GET /admin/listings/1
  # GET /admin/listings/1.json
  def show
  end

  # GET /admin/listings/new
  def new
    @admin_listing = Admin::Listing.new
  end

  # GET /admin/listings/1/edit
  def edit
  end

  # POST /admin/listings
  # POST /admin/listings.json
  def create
    @admin_listing = Admin::Listing.new(admin_listing_params)

    respond_to do |format|
      if @admin_listing.save
        format.html { redirect_to @admin_listing, notice: 'Listing was successfully created.' }
        format.json { render :show, status: :created, location: @admin_listing }
      else
        format.html { render :new }
        format.json { render json: @admin_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/listings/1
  # PATCH/PUT /admin/listings/1.json
  def update
    respond_to do |format|
      if @admin_listing.update(admin_listing_params)
        format.html { redirect_to @admin_listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_listing }
      else
        format.html { render :edit }
        format.json { render json: @admin_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/listings/1
  # DELETE /admin/listings/1.json
  def destroy
    @admin_listing.destroy
    respond_to do |format|
      format.html { redirect_to admin_listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_listing
      @admin_listing = Admin::Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_listing_params
      params.require(:admin_listing).permit(:name, :description, :price, :stock)
    end
end
