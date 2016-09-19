class CodebitsController < ApplicationController
  before_action :set_codebit, only: [:show, :edit, :update, :destroy]

  # GET /codebits
  # GET /codebits.json
  def index
    @codebits = Codebit.all
  end

  # GET /codebits/1
  # GET /codebits/1.json
  def show
  end

  # GET /codebits/new
  def new
    @codebit = Codebit.new
  end

  # GET /codebits/1/edit
  def edit
  end

  # POST /codebits
  # POST /codebits.json
  def create
    @codebit = Codebit.new(codebit_params)

    respond_to do |format|
      if @codebit.save
        format.html { redirect_to @codebit, notice: 'Codebit was successfully created.' }
        format.json { render :show, status: :created, location: @codebit }
      else
        format.html { render :new }
        format.json { render json: @codebit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codebits/1
  # PATCH/PUT /codebits/1.json
  def update
    respond_to do |format|
      if @codebit.update(codebit_params)
        format.html { redirect_to @codebit, notice: 'Codebit was successfully updated.' }
        format.json { render :show, status: :ok, location: @codebit }
      else
        format.html { render :edit }
        format.json { render json: @codebit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codebits/1
  # DELETE /codebits/1.json
  def destroy
    @codebit.destroy
    respond_to do |format|
      format.html { redirect_to codebits_url, notice: 'Codebit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_codebit
      @codebit = Codebit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codebit_params
      params.require(:codebit).permit(:name, :code, :language)
    end
end
