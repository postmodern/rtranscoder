require 'rtranscoder/ffmpeg/ffmpeg'

module RTranscoder
  #
  # See FFmpeg.thumbnail.
  #
  def RTranscoder.thumbnail(options={})
    FFmpeg.thumbnail(options)
  end
end
