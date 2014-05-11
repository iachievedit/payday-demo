class InvoiceitemsController < ApplicationController
  # GET /invoiceitems
  # GET /invoiceitems.json
  def index
    @invoiceitems = Invoiceitem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoiceitems }
    end
  end

  # GET /invoiceitems/1
  # GET /invoiceitems/1.json
  def show
    @invoiceitem = Invoiceitem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoiceitem }
    end
  end

  # GET /invoiceitems/new
  # GET /invoiceitems/new.json
  def new
    @invoiceitem = Invoiceitem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoiceitem }
    end
  end

  # GET /invoiceitems/1/edit
  def edit
    @invoiceitem = Invoiceitem.find(params[:id])
  end

  # POST /invoiceitems
  # POST /invoiceitems.json
  def create
    @invoiceitem = Invoiceitem.new(params[:invoiceitem])

    respond_to do |format|
      if @invoiceitem.save
        format.html { redirect_to @invoiceitem, notice: 'Invoiceitem was successfully created.' }
        format.json { render json: @invoiceitem, status: :created, location: @invoiceitem }
      else
        format.html { render action: "new" }
        format.json { render json: @invoiceitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoiceitems/1
  # PUT /invoiceitems/1.json
  def update
    @invoiceitem = Invoiceitem.find(params[:id])

    respond_to do |format|
      if @invoiceitem.update_attributes(params[:invoiceitem])
        format.html { redirect_to @invoiceitem, notice: 'Invoiceitem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoiceitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoiceitems/1
  # DELETE /invoiceitems/1.json
  def destroy
    @invoiceitem = Invoiceitem.find(params[:id])
    @invoiceitem.destroy

    respond_to do |format|
      format.html { redirect_to invoiceitems_url }
      format.json { head :no_content }
    end
  end
end
