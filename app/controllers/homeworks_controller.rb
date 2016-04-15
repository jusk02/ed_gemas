class HomeworksController < ApplicationController
  before_action :set_homework, only: [:show, :edit, :update, :destroy]

  # GET /homeworks
  # GET /homeworks.json
  def index
    #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homeworks = assignment.homeworks
  end

  # GET /homeworks/1
  # GET /homeworks/1.json
  def show
     #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homework = assignment.homeworks.find(params[:id])
  end

  # GET /homeworks/new
  def new
    

     #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homework = assignment.homeworks.build
  end

  # GET /homeworks/1/edit
  def edit
     #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homework = assignment.homeworks.find(params[:id])
  end

  # POST /homeworks
  # POST /homeworks.json
  def create
    #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homework = assignment.homeworks.create(homework_params)

    respond_to do |format|
      if @homework.save
        format.html { redirect_to([@homework.assignment, @homework], :notice => 'Homework was successfully created.') }
        
        
        format.json { render :show, status: :created, location: [@homework.assignment, @homework] }
        
      else
        format.html { render :new }
        format.json { render json: @homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homeworks/1
  # PATCH/PUT /homeworks/1.json
  def update
     #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homework = assignment.homeworks.find(homework_params)
    respond_to do |format|
      if @homework.update(homework_params)
        format.html { redirect_to @homework, notice: 'Homework was successfully updated.' }
        format.json { render :show, status: :ok, location: @homework }
      else
        format.html { render :edit }
        format.json { render json: @homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homeworks/1
  # DELETE /homeworks/1.json
  def destroy
     #1st you retrieve the post thanks to params[:post_id]
    assignment = Assignment.find(params[:assignment_id])
    #2nd you create the comment with arguments in params[:comment]
    @homework = assignment.homeworks.find(params[:id])
    @homework.destroy
    respond_to do |format|
      format.html { redirect_to homeworks_url, notice: 'Homework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homework
      @homework = Homework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homework_params
      params.require(:homework).permit(:message, :final_date, :assignment_id,:homework)
    end
end
