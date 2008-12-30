= RTranscoder

* http://rtranscoder.rubyforge.org/
* Postmodern (postmodern.mod3 at gmail.com)

== DESCRIPTION:
  
A Rubyful interface to various transcoding utilities using the RProgram
library.

No more must one have to provide a shell command in order to run
ffmpeg or mencoder for one's transcoding needs. RTranscoder and RProgram
have mapped all the command-line options of various transcoding utilities
to Ruby classes and methods for your convenience.

== FEATURES/PROBLEMS:
  
* Supports FFmpeg.
* Supports MPlayer.
* Supports MEncoder.

== REQUIREMENTS:

* RProgram >= 0.1.3

== INSTALL:

  $ sudo gem install rtranscoder

== EXAMPLES:

* Encode a video to FLV.

    require 'rtranscoder/ffmpeg'

    include RTranscoder

    FFmpeg.encode do |ffmpeg|
      ffmpeg.input = 'video.avi'
      ffmpeg.audio_sampling_rate = 22.050.kHz
      ffmpeg.audio_bitrate = 32 # kbit/s
      ffmpeg.video_frame_size = '320x240'
      ffmpeg.output_format = :flv
      ffmpeg.output = 'video.flv'
    end

  Equivalent to:

      $ ffmpeg -i video.avi -ar 22050 -ab 32 -f flv -s 320x240 video.flv

* Encode an input AVI file using the x264 codec.

    require 'rtranscoder/mencoder'

    include RTranscoder

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

  Equivalent to:

    $ mencoder input.avi -o output.mp4 -queit -ovc x264 -x264encopts \
      bitrate=3000:nr=2000 -oac faac -faacopts br=32:tns

* Extract frames starting at 00:00:03 for 00:00:01.

    require 'rtranscoder/ffmpeg'

    include RTranscoder

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

  Or even simplier...

    require 'rtranscoder/ffmpeg'

    RTranscoder.thumbnail(:video => 'video.flv',
                          :start => '00:00:03',
			  :length => '00:00:01',
			  :width => 320,
			  :height => 240,
			  :image => 'video_thumbnail_%d.jpg')

  Both are equivalent to:

      $ ffmpeg -i video.flv -an -ss 00:00:03 -t 00:00:01 -r 1 -y \
        -s 320x240 video_thumbnail_%d.jpg

== LICENSE:

The MIT License

Copyright (c) 2008 Hal Brodigan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
