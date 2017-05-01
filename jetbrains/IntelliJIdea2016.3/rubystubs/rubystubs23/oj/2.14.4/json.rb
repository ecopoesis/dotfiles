=begin
 This is a machine generated stub using stdlib-doc for <b>module JSON</b>
 Sources used:  gem oj, v. 2.14.4
 Created by IntelliJ Ruby Stubs Generator.
=end

# JSON is a JSON parser. This module when defined by the Oj module is a
# faster replacement for the original.
module JSON
    ParserError = nil #value is unknown, used for indexing.
    # parser=(parser) -> nil
    # 
    # Does nothing other than provide compatibiltiy.
    # @param [Object] parser ignored
    def self.parser=(parser)
        #This is a stub, used for indexing
    end
    # generator=(generator) -> nil
    # 
    # Does nothing other than provide compatibiltiy.
    # @param [Object] generator ignored
    def self.generator=(generator)
        #This is a stub, used for indexing
    end
    # create_id=(id) -> String
    # 
    # Sets the create_id tag to look for in JSON document. That key triggers the
    # creation of a class with the same name.
    # 
    # @param [nil|String] id new create_id
    # @return the id
    def self.create_id=(id)
        #This is a stub, used for indexing
    end
    # dump(obj, anIO=nil, limit = nil) -> String
    # 
    # Encodes an object as a JSON String.
    # 
    # @param [Object] obj object to convert to encode as JSON
    # @param [IO] anIO an IO that allows writing
    # @param [Fixnum] limit ignored
    def self.dump(obj, anIO=nil, limit = nil)
        #This is a stub, used for indexing
    end
    # load(source, proc=nil) -> Object
    # 
    # Loads a Ruby Object from a JSON source that can be either a String or an
    # IO. If Proc is given or a block is providedit is called with each nested
    # element of the loaded Object.
    # 
    # @param [String|IO] source JSON source
    # @param [Proc] proc to yield to on each element or nil
    def self.load(source, proc=nil)
        #This is a stub, used for indexing
    end
    # restore(source, proc=nil) -> Object
    # 
    # Loads a Ruby Object from a JSON source that can be either a String or an
    # IO. If Proc is given or a block is providedit is called with each nested
    # element of the loaded Object.
    # 
    # @param [String|IO] source JSON source
    # @param [Proc] proc to yield to on each element or nil
    def self.restore(source, proc=nil)
        #This is a stub, used for indexing
    end
    # recurse_proc(obj, &proc) -> nil
    # 
    # Yields to the proc for every element in the obj recursivly.
    # 
    # @param [Hash|Array] obj object to walk
    # @param [Proc] proc to yield to on each element
    def self.recurse_proc(obj, &proc)
        #This is a stub, used for indexing
    end
    # [](obj, opts={}) -> Object
    # 
    # If the obj argument is a String then it is assumed to be a JSON String and
    # parsed otherwise the obj is encoded as a JSON String.
    # 
    # @param [String|Hash|Array] obj object to convert
    # @param [Hash] opts same options as either generate or parse
    def self.[](*args)
        #This is a stub, used for indexing
    end
    # generate(obj, opts=nil) -> String
    # 
    # Encode obj as a JSON String. The obj argument must be a Hash, Array, or
    # respond to to_h or to_json. Options other than those listed such as
    # +:allow_nan+ or +:max_nesting+ are ignored.
    # 
    # @param [Object|Hash|Array] obj object to convert to a JSON String
    # @param [Hash] opts options
    # @param [String] :indent String to use for indentation
    # @param [String] :space String placed after a , or : delimiter
    # @param [String] :space_before String placed before a : delimiter
    # @param [String] :object_nl String placed after a JSON object
    # @param [String] :array_nl String placed after a JSON array
    def self.generate(obj, opts=nil)
        #This is a stub, used for indexing
    end
    # fast_generate(obj, opts=nil) -> String
    def self.fast_generate(obj, opts=nil)
        #This is a stub, used for indexing
    end
    # pretty_generate(obj, opts=nil) -> String
    def self.pretty_generate(obj, opts=nil)
        #This is a stub, used for indexing
    end
    def self.unparse(*args)
        #This is a stub, used for indexing
    end
    def self.fast_unparse(*args)
        #This is a stub, used for indexing
    end
    def self.pretty_unparse(*args)
        #This is a stub, used for indexing
    end
    # parse(source, opts=nil) -> Object
    # 
    # Parses a JSON String or IO into a Ruby Object.  Options other than those
    # listed such as +:allow_nan+ or +:max_nesting+ are ignored. +:object_class+ and
    # +:array_object+ are not supported.
    # 
    # @param [String|IO] source source to parse
    # @param [Hash] opts options
    # @param [true|false] :symbolize_names flag indicating JSON object keys should be Symbols instead of Strings
    # @param [true|false] :create_additions flag indicating a key matching +create_id+ in a JSON object should trigger the creation of Ruby Object
    # @see create_id=
    def self.parse(source, opts=nil)
        #This is a stub, used for indexing
    end
    # parse!(source, opts=nil) -> Object
    def self.parse!(source, opts=nil)
        #This is a stub, used for indexing
    end
    # The Ext module is a placeholder in the mimic JSON module used for
    # compatibility only.
    module Ext
        # The JSON::Ext::Generator is a placeholder in the mimic JSON module used for
        # compatibility only.
        class Generator
        end
        # The JSON::Ext::Parser is a placeholder in the mimic JSON module used for
        # compatibility only.
        class Parser
        end
    end
end
