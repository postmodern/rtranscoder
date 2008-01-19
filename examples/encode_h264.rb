require 'rtranscoder/mencoder'

include RTranscoder

#
# Encode an input AVI file using the x264 codec.
# Equivalent to:
#   $ mencoder input.avi -o output.avi -ovc x264 -x264encopts bitrate=3000
#     pass=1 nr=2000
#
MEncoder.encode do |mencoder|
  mencoder.input = 'input.avi'
  mencoder.output_video_codec = :x264
  mencoder.x264enc.bitrate = 3000
  mencoder.x264enc.pass = 1
  mencoder.x264enc.nr = 2000
  mencoder.output = 'output.avi'
end
