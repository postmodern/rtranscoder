require 'rtranscoder/ffmpeg'

include RTranscoder

#
# Encodes a video to FLV.
# Equivalent to:
#   $ ffmpeg -i video.avi -ar 22050 -ab 32 -f flv -s 320x240 video.flv
#
FFmpeg.encode do |ffmpeg|
  ffmpeg.input = 'video.avi'
  ffmpeg.audio_sampling_rate = 22050 # Hz
  ffmpeg.audio_bitrate = 32 # kbit/s
  ffmpeg.video_frame_dimension = '320x240'
  ffmpeg.output_format = :flv
  ffmpeg.output = 'video.flv'
end
