class FullapplicationsController < ApplicationController
  before_action :set_fullapplication, only: %i[ show edit update destroy ]

  # GET /fullapplications or /fullapplications.json
  def index
    @fullapplications = Fullapplication.all
  end

  # GET /fullapplications/1 or /fullapplications/1.json
  def show
  end

  # GET /fullapplications/new
  def new
    @fullapplication = Fullapplication.new
  end

  # GET /fullapplications/1/edit
  def edit
  end

  # POST /fullapplications or /fullapplications.json
  def create
    @fullapplication = Fullapplication.new(fullapplication_params)

    respond_to do |format|
      if @fullapplication.save
        format.html { redirect_to fullapplication_url(@fullapplication), notice: "Fullapplication was successfully created." }
        format.json { render :show, status: :created, location: @fullapplication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fullapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fullapplications/1 or /fullapplications/1.json
  def update
    respond_to do |format|
      if @fullapplication.update(fullapplication_params)
        format.html { redirect_to fullapplication_url(@fullapplication), notice: "Fullapplication was successfully updated." }
        format.json { render :show, status: :ok, location: @fullapplication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fullapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fullapplications/1 or /fullapplications/1.json
  def destroy
    @fullapplication.destroy

    respond_to do |format|
      format.html { redirect_to fullapplications_url, notice: "Fullapplication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fullapplication
      @fullapplication = Fullapplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fullapplication_params
      params.require(:fullapplication).permit(:suffix, :first_name, :last_name, :SSN, :birthday, :street_address, :town, :zip_code, :state, :country, :email, :phone_number)
    end
end
