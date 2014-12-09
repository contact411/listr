class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :find_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = current_user.id

    if @listing.save
      redirect_to @listing
    else
      render :new
    end
  end

  # def create

  #   @event = Event.find(params[:event_id])
  #   @post = @event.posts.new post_params


  #   @post.user_id = current_user.id 
    
  #   if @post.save
  #     redirect_to event_path(@event)
  #   else
  #     render :new
  #   end
  # end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update listing_params
      redirect_to @listing
    else
      render :edit
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    redirect_to listings_path
  end


private
  # def find_listing
  #   if current_user.admin?
  #     @listing = Listing.find(params[:id])
  #   else
  #     @listing = current_user.listings.find(params[:id])
  #   end
  # end

  def listing_params
    params.require(:listing).permit(:title, :description, :address, :price, { category_ids: []})
  end
  
end

# Code for listing _form incase gecoder is not a nice person
# <div class="form-group">
#     <%= f.label :latitude %>
#     <%= f.number_field :latitude %>
# </div>

# <div class="form-group">
#     <%= f.label :longitude %>
#     <%= f.number_field :longitude %>
# </div>

