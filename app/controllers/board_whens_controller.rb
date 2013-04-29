class BoardWhensController < ApplicationController
  # GET /board_whens
  # GET /board_whens.json
  def index
    @board_whens = BoardWhen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @board_whens }
    end
  end

  # GET /board_whens/1
  # GET /board_whens/1.json
  def show
    @board_when = BoardWhen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @board_when }
    end
  end

  # GET /board_whens/new
  # GET /board_whens/new.json
  def new
    @board_when = BoardWhen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @board_when }
    end
  end

  # GET /board_whens/1/edit
  def edit
    @board_when = BoardWhen.find(params[:id])
  end

  # POST /board_whens
  # POST /board_whens.json
  def create
    @board_when = BoardWhen.new(params[:board_when])

    respond_to do |format|
      if @board_when.save
        format.html { redirect_to @board_when, notice: 'Board when was successfully created.' }
        format.json { render json: @board_when, status: :created, location: @board_when }
      else
        format.html { render action: "new" }
        format.json { render json: @board_when.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /board_whens/1
  # PUT /board_whens/1.json
  def update
    @board_when = BoardWhen.find(params[:id])

    respond_to do |format|
      if @board_when.update_attributes(params[:board_when])
        format.html { redirect_to @board_when, notice: 'Board when was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @board_when.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_whens/1
  # DELETE /board_whens/1.json
  def destroy
    @board_when = BoardWhen.find(params[:id])
    @board_when.destroy

    respond_to do |format|
      format.html { redirect_to board_whens_url }
      format.json { head :no_content }
    end
  end
end
