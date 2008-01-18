class Float

  def Hz
    self.to_i
  end

  def kHz
    (self * 1000).Hz
  end

  def mHz
    (self * 1000_000).Hz
  end

end
