class ApplicationController < ActionController::Base


    # ====================== Addition =====================
    def additionForm
      render({ :template => "/First4/addForm.html.erb"})

    end
    
    def additionRes
      @first = params.fetch("first_num").to_f
      @second = params.fetch("second_num").to_f
      @res = @first + @second

      render({ :template => "/First4/addRes.html.erb"})
    end

    # ====================== Subtraction =====================
    def subtractionForm
      render({ :template => "/First4/subtractForm.html.erb"})

    end
    
    def subtractionRes
      @first = params.fetch("first_num").to_f
      @second = params.fetch("second_num").to_f
      @res = @second - @first

      render({ :template => "/First4/subtractRes.html.erb"})
    end

    # ====================== Multiplication =====================
    def multiplicationForm
      render({ :template => "/First4/multiplicationForm.html.erb"})

    end
    
    def multiplicationRes
      @first = params.fetch("first_num").to_f
      @second = params.fetch("second_num").to_f
      @res = @second * @first

      render({ :template => "/First4/multiplicationRes.html.erb"})
    end

    # ====================== Division =====================
    def divideForm
      render({ :template => "/First4/divideForm.html.erb"})

    end
    
    def divideRes
      @first = params.fetch("first_num").to_f
      @second = params.fetch("second_num").to_f
      @res = @first/@second

      render({ :template => "/First4/divideRes.html.erb"})
    end


    def weatherForm
      
      render({ :template => "/APIs/weatherForm.html.erb"})
    end

    def weatherRes
      @lat = params.fetch("user_latitude")
      @long = params.fetch("user_longitude")

      # https://api.darksky.net/forecast/26f63e92c5006b5c493906e7953da893/37.8267,-122.4233
      dsStart = "https://api.darksky.net/forecast/"
      
      dsEnd = "/" + @lat + ","+@long
      dskey = ENV.fetch("DSKEY")
      dsString = dsStart + dskey + dsEnd
      
      @printer = dsString
      render({ :template => "/APIs/weatherRes.html.erb"})
    end

end
