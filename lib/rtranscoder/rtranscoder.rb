require 'rprogram/rprogram'

module RTranscoder
  def RTranscoder.debug
    RProgram.debug
  end

  def RTranscoder.debug=(value)
    RProgram.debug = value
  end
end
