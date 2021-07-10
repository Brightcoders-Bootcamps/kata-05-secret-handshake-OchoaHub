# frozen_string_literal: true

# Class with the secret handshake
class Handshake
  def initialize(number)
    @number = number
  end

  def comms
    answer = []
    if @number.is_a? Integer
      binary = @number.to_s(2)
      rules(binary)
    else
      answer
    end
  end

  def rules(binary)
    answer = []
    answer.push('wink') if binary[-1] == '1'
    answer.push('double blink') if binary[-2] == '1'
    answer.push('close your eyes') if binary[-3] == '1'
    answer.push('jump') if binary[-4] == '1'
    answer = answer.reverse if binary[-5] == '1'
    answer
  end
end
