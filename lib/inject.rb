class Array

  def cool_inject(start) # start = 0
    self.each do |item|
      start = yield(start, item)
    end
    start
  end

  #def yield(memo,y)
  #  memo * y
  #end

end