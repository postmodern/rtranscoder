require 'rtranscoder/mencoder/mencoder_task'
require 'rtranscoder/extensions'

require 'rprogram/program'

module RTranscoder
  class MEncoder < RProgram::Program

    name_program :mencoder

    #
    # Creates a new MEncoder object with the specified _path_ of the
    # +mencoder+ program.
    #
    def initialize(path)
      super(path)
    end

    #
    # See MEncoder#encode.
    #
    def self.encode(options={},&block)
      self.create.encode(options,&block)
    end

    #
    # Runs the +mencoder+ program with the given _options_ and the given
    # _block_ with MEncoderTask.
    #
    def encode(options={},&block)
      run_with_task(MEncoderTask.new(options,&block))
    end

  end
end
