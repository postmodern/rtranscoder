require 'rtranscoder/mencoder'

include RTranscoder

#
# Encode an input AVI file using the x264 codec.
#
MEncoder.encode do |mencoder|
  mencoder.input = 'input.avi'
  mencoder.quiet = true

  # x264 settings
  mencoder.output_video_codec = :x264
  mencoder.x264enc.bitrate = 3000
  mencoder.x264enc.nr = 2000

  # faac settings
  mencoder.output_audio_codec = :faac
  mencoder.faac.br = 32
  mencoder.faac.tns = true

  mencoder.output = 'output.mp4'
end

#
# Equivalent to:
#   $ mencoder input.avi -o output.mp4 -queit -ovc x264 -x264encopts \
#     bitrate=3000:nr=2000 -oac faac -faacopts br=32:tns
#
