class HeroController < ApplicationController

  def index
    
    @title ="かんたのrailsデビュー"
    @header = "かんたのrailsデビュー"
    if request.post? then
      if params['s1'] then
        @msg = 'you selected:'
        for val in params['s1']
          @msg += val + ' '
        end
      else
        @msg = 'not selected'
      end
    else
      @title = 'Index'
      @msg = 'Select radio button...'
    end
  end #indexの閉じタグ
  
end