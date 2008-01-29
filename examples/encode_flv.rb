require 'rtranscoder/ffmpeg'

include RTranscoder

#
# Encode an video to FLV.
#
FFmpeg.encode do |ffmpeg|
  ffmpeg.input = 'video.avi'
  ffmpeg.audio_sampling_rate = 22.050.kHz
  ffmpeg.audio_bitrate = 32 # kbit/s
  ffmpeg.video_frame_size = '320x240'
  ffmpeg.output_format = :flv
  ffmpeg.output = 'video.flv'
end

#
# Equivalent to:
#   $ ffmpeg -i video.avi -ar 22050 -ab 32 -f flv -s 320x240 video.flv
#
