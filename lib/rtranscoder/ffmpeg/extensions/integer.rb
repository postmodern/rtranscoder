class Integer

  #
  # Returns an FFmpeg dimension +String+ of +self+ by the specified _height_.
  #
  #   640.by(480) # => "640x480"
  #
  def by(height)
    "#{self}x#{height}"
  end

end
