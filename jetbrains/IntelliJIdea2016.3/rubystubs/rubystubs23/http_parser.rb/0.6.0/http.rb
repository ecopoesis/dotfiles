=begin
 This is a machine generated stub using stdlib-doc for <b>module HTTP</b>
 Sources used:  gem http_parser.rb, v. 0.6.0
 Created by IntelliJ Ruby Stubs Generator.
=end

module HTTP
    class Parser
        def self.strict?()
            #This is a stub, used for indexing
        end
        def self.new(*args)
            #This is a stub, used for indexing
        end
        def on_message_begin=(p1)
            #This is a stub, used for indexing
        end
        def on_headers_complete=(p1)
            #This is a stub, used for indexing
        end
        def on_body=(p1)
            #This is a stub, used for indexing
        end
        def on_message_complete=(p1)
            #This is a stub, used for indexing
        end
        def <<(p1)
            #This is a stub, used for indexing
        end
        def keep_alive?()
            #This is a stub, used for indexing
        end
        def upgrade?()
            #This is a stub, used for indexing
        end
        def http_version()
            #This is a stub, used for indexing
        end
        def http_major()
            #This is a stub, used for indexing
        end
        def http_minor()
            #This is a stub, used for indexing
        end
        def http_method()
            #This is a stub, used for indexing
        end
        def status_code()
            #This is a stub, used for indexing
        end
        def header_value_type=(p1)
            #This is a stub, used for indexing
        end
        def reset!()
            #This is a stub, used for indexing
        end
        class Error < IOError
        end
    end
    class RequestParser < Parser
    end
    class ResponseParser < Parser
    end
end
