# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
 
```
  rails generate model Login username:string password:string
  rails generate controller Login
  
  rails generate model Money username:string category1:string total1:decimal spent1:decimal category2:string total2:decimal spent2:decimal category3:string total3:decimal spent3:decimal category4:string total4:decimal spent4:decimal category5:string total5:decimal spent5:decimal
  rails db:migrate
  rails generate controller Money
```  
  what was it like before using form
  model making and generating controller
    which files are generated which are manually made how are they generated
  figure out how login_path relates to login index
  figure out id

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
