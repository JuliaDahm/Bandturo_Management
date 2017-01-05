class CustomersController < ApplicationController
  before_action :customer, only: [:show, :onesheet_doc, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
  end

  def create
    @customer = Customer.create(customer_params)
    respond_to do |format|
      if @customer.save
        CustomerMailer.admin_email(@customer).deliver_later 
          format.html { redirect_to(thanks_path, notice: 'User was successfully created.') }
          format.json { render json: @customer, status: :created, location: @customer }
        else
          format.html { render action: 'new' }
          format.json { render json: @customer.errors, status: :unprocessable_entity }
        end
    end 
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end

  def onesheet
    @customer = Customer.parameterized_search(params[:band_name]).first
    raise ActionController::RoutingError.new('Not Found') if @customer.nil?
  end

  def onesheet_doc
    respond_to do |format|
      format.docx { headers["Content-Disposition"] = "attachment; filename=\"#{@customer.band_name}_One_Sheet.docx\""}
    end
  end 

  private 
  def customer_params
    params.require(:customer).permit(:band_name, :address1, :address2, :city, :state, :zip, :country,
                                     :phone, :email, :depart, :return, :money, :experience, :website,
                                     :soundcloud, :youtube, :bandcamp, :other_site, :artist_bio,
                                     :sounds_like1, :sounds_like2, :sounds_like3, :press_link1,
                                     :press_link2, :press_link3, :press_interest, :poster_interest,
                                     :event_interest, :advert_interest, :products_photos, :products_posters,
                                     :products_recording, :products_mastering, :products_live_equipment,
                                     :products_loan, :products_video, :products_mixing, :products_studio_equipment, 
                                     :products_tickets, :routing, :other_info, :referral, :main_photo, :live_photo, 
                                     :logo, :misc_photo1, :misc_photo2)
  end

  def customer
    @customer = Customer.find(params[:id])
  end 
end
