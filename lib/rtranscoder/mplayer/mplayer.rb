require 'rtranscoder/mplayer/mplayer_task'

require 'rprogram/program'

module RTranscoder
  class MPlayer < RProgram::Program

    name_program :mplayer

    def initialize(path)
      super(path)
    end

    def self.encode(options={},&block)
      self.create.encode(options,&block)
    end

    def play(options={},&block)
      run_with_task(MPlayerTask.new(options,&block))
    end

  end
end
