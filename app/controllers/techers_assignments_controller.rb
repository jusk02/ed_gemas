class TechersAssignmentsController < ApplicationController
  before_action :set_techers_assignment, only: [:show, :edit, :update, :destroy]

  # GET /techers_assignments
  # GET /techers_assignments.json
  def index
    @techers_assignments = TechersAssignment.all
  end

  # GET /techers_assignments/1
  # GET /techers_assignments/1.json
  def show
  end

  # GET /techers_assignments/new
  def new
    @techers_assignment = TechersAssignment.new
  end

  # GET /techers_assignments/1/edit
  def edit
  end

  # POST /techers_assignments
  # POST /techers_assignments.json
  def create
    @techers_assignment = TechersAssignment.new(techers_assignment_params)

    respond_to do |format|
      if @techers_assignment.save
        format.html { redirect_to @techers_assignment, notice: 'Techers assignment was successfully created.' }
        format.json { render :show, status: :created, location: @techers_assignment }
      else
        format.html { render :new }
        format.json { render json: @techers_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techers_assignments/1
  # PATCH/PUT /techers_assignments/1.json
  def update
    respond_to do |format|
      if @techers_assignment.update(techers_assignment_params)
        format.html { redirect_to @techers_assignment, notice: 'Techers assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @techers_assignment }
      else
        format.html { render :edit }
        format.json { render json: @techers_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techers_assignments/1
  # DELETE /techers_assignments/1.json
  def destroy
    @techers_assignment.destroy
    respond_to do |format|
      format.html { redirect_to techers_assignments_url, notice: 'Techers assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_techers_assignment
      @techers_assignment = TechersAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def techers_assignment_params
      params.require(:techers_assignment).permit(:teacher_id, :assignment_id)
    end
end
