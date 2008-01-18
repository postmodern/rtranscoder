require 'rtranscoder/ffmpeg'

include RTranscoder

#
# Extracts a frame at 00:00:03.
# Equivlanent to:
#   $ ffmpeg -i video.flv -an -ss 00:00:03 -t 00:00:01 -r 1 -y -s 320x240 \
#     video_thumbnail.jpg
#
FFmpeg.encode do |ffmpeg|
  ffmpeg.input = 'video.flv'
  ffmpeg.disable_audio = true
  ffmpeg.record_start_time = '00:00:03'
  ffmpeg.record_for = '00:00:01'
  ffmpeg.record_fps = 1
  ffmpeg.overwrite_file = true
  ffmpeg.output_dimension = '320x240'
  ffmpeg.output = 'video_thumbnail%d.jpg'
end

#
# Or even simplier...
#
RTranscoder.thumbnail(:video => 'video.flv',
                      :start => '00:00:03',
                      :length => '00:00:01',
                      :dimension => '320x240',
                      :image => 'thumb%d.jpg')
