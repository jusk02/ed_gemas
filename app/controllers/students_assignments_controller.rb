class StudentsAssignmentsController < ApplicationController
  before_action :set_students_assignment, only: [:show, :edit, :update, :destroy]

  # GET /students_assignments
  # GET /students_assignments.json
  def index
    @students_assignments = StudentsAssignment.all
  end

  # GET /students_assignments/1
  # GET /students_assignments/1.json
  def show
  end

  # GET /students_assignments/new
  def new
    @students_assignment = StudentsAssignment.new
  end

  # GET /students_assignments/1/edit
  def edit
  end

  # POST /students_assignments
  # POST /students_assignments.json
  def create
    @students_assignment = StudentsAssignment.new(students_assignment_params)

    respond_to do |format|
      if @students_assignment.save
        format.html { redirect_to @students_assignment, notice: 'Students assignment was successfully created.' }
        format.json { render :show, status: :created, location: @students_assignment }
      else
        format.html { render :new }
        format.json { render json: @students_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students_assignments/1
  # PATCH/PUT /students_assignments/1.json
  def update
    respond_to do |format|
      if @students_assignment.update(students_assignment_params)
        format.html { redirect_to @students_assignment, notice: 'Students assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @students_assignment }
      else
        format.html { render :edit }
        format.json { render json: @students_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students_assignments/1
  # DELETE /students_assignments/1.json
  def destroy
    @students_assignment.destroy
    respond_to do |format|
      format.html { redirect_to students_assignments_url, notice: 'Students assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_students_assignment
      @students_assignment = StudentsAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def students_assignment_params
      params.require(:students_assignment).permit(:student_id, :assignment_id)
    end
end
