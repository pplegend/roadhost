class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @type=Type.find(params[:type_id])
    @products = @type.products

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    require 'spreadsheet'
    Spreadsheet.client_encoding = 'UTF-8'
    book=Spreadsheet.open 'app/assets/products/product1.xls'
    @sheet=book.worksheet 0
    
    @product = Product.find(params[:id])
    @type=Type.find(params[:type_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new
    @type=Type.find_by_id(params[:type_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @type=Type.find_by_id(params[:type_id])
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    #@product = Product.new(params[:product])
    @type=Type.find_by_id(params[:type_id])
    respond_to do |format|
      if @type.products.create!(params[:product])
        format.html { redirect_to @type, :notice => 'Product was successfully created.' }
        format.json { render :json => @type, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])
    @type=Type.find_by_id(params[:type_id])
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to type_product_path(@type,@product), :notice => 'Product was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :ok }
    end
  end
end
