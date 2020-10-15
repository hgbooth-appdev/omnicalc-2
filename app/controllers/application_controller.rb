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


    # ====================== Division =====================


end
