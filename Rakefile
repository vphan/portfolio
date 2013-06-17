# desc "compile and run the site"
# task :default do
#   pids = [
#     spawn("jekyll"), # put `auto: true` in your _config.yml
#     spawn("scss --watch _assets:stylesheets:css"),
#     spawn("coffee -b -w -o javascripts -c _assets/*.coffee")
#   ]

#   trap "INT" do
#     Process.kill "INT", *pids
#     exit 1
#   end

#   loop do
#     sleep 1
#   end
# end


require 'sprockets'
require 'sass'
require 'coffee-script'



namespace :assets do

  def sprockets
    environment = Sprockets::Environment.new
    environment.append_path File.join('_assets', 'stylesheets')
    environment.append_path File.join('_assets', 'javascripts')
    environment
  end

  desc 'compile assets'
  task :compile => [:compile_js, :compile_css] do
  end
 
  desc 'compile javascript assets'
  task :compile_js do
    asset     = sprockets['application.js']
    outpath   = File.join('assets', 'js')
    outfile   = Pathname.new(outpath).join('application.js') # may want to use the digest in the future?
 
    FileUtils.mkdir_p outfile.dirname
 
    asset.write_to(outfile)
    #asset.write_to("#{outfile}.gz")
    puts "successfully compiled js assets"
  end
 
  desc 'compile css assets'
  task :compile_css do
    #sprockets = Application.settings.sprockets
    asset     = sprockets['application.css']
    outpath   = File.join('assets', 'css')
    outfile   = Pathname.new(outpath).join('application.css') # may want to use the digest in the future?
 
    FileUtils.mkdir_p outfile.dirname
 
    asset.write_to(outfile)
    #asset.write_to("#{outfile}.gz")
    puts "successfully compiled css assets"
  end
  # todo: add :clean_all, :clean_css, :clean_js tasks, invoke before writing new file(s)
end