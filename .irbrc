# Rails 
def activate_authlogic
  controller.request = ActionController::TestRequest.new
  Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(controller)
end

class String
  def has_asian_chars?
    !!(self =~ /\p{Han}|\p{Katakana}|\p{Hiragana}|\p{Hangul}/)
  end
end

module ObjectSpace
  def self.profile(&blk)
    require 'objspace'
 
    enable_gc = GC.disable
    ObjectSpace.trace_object_allocations(&blk)
    objs = Hash.new(0)
    ObjectSpace.each_object { |o|
      if (file = ObjectSpace.allocation_sourcefile(o)) && (line = ObjectSpace.allocation_sourceline(o))
        objs["#{file}:#{line}:#{o.class.name}"] += 1
      end
    }
    ObjectSpace.trace_object_allocations_clear
    GC.enable if enable_gc
    objs
  end
end
