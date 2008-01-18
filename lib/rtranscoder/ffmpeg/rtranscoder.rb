require 'rtranscoder/ffmpeg/ffmpeg'

module RTranscoder
  def RTranscoder.thumbnail(options={})
    FFmpeg.thumbnail(options)
  end
end
