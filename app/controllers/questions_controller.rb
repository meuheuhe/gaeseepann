class QuestionsController < ApplicationController
  def new
    unless user_signed_in?
    redirect_to '/login'
    end
    @us = User.all
  end

  def create

    
    u=User.new
    u.email = params[:email]
    u.id = params[:id]
    u.last_sign_in_at = params[:last_sign_in_at]
    u.created_at = params[:created_at]
    u.save
    
    q=Question.new
    q.title = params[:input_name]
    q.content = params[:input_content]
    q.email = current_user.email
    q.save
    redirect_to '/questions/index'
  end

  def index
    unless user_signed_in?
    redirect_to '/login'
    end
    
    #user= current_user.id
    #unless user ==  1 || user == 2
    #redirect_to :back #그 전에 있던 url로 넘어간다 back
    #end
    @ad= current_user.id
    @ad_id = 'admin@admin.com'
    @us= User.all
    @qs = Question.all
    @content_post = Question.all

  end

  def destroy

        @destroy_post = Question.find(params[:id])
        @destroy_post.destroy
        redirect_to '/questions/index'

    
  end
    def content
    @content_post = Question.find(params[:id])
    @content_post.title =params[:update_name] 
    @content_post.content =params[:update_content]
    @content_post.save
    redirect_to '/questions/index'
    end
    
  
  def content_view
     @content_post = Question.find(params[:id])
  end
  
  def update
    @one_post = Question.find(params[:id])
    @one_post.title = params[:update_name]
    @one_post.content = params[:update_content]
    @one_post.save
    redirect_to "/questions/index"
  end

  def update_view
    @one_post = Question.find(params[:id])
  end
  def comment_create
    @comment=Comment.new(question_id: params[:question_id], content: params[:content])
    @comment.save
    redirect_to :back
    
  end
  def comment_destroy
    @cd=Comment.find(params[:id])
    @cd.destroy
    
    redirect_to '/questions/index'
  end
  def home1
    unless user_signed_in?
    redirect_to '/login'
    end
  end
  
  def admin
    unless user_signed_in?
    redirect_to '/login'
    end
  
    unless  current_user.email ==  'admin@admin.com'
    redirect_to "/questions/grade"#그 전에 있던 url로 넘어간다 back
    
    end
    @us = User.all
  end
  
  def grade
    unless user_signed_in?
    redirect_to '/login'
    end
  end

end
