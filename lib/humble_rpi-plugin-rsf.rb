#!/usr/bin/env ruby

# file: humble_rpi-plugin-rsf.rb

require 'rscript'
require 'spstrigger_execute'


class HumbleRPiPluginRsf

  def initialize(settings: {}, variables: {})

    @ste = SPSTriggerExecute.new settings[:lookup]
    @rscript = RScript.new
    
  end
  
  def on_do_message(message)
            
    a = @ste.mae '', message

    a.each do |type, x|

      next unless type == :rse
      
      code, args = @rscript.read x
      eval code

    end 

  end
    
end
