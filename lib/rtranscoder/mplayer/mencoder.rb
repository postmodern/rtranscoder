require 'rtranscoder/mencoder/mencoder_task'

require 'rprogram/program'

module RTranscoder
  class MEncoder < RProgram::Program

    name_program :mencoder

    def initialize(path)
      super(path)
    end

    def self.encode(options={},&block)
      self.create.encode(options,&block)
    end

    def encode(options={},&block)
      run_with_task(MEncoderTask.new(options,&block))
    end

  end
end
