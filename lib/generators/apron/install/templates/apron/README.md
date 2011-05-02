
/public/javascripts/bundle/* 
=================================
  Usage: 
    Use this directory to include javascript libraries, objects etc.
    We shouldn't be initializing anything in the bundle.
  
  Changes made to these files are automatically updated in dev mode
  as every file is included one by one in dev mode.

  IMPORTANT!
  Staging and production will expect a /public/javascripts/bundle.js file.
  Once you are ready to commit your js changes make sure to run:
    rails g apron:bundle_js

  The current reasoning behind the bundle folder is to include libraries only.
  bundle/lib is for 3rd party jquery plugins etc.
  bundle/*.js im using for our apps libs. 


/public/javascripts/pages/*
=================================
  Usage:
    Use this directory to include javascript initializer code
    and document.ready type stuff, event bindings, etc.
  
  javascripts here should be included via the controller.
  Use ApplicationController#add_javascripts()
  Example usage:
  
    before_filter { |c| add_javascripts("pages/businesses") }
      this will add "pages/businesses" to all rendered views in the controller
  
    You can also add pages per method by including:
      add_javascripts("pages/businesses")
  
    Note they don't actually need to have anything to do with a "page" and you can name them whatever you want.


  /public/javascripts/pages/_global.js
  =================================
    This javascript actually gets appended to the bundle.
    Use this for global document.ready type stuff. Stuff that is part of the template
    or called in a variety of places.
  
  
