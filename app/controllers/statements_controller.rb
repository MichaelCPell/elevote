class StatementsController < ApplicationController

respond_to :json

def create

end

def update
@statement = Statement.find(params[:id])
@statement.content = params[:statement][:content]
@statement.save
respond_with @statement

end

def edit

end

def show

end

end