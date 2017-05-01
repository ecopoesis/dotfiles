=begin
 This is a machine generated stub using stdlib-doc for <b>module Byebug</b>
 Sources used:  gem byebug, v. 9.0.6
 Created by IntelliJ Ruby Stubs Generator.
=end

# == Summary
# 
# This is a singleton class allows controlling byebug. Use it to start/stop
# byebug, set/remove breakpoints, etc.
module Byebug
    # Byebug.add_catchpoint(exception) -> exception
    # 
    # Adds a new exception to the catchpoints hash.
    def self.add_catchpoint(exception)
        #This is a stub, used for indexing
    end
    # Byebug.breakpoints -> array
    # 
    # Returns an array of breakpoints.
    def self.breakpoints()
        #This is a stub, used for indexing
    end
    # Byebug.catchpoints -> hash
    # 
    # Returns the catchpoints hash.
    def self.catchpoints()
        #This is a stub, used for indexing
    end
    # Byebug.contexts -> array
    # 
    #  Returns an array of all contexts.
    def self.contexts()
        #This is a stub, used for indexing
    end
    # Byebug.current_context -> context
    # 
    # Returns the current context.
    #   <i>Note:</i> Byebug.current_context.thread == Thread.current
    def self.current_context()
        #This is a stub, used for indexing
    end
    # Byebug.debug_load(file, stop = false) -> nil
    # 
    # Same as Kernel#load but resets current context's frames.
    # +stop+ parameter forces byebug to stop at the first line of code in +file+
    def self.debug_load(file, stop = false)
        #This is a stub, used for indexing
    end
    # Byebug.post_mortem? -> bool
    # 
    # Returns +true+ if post-mortem debugging is enabled.
    def self.post_mortem?()
        #This is a stub, used for indexing
    end
    # Byebug.post_mortem = bool
    # 
    # Sets post-moterm flag.
    def self.post_mortem= bool
        #This is a stub, used for indexing
    end
    # Byebug.raised_exception -> exception
    # 
    # Returns raised exception when in post_mortem mode.
    def self.raised_exception()
        #This is a stub, used for indexing
    end
    # Byebug.start -> bool
    # 
    # The return value is the value of !Byebug.started? <i>before</i> issuing the
    # +start+; That is, +true+ is returned, unless byebug was previously started.
    def self.start()
        #This is a stub, used for indexing
    end
    # Byebug.started? -> bool
    # 
    # Returns +true+ byebug is started.
    def self.started?()
        #This is a stub, used for indexing
    end
    # Byebug.stop -> bool
    # 
    # This method disables byebug. It returns +true+ if byebug was already
    # disabled, otherwise it returns +false+.
    def self.stop()
        #This is a stub, used for indexing
    end
    def self.stoppable?()
        #This is a stub, used for indexing
    end
    # Byebug.thread_context(thread) -> context
    # 
    #  Returns context of the thread passed as an argument.
    def self.thread_context(thread)
        #This is a stub, used for indexing
    end
    # Byebug.tracing? -> bool
    # 
    # Returns +true+ if global tracing is enabled.
    def self.tracing?()
        #This is a stub, used for indexing
    end
    # Byebug.tracing = bool
    # 
    # Sets the global tracing flag.
    def self.tracing= bool
        #This is a stub, used for indexing
    end
    # Byebug.verbose? -> bool
    # 
    # Returns +true+ if global verbose flag for TracePoint API events is enabled.
    def self.verbose?()
        #This is a stub, used for indexing
    end
    # Byebug.verbose = bool
    # 
    # Sets the global verbose flag for TracePoint API events is enabled.
    def self.verbose= bool
        #This is a stub, used for indexing
    end
    class Context
        def backtrace()
            #This is a stub, used for indexing
        end
        def dead?()
            #This is a stub, used for indexing
        end
        # context.frame_binding(frame_position = 0) -> binding
        # 
        # Returns frame's binding.
        def frame_binding(frame_position = 0)
            #This is a stub, used for indexing
        end
        # context.frame_class(frame_position = 0) -> binding
        # 
        # Returns frame's defined class.
        def frame_class(frame_position = 0)
            #This is a stub, used for indexing
        end
        # context.frame_file(frame_position = 0) -> string
        # 
        # Returns the name of the file in the frame.
        def frame_file(frame_position = 0)
            #This is a stub, used for indexing
        end
        # context.frame_line(frame_position = 0) -> int
        # 
        # Returns the line number in the file in the frame.
        def frame_line(frame_position = 0)
            #This is a stub, used for indexing
        end
        # context.frame_method(frame_position = 0) -> sym
        # 
        # Returns the sym of the method in the frame.
        def frame_method(frame_position = 0)
            #This is a stub, used for indexing
        end
        # context.frame_self(frame_postion = 0) -> obj
        # 
        # Returns self object of the frame.
        def frame_self(frame_postion = 0)
            #This is a stub, used for indexing
        end
        def ignored?()
            #This is a stub, used for indexing
        end
        # context.resume -> nil
        # 
        # Resumes thread from the suspended mode.
        def resume()
            #This is a stub, used for indexing
        end
        # context.step_into(steps, frame = 0)
        # 
        # Stops the current context after a number of +steps+ are made from frame
        # +frame+ (by default the newest one).
        def step_into(steps, frame = 0)
            #This is a stub, used for indexing
        end
        # context.step_out(n_frames = 1, force = false)
        # 
        # Stops after +n_frames+ frames are finished. +force+ parameter (if true)
        # ensures that the execution will stop in the specified frame even when there
        # are no more instructions to run. In that case, it will stop when the return
        # event for that frame is triggered.
        def step_out(n_frames = 1, force = false)
            #This is a stub, used for indexing
        end
        # context.step_over(lines, frame = 0)
        # 
        # Steps over +lines+ lines in frame +frame+ (by default the newest one) or
        # higher (if frame +frame+ finishes).
        def step_over(lines, frame = 0)
            #This is a stub, used for indexing
        end
        def stop_reason()
            #This is a stub, used for indexing
        end
        # context.suspend -> nil
        # 
        # Suspends the thread when it is running.
        def suspend()
            #This is a stub, used for indexing
        end
        # context.suspended? -> bool
        # 
        # Returns +true+ if the thread is suspended by debugger.
        def suspended?()
            #This is a stub, used for indexing
        end
        # context.switch -> nil
        # 
        # Switches execution to this context.
        def switch()
            #This is a stub, used for indexing
        end
        def thnum()
            #This is a stub, used for indexing
        end
        def thread()
            #This is a stub, used for indexing
        end
        # context.tracing -> bool
        # 
        # Returns the tracing flag for the current context.
        def tracing()
            #This is a stub, used for indexing
        end
        # context.tracing = bool
        # 
        # Controls the tracing for this context.
        def tracing= bool
            #This is a stub, used for indexing
        end
    end
    class DebugThread < Thread
    end
    class ThreadsTable
    end
end
