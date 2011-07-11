class PackagesController < ApplicationController
 def index
   @package = Package.all
 end
 def new
   @package = Package.new
 end
end


