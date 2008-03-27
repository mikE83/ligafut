class LigafutsController < ApplicationController
  # GET /ligafuts
  # GET /ligafuts.xml
  def index
#    @ligafuts = Ligafut.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ligafuts }
    end
  end

  # GET /ligafuts/1
  # GET /ligafuts/1.xml
  def show
    @ligafut = Ligafut.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ligafut }
    end
  end

  # GET /ligafuts/new
  # GET /ligafuts/new.xml
  def new
    @ligafut = Ligafut.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ligafut }
    end
  end

  # GET /ligafuts/1/edit
  def edit
    @ligafut = Ligafut.find(params[:id])
  end

  # POST /ligafuts
  # POST /ligafuts.xml
  def create
    @ligafut = Ligafut.new(params[:ligafut])

    respond_to do |format|
      if @ligafut.save
        flash[:notice] = 'Ligafut was successfully created.'
        format.html { redirect_to(@ligafut) }
        format.xml  { render :xml => @ligafut, :status => :created, :location => @ligafut }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ligafut.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ligafuts/1
  # PUT /ligafuts/1.xml
  def update
    @ligafut = Ligafut.find(params[:id])

    respond_to do |format|
      if @ligafut.update_attributes(params[:ligafut])
        flash[:notice] = 'Ligafut was successfully updated.'
        format.html { redirect_to(@ligafut) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ligafut.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ligafuts/1
  # DELETE /ligafuts/1.xml
  def destroy
    @ligafut = Ligafut.find(params[:id])
    @ligafut.destroy

    respond_to do |format|
      format.html { redirect_to(ligafuts_url) }
      format.xml  { head :ok }
    end
  end
end
