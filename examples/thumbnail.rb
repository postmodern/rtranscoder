require 'rtranscoder/ffmpeg'

include RTranscoder

#
# Extract frames starting at 00:00:03 for 00:00:01.
#
FFmpeg.encode do |ffmpeg|
  ffmpeg.input = 'video.flv'
  ffmpeg.disable_audio = true
  ffmpeg.record_start_time = '00:00:03'
  ffmpeg.record_for = '00:00:01'
  ffmpeg.fps = 1
  ffmpeg.overwrite_output_files = true
  ffmpeg.video_frame_size = '320x240'
  ffmpeg.output = 'video_thumbnail_%d.jpg'
end

#
# Or even simplier...
#
RTranscoder.thumbnail(:video => 'video.flv',
                      :start => '00:00:03',
                      :length => '00:00:01',
                      :width => 320,
                      :height => 240,
                      :image => 'video_thumbnail_%d.jpg')

#
# Both equivalent to:
#   $ ffmpeg -i video.flv -an -ss 00:00:03 -t 00:00:01 -r 1 -y \
#     -s 320x240 video_thumbnail_%d.jpg
#
