# README

 Ruby version: ruby 3.1.2p20

 This is the replit version of my submission for the Shopify Production Engineer Challenge as shown [here](https://docs.google.com/document/d/1cgmV2DW5mEOxhh5ekyopU4Cef07FNalP7WqAJdgpBuw/edit)

To summarize my understanding of the challenge i am supposed to make a web app to store
Inventory item information along with a web app to view and modify information stored in
a database.

Technologies i used are Ruby on rails for building the app and mysql server for storing inventory items.

I used the InventoryItem found in Shopify docs [here](https://shopify.dev/api/admin-rest/2022-04/resources/inventoryitem#resource-object) but i modified as to make it more useful in a more general environment.


## Running the app

to run the app the run button at the top of the screen should start the server after which the app will be accessable through [this link.](https://replit.com/@AlexanderGullen/ShopfiyProductionEngineerChallenge#app/controllers/application_controller.rb)

## Running commands

running commands, by default the command to start the rails server manually is <code>rails server --binding=0.0.0.0</code> this starts up the developement server which in turn will use the developement database which is the only one i have had time to intiate so far
