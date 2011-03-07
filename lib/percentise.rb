# Percentise
module Percentise
  
  VERSION = "0.1.2"

  def self.this(top, bottom)
    if top && bottom
      if bottom == 0
        top_sign = top.to_f <=> 0
        top_sign * 100.0
      else
        100.0 * top.to_f / bottom.to_f
      end
    end
  end
  
  def self.diff(top, bottom)
    # if either is nil, then it is nil
    if top && bottom
      self.this(top - bottom, bottom)
    end
  end

end

def Percentise(*args)
  Percentise.this(*args)
end
