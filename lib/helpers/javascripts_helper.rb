module JavascriptsHelper

  def render_javascripts
    scripts = []
    if Rails.env.development?
      scripts.push("apron/engines/jquery")
      scripts.push(bundled_javascripts)
    else
      scripts.push("#{request.protocol}code.jquery.com/jquery-1.5.1.min.js")
      scripts.push("apron/bundle/all")
    end

    scripts.push(@javascript_files) if @javascript_files

    javascript_include_tag(scripts)
  end


  def bundled_javascripts
    javascript_path = Rails.root.join('public', 'javascripts', "apron")
    bundle = []

    # 3rd party libraries should load first...
    Dir["#{javascript_path}/vendor/*.js"].each do |script| 
      bundle.push("apron/vendor/#{File.basename(script)}")
    end

    # then our libraries...    
    Dir["#{javascript_path}/lib/*.js"].each do |script| 
      bundle.push("apron/lib/#{File.basename(script)}")
    end

    # add the global pages javascript to the bundle last.
    global_js = "#{javascript_path}/pages/_global.js"
    if File.exist?(global_js)
      bundle.push("pages/_global.js")
    end  

    bundle
  end

end