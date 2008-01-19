require 'rtranscoder/mplayer'

include RTranscoder

#
# Plays video.ogg with fullscreen.
# Equivalent to:
#   $ mplayer -zoom -fs video.ogg
#
MPlayer.play do |mplayer|
  mplayer.media = 'video.ogg'
  mplayer.zoom = true
  mplayer.fullscreen = true
end
