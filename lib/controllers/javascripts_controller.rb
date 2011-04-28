module JavascriptsController
  
  def add_javascripts(*args)
    @javascript_files ||= []
    @javascript_files.concat(args)
  end
    
end