=begin
 This is a machine generated stub using stdlib-doc for <b>module Hitimes</b>
 Sources used:  gem hitimes, v. 1.2.2
 Created by IntelliJ Ruby Stubs Generator.
=end

# ::Error
# 
# General error class for the Hitimes module
module Hitimes
    # General error class for the Hitimes module
    class Error < StandardError
    end
    require 'rb_c_object '
    # This is the lowest level timing mechanism available.  It allows for easy
    # measuring based upon a block:
    # 
    #   duration = Interval.measure { ... }
    # 
    # Or measuring something specifically
    # 
    #   interval = Interval.new
    #   interval.start
    #   duration = interval.stop
    # 
    # Allocating and starting an interval can be done in one method call with
    # 
    #   interval = Interval.now
    # 
    # Interval is useful when you only need to track a single interval of time, or
    # if you do not want to track statistics about an operation.
    class Interval < rb_cObject 
        # Interval.now -> Interval
        # 
        # Create an interval that has already started
        def self.now()
            #This is a stub, used for indexing
        end
        # Interval.measure {  }  -> Float
        # 
        # Times the execution of the block returning the number of seconds it took
        def self.measure()
            #This is a stub, used for indexing
        end
        # interval.duration -> Float
        # 
        # Returns the Float value of the interval, the value is in seconds.  If the
        # interval has not had stop called yet, it will report the number of seconds
        # in the interval up to the current point in time.
        # 
        # Raises Error if duration is called on an interval that has not started yet.
        def duration()
            #This is a stub, used for indexing
        end
        # interval.length -> Float
        # 
        # Returns the Float value of the interval, the value is in seconds.  If the
        # interval has not had stop called yet, it will report the number of seconds
        # in the interval up to the current point in time.
        # 
        # Raises Error if duration is called on an interval that has not started yet.
        def length()
            #This is a stub, used for indexing
        end
        # interval.to_f -> Float
        # 
        # Returns the Float value of the interval, the value is in seconds.  If the
        # interval has not had stop called yet, it will report the number of seconds
        # in the interval up to the current point in time.
        # 
        # Raises Error if duration is called on an interval that has not started yet.
        def to_f()
            #This is a stub, used for indexing
        end
        # interval.to_seconds -> Float
        # 
        # Returns the Float value of the interval, the value is in seconds.  If the
        # interval has not had stop called yet, it will report the number of seconds
        # in the interval up to the current point in time.
        # 
        # Raises Error if duration is called on an interval that has not started yet.
        def to_seconds()
            #This is a stub, used for indexing
        end
        # interval.duration_so_far -> Float or false
        # 
        # return how the duration so far.  This will return the duration from the time
        # the Interval was started if the interval is running, otherwise it will return
        # false.
        def duration_so_far()
            #This is a stub, used for indexing
        end
        # interval.started? -> boolean
        # 
        # returns whether or not the interval has been started
        def started?()
            #This is a stub, used for indexing
        end
        # interval.running? -> boolean
        # 
        # returns whether or not the interval is running or not.  This means that it
        # has started, but not stopped.
        def running?()
            #This is a stub, used for indexing
        end
        # interval.stopped? -> boolean
        # 
        # returns whether or not the interval has been stopped
        def stopped?()
            #This is a stub, used for indexing
        end
        # interval.start_instant -> Integer
        # 
        # The integer representing the start instant of the Interval.  This value
        # is not useful on its own.  It is a platform dependent value.
        def start_instant()
            #This is a stub, used for indexing
        end
        # interval.stop_instant -> Integer
        # 
        # The integer representing the stop instant of the Interval.  This value
        # is not useful on its own.  It is a platform dependent value.
        def stop_instant()
            #This is a stub, used for indexing
        end
        # interval.start -> boolean
        # 
        # mark the start of the interval.  Calling start on an already started
        # interval has no effect.  An interval can only be started once.  If the
        # interval is truely started +true+ is returned otherwise +false+.
        def start()
            #This is a stub, used for indexing
        end
        # interval.stop -> bool or Float
        # 
        # mark the stop of the interval.  Calling stop on an already stopped interval
        # has no effect.  An interval can only be stopped once.  If the interval is
        # truely stopped then the duration is returned, otherwise +false+.
        def stop()
            #This is a stub, used for indexing
        end
        # interval.split -> Interval
        # 
        # Immediately stop the current interval and start a new interval that has a
        # start_instant equivalent to the stop_interval of self.
        def split()
            #This is a stub, used for indexing
        end
    end
    # The Stats class encapulsates capturing and reporting statistics.  It is
    # modeled after the RFuzz::Sampler class, but implemented in C.  For general use
    # you allocate a new Stats object, and then update it with new values.  The
    # Stats object will keep track of the _min_, _max_, _count_, _sum_ and _sumsq_ 
    # and when you want you may also retrieve the _mean_, _stddev_ and _rate_.
    # 
    # this contrived example shows getting a list of all the files in a directory
    # and running stats on file sizes.
    # 
    #     s = Hitimes::Stats.new
    #     dir = ARGV.shift || Dir.pwd
    #     Dir.entries( dir ).each do |entry|
    #       fs = File.stat( entry )
    #       if fs.file? then
    #         s.update( fs.size )
    #        end
    #     end
    # 
    #     %w[ count min max mean sum stddev rate ].each do |m|
    #       puts "#{m.rjust(6)} : #{s.send( m ) }"
    #     end
    class Stats < rb_cObject 
        # stat.update( val ) -> val
        # 
        # Update the running stats with the new value.
        # Return the input value.
        def update( val )
            #This is a stub, used for indexing
        end
        # stat.count -> Integer
        # 
        # Return the number of values that have passed through the Stats object.
        def count()
            #This is a stub, used for indexing
        end
        # stat.max -> Float
        # 
        # Return the maximum value that has passed through the Stats object
        def max()
            #This is a stub, used for indexing
        end
        # stat.mean -> Float
        # 
        # Return the arithmetic mean of the values put into the Stats object.  If no
        # values have passed through the stats object then 0.0 is returned;
        def mean()
            #This is a stub, used for indexing
        end
        # stat.min  -> Float
        # 
        # Return the minimum value that has passed through the Stats object
        def min()
            #This is a stub, used for indexing
        end
        # stat.rate -> Float
        # 
        # Return the +count+ divided by +sum+.
        # 
        # In many cases when Stats#update( _value_ ) is called, the _value_ is a unit
        # of time, typically seconds or microseconds.  #rate is a convenience for those
        # times.  In this case, where _value_ is a unit if time, then count divided by
        # sum is a useful value, i.e. +something per unit of time+.
        # 
        # In the case where _value_ is a non-time related value, then the value
        # returned by _rate_ is not really useful.
        def rate()
            #This is a stub, used for indexing
        end
        # stat.sum -> Float
        # 
        # Return the sum of all the values that have passed through the Stats object.
        def sum()
            #This is a stub, used for indexing
        end
        # stat.sumsq -> Float
        # 
        # Return the sum of the squars of all the values that passed through the Stats
        # object.
        def sumsq()
            #This is a stub, used for indexing
        end
        # stat.stddev -> Float
        # 
        # Return the standard deviation of all the values that have passed through the
        # Stats object.  The standard deviation has no meaning unless the count is > 1,
        # therefore if the current _stat.count_ is < 1 then 0.0 will be returned;
        def stddev()
            #This is a stub, used for indexing
        end
    end
end
