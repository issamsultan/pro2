class PhotosController < ApplicationController
  load_and_authorize_resource
  # GET /photos
  # GET /photos.json
  def index

      if params[:search]
        @photos = Photo.plusminus_tally.where('title ILIKE ? OR description ILIKE ?', "%#{params[:search]}%", "%#{params[:search]}%").paginate(:page => params[:page], :per_page => 10)
      elsif params[:tag]
        @photos = Photo.plusminus_tally.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 10)
      else
        @photos = Photo.plusminus_tally.paginate(:page => params[:page], :per_page => 10)
      end

    respond_to do |format|
      format.html # index.html.erb
      format.js 
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])
    @answer = Answer.new(photo_id: params[:id], user_id: current_user.id) if current_user
    @answers = @photo.answers.plusminus_tally.order('plusminus_tally DESC')
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(params[:photo])
    @photo.user = current_user
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote_up
    @photo = Photo.find(params[:id])
    begin
      current_user.vote_for(@photo)
      redirect_to @photo, notice: 'you liked the photo' 
      
      rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def vote_down
    @photo = Photo.find(params[:id])
    begin
      current_user.vote_against(@photo)
      redirect_to @photo, notice: 'you disliked the photo' 
      
      rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def remove_vote
    @photo = Photo.find(params[:id])
    begin
      current_user.unvote_for(@photo)
      redirect_to @photo, notice: 'you removed your vote' 
      
      rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end
end
