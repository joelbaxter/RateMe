class CreateRatingsController < ApplicationController
  # GET /create_ratings
  # GET /create_ratings.xml
   def index
    @create_ratings = CreateRating.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @create_ratings }
    end
  end

  # GET /create_ratings/1
  # GET /create_ratings/1.xml
  def show
    @create_rating = CreateRating.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @create_rating }
    end
  end

  # GET /create_ratings/new
  # GET /create_ratings/new.xml
  def new
    @create_rating = CreateRating.new

    respond_to do |format|
      
      format.html # new.html.erb
      format.xml  { render :xml => @create_rating }
    end
  end

  # GET /create_ratings/1/edit
  def edit
    @create_rating = CreateRating.find(params[:id])
  end

  # POST /create_ratings
  # POST /create_ratings.xml
  def create
    @create_rating = CreateRating.new(params[:create_rating])

    respond_to do |format|
      if @create_rating.save
        format.html { redirect_to(@create_rating, :notice => 'Create rating was successfully created.') }
        format.xml  { render :xml => @create_rating, :status => :created, :location => @create_rating }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @create_rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /create_ratings/1
  # PUT /create_ratings/1.xml
  def update
    @create_rating = CreateRating.find(params[:id])

    respond_to do |format|
      if @create_rating.update_attributes(params[:create_rating])
        format.html { redirect_to(@create_rating, :notice => 'Create rating was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @create_rating.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /create_ratings/1
  # DELETE /create_ratings/1.xml
  def destroy
    @create_rating = CreateRating.find(params[:id])
    @create_rating.destroy

    respond_to do |format|
      format.html { redirect_to(create_ratings_url) }
      format.xml  { head :ok }
    end
  end
end
