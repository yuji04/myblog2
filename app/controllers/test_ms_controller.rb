class TestMsController < ApplicationController
  before_action :set_test_m, only: [:show, :edit, :update, :destroy]

  # GET /test_ms
  # GET /test_ms.json
  def index
    @test_ms = TestM.all
  end

  # GET /test_ms/1
  # GET /test_ms/1.json
  def show
  end

  # GET /test_ms/new
  def new
    @test_m = TestM.new
  end

  # GET /test_ms/1/edit
  def edit
  end

  # POST /test_ms
  # POST /test_ms.json
  def create
    @test_m = TestM.new(test_m_params)

    respond_to do |format|
      if @test_m.save
        format.html { redirect_to @test_m, notice: 'Test m was successfully created.' }
        format.json { render :show, status: :created, location: @test_m }
      else
        format.html { render :new }
        format.json { render json: @test_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_ms/1
  # PATCH/PUT /test_ms/1.json
  def update
    respond_to do |format|
      if @test_m.update(test_m_params)
        format.html { redirect_to @test_m, notice: 'Test m was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_m }
      else
        format.html { render :edit }
        format.json { render json: @test_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_ms/1
  # DELETE /test_ms/1.json
  def destroy
    @test_m.destroy
    respond_to do |format|
      format.html { redirect_to test_ms_url, notice: 'Test m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_m
      @test_m = TestM.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_m_params
      params.require(:test_m).permit(:title, :comment)
    end
end
