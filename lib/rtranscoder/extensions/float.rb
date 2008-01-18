class Float

  #
  # Returns the +Float+ in Hz as an +Integer+.
  #
  #   25.05.Hz # => 2505
  #
  def Hz
    self.to_i
  end

  #
  # Returns the +Float+ in kHz as an +Integer+.
  #
  #   1.337.kHz # => 1337
  #
  def kHz
    (self * 1000).Hz
  end

  #
  # Returns the +Float+ in kHz as an +Integer+.
  #
  #   2.6.mHz # => 2600000
  #
  def mHz
    (self * 1000_000).Hz
  end

end
