require 'rtranscoder/ffmpeg/ffmpeg_task'
require 'rtranscoder/ffmpeg/extensions'

require 'rprogram/program'

module RTranscoder
  class FFmpeg < RProgram::Program

    name_program 'ffmpeg'

    def initialize(path)
      super(path)
    end

    def self.encode(options={},&block)
      self.create.encode(options,&block)
    end

    def self.thumbnail(options={})
      self.create.thumbnail(options)
    end

    def encode(options={},&block)
      run_with_task(FFmpegTask.new(options,&block))
    end

    def thumbnail(options={})
      encode do |ffmpeg|
        ffmpeg.input = options[:video]
        ffmpeg.disable_audio = true
        ffmpeg.record_start_time = options[:start]
        ffmpeg.record_for = options[:length]
        ffmpeg.record_fps = (options[:fps] || 1)
        ffmpeg.overwrite_file = true
        ffmpeg.output_dimension = options[:dimension]
        ffmpeg.output = options[:image]
      end
    end

  end
end
