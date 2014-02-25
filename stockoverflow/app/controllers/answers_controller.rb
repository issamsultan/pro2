class AnswersController < ApplicationController
  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer = Answer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    @answer = Answer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/1/edit
  def edit
    @answer = Answer.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(params[:answer])
    @photo = Photo.find(params[:answer][:photo_id])

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @photo, notice: 'Answer was successfully created.' }
        # format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    @answer = Answer.find(params[:id])
    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote_up
    @answer = Answer.find(params[:id])
    @photo = @answer.photo
    begin
      current_user.vote_for(@answer)
      redirect_to @photo, notice: 'you liked the answer' 
      
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def vote_down
    @answer = Answer.find(params[:id])
    @photo = @answer.photo
    begin
      current_user.vote_against(@answer)
      redirect_to @photo, notice: 'you disliked the answer' 
      
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end

  def remove_vote
    @answer = Answer.find(params[:id])
    begin
      current_user.unvote_for(@answer)
      redirect_to @answer, notice: 'you removed your vote' 
      
    rescue ActiveRecord::RecordInvalid
      render :nothing => true, :status => 404
    end
  end


  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end
end
