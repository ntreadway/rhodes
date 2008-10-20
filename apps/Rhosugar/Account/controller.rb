require 'rhocontroller'

class AccountController < RhoController
  # GET /cases
  def index
    @accounts = Account.find(:all)
	render :index
  end

  # GET /cases/1
  def show
    @accounts = Account.find(@params['id'])
  end

  # GET /cases/new
  def new
    @account = Account.new
	render :new
  end

  # GET /cases/1/edit
  def edit
    @account = Account.find(@params['id'])
	render :edit
  end

  # POST /cases
  def create
    @account = Account.new(@params[:case])
  end

  # POST /cases/1
  def update
    @account = Account.find(@params['id'])
    @account.save
  end

  # POST /cases/1/delete
  def delete
    puts 'params: ' + @params.inspect
    @account = Account.find(@params['id'])
    @account.destroy
	redirect :index
  end
end
