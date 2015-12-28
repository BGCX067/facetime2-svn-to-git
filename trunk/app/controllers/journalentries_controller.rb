class JournalentriesController < ApplicationController
  # GET /journalentries
  # GET /journalentries.xml
  def index
    @journalentries = Journalentry.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @journalentries }
    end
  end

  # GET /journalentries/1
  # GET /journalentries/1.xml
  def show
    @journalentry = Journalentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @journalentry }
    end
  end

  # GET /journalentries/new
  # GET /journalentries/new.xml
  def new
    @journalentry = Journalentry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @journalentry }
    end
  end

  # GET /journalentries/1/edit
  def edit
    @journalentry = Journalentry.find(params[:id])
  end

  # POST /journalentries
  # POST /journalentries.xml
  def create
    @journalentry = Journalentry.new(params[:journalentry])

    respond_to do |format|
      if @journalentry.save
        flash[:notice] = 'Journalentry was successfully created.'
        format.html { redirect_to(@journalentry) }
        format.xml  { render :xml => @journalentry, :status => :created, :location => @journalentry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @journalentry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /journalentries/1
  # PUT /journalentries/1.xml
  def update
    @journalentry = Journalentry.find(params[:id])

    respond_to do |format|
      if @journalentry.update_attributes(params[:journalentry])
        flash[:notice] = 'Journalentry was successfully updated.'
        format.html { redirect_to(@journalentry) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @journalentry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /journalentries/1
  # DELETE /journalentries/1.xml
  def destroy
    @journalentry = Journalentry.find(params[:id])
    @journalentry.destroy

    respond_to do |format|
      format.html { redirect_to(journalentries_url) }
      format.xml  { head :ok }
    end
  end
end
