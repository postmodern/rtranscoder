require 'rtranscoder/mplayer/mplayer_task'
require 'rtranscoder/extensions'

require 'rprogram/program'

module RTranscoder
  class MPlayer < RProgram::Program

    name_program :mplayer

    #
    # Creates a new MPlayer object with the specified _path_ of the
    # +mplayer+ program.
    #
    def initialize(path)
      super(path)
    end

    #
    # See MPlayer#play.
    #
    def self.play(options={},&block)
      self.find.play(options,&block)
    end

    #
    # Runs the +mplayer+ program with the given _options_ and the given
    # _block_ using MPlayerTask.
    #
    def play(options={},&block)
      run_task(MPlayerTask.new(options,&block))
    end

  end
end
