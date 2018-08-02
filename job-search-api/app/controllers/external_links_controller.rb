class ExternalLinksController < ApplicationController
  before_action :set_external_link, only: [:show, :update, :destroy]

  # GET /external_links
  def index
    @external_links = ExternalLink.all

    render json: @external_links
  end

  # GET /external_links/1
  def show
    render json: @external_link
  end

  # POST /external_links
  def create
    @external_link = ExternalLink.new(external_link_params)

    if @external_link.save
      render json: @external_link, status: :created, location: @external_link
    else
      render json: @external_link.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /external_links/1
  def update
    if @external_link.update(external_link_params)
      render json: @external_link
    else
      render json: @external_link.errors, status: :unprocessable_entity
    end
  end

  # DELETE /external_links/1
  def destroy
    @external_link.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_link
      @external_link = ExternalLink.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def external_link_params
      params.require(:external_link).permit(:url, :description, :listing_id)
    end
end
