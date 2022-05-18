class CountriesController < ApplicationController

  #READ

  def index
    #passes a list of all countries in the database to views/countries/index.html.erb
    @countries = Country.all
  end


  def show
    #get the item at the index passed in by the link and passes it to views/countries/show.html.erb
    @country = Country.find(params[:id])
  end

  #CREATE

  def new
    #creates a new Country object to be modified by the user before being added to the database
    @country = Country.new
  end


  def create
    #create a new object to hold data destined to be saved to the database
    @country = Country.new(subject_params)

    #save the data to the database
    if @country.save
      #if save succedes
      redirect_to(countries_path)
    else
      #if save fails
      render("new")
    end
  end

  #UPDATE


  def edit
    #obtains the parameters for passing into update
    @country = Country.find(params[:id])
  end

  def update
    #tells the database to update the table based on data gathered from views/countries/edit.html.erb
    @country = Country.find(params[:id])

    #check if update succedes or fails
    if @country.update(subject_params)
      #if country is updated successfully then return to the country list
      redirect_to(countries_path(@country))
    else
      #if country fails to update rerender the edit view
      render("create")
    end
  end

  #DELETE

  def delete
    #create form to confirme country deletion
    @country = Country.find(params[:id])
  end

  def destroy
    #remove selected item from database
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to(countries_path)
  end


  private 


  def subject_params
    params.require(:country).permit(:country_name, :country_code)
  end

end
