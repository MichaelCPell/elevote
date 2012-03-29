class UserEmailsController < ApplicationController
  # GET /user_emails
  # GET /user_emails.json
  def index
    @user_emails = UserEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_emails }
    end
  end

  # GET /user_emails/1
  # GET /user_emails/1.json
  def show
    @user_email = UserEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_email }
    end
  end

  # GET /user_emails/new
  # GET /user_emails/new.json
  def new
    @user_email = UserEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_email }
    end
  end

  # GET /user_emails/1/edit
  def edit
    @user_email = UserEmail.find(params[:id])
  end

  # POST /user_emails
  # POST /user_emails.json
  def create
    @user_email = UserEmail.new(params[:user_email])

    respond_to do |format|
      if @user_email.save
        format.html { redirect_to root_url }
        format.json { render json: @user_email, status: :created, location: @user_email }
      else
        format.html { render action: "new" }
        format.json { render json: @user_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_emails/1
  # PUT /user_emails/1.json
  def update
    @user_email = UserEmail.find(params[:id])

    respond_to do |format|
      if @user_email.update_attributes(params[:user_email])
        format.html { redirect_to @user_email, notice: 'User email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_emails/1
  # DELETE /user_emails/1.json
  def destroy
    @user_email = UserEmail.find(params[:id])
    @user_email.destroy

    respond_to do |format|
      format.html { redirect_to user_emails_url }
      format.json { head :no_content }
    end
  end
end
