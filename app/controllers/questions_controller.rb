class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]
    
    if @question.save
      flash[:notice] = "Question was asked."
      redirect_to @question
    else
      flash[:alert] = "There was a error saving the question. Please try again."
      render :new
    end  
  end

  def edit
     @question = Question.find(params[:id])
  end
  
  def updateparams
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]
    
    if @question.save
      flash[:notice] = "Question was updated."
      redirect_to @question
    else
      flash.now[:alert] = "There was error saving the question. Please try again."
      render :edit
    end  
  end
  
  def destroy
    @question = Question.find(params[:id])
    
    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was destroyed successfully"
      redirect_to questions_path
    else
      flash.now[:alert] = "There was error destroying the question"
      render :show
    end  
  end

end#end of ends
