class ItemsController < ApplicationController

  #READ

  def index
    #passes a list of all countries in the database to views/items/index.html.erb
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end



  #CREATE

  def new
    #creates a new Item object to be modified by the user before being added to the database
    @item = Item.new
    @country_selection = Country.all
  end

  def create
    #create a new object to hold data destined to be saved to the database
    @item = Item.new(subject_params)

    #save the data to the database
    if @item.save
      #if save succedes
      redirect_to(items_path)
    else
      #if save fails
      render("new")
    end
  end

  #UPDATE

  def edit
    #obtains the parameters for passing into update
    @item = Item.find(params[:id])
    @country_selection = Country.all
  end

  def update
    #tells the database to update the table based on data gathered from views/countries/edit.html.erb
    @item = Item.find(params[:id])


    #check if update succedes or fails
    if @item.update(subject_params)
      #if item is updated successfully then return to the country list
      redirect_to(items_path(@item))
    else
      #if item fails to update, render the edit view
      render("create")
    end

  end

  #DELETE

  def delete
    #create form to confirme item deletion
    @item = Item.find(params[:id])
    @country_selection = Country.all
  end

  def destroy
    #remove selected item from database
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to(items_path)
  end


  private

  def subject_params
    params.require(:item).permit(:sku, :cost, :amount_in_inventory, :countries_id, :province_of_origin)
  end
end
