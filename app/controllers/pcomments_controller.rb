class PcommentsController < ApplicationController
  # GET /pcomments
  # GET /pcomments.json
  def index
    @pcomments = Pcomment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pcomments }
    end
  end

  # GET /pcomments/1
  # GET /pcomments/1.json
  def show
    @pcomment = Pcomment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pcomment }
    end
  end

  # GET /pcomments/new
  # GET /pcomments/new.json
  def new
    @pcomment = Pcomment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pcomment }
    end
  end

  # GET /pcomments/1/edit
  def edit
    @pcomment = Pcomment.find(params[:id])
  end

  # POST /pcomments
  # POST /pcomments.json
  def create
    @pcomment = Pcomment.new(params[:pcomment])

    respond_to do |format|
      if @pcomment.save
        format.html { redirect_to @pcomment, notice: 'Pcomment was successfully created.' }
        format.json { render json: @pcomment, status: :created, location: @pcomment }
      else
        format.html { render action: "new" }
        format.json { render json: @pcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pcomments/1
  # PUT /pcomments/1.json
  def update
    @pcomment = Pcomment.find(params[:id])

    respond_to do |format|
      if @pcomment.update_attributes(params[:pcomment])
        format.html { redirect_to @pcomment, notice: 'Pcomment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcomments/1
  # DELETE /pcomments/1.json
  def destroy
    @pcomment = Pcomment.find(params[:id])
    @pcomment.destroy

    respond_to do |format|
      format.html { redirect_to pcomments_url }
      format.json { head :no_content }
    end
  end
end
