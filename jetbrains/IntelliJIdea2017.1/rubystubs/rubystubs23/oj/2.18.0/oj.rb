=begin
 This is a machine generated stub using stdlib-doc for <b>module Oj</b>
 Sources used:  gem oj, v. 2.18.0
 Created by IntelliJ Ruby Stubs Generator.
=end

module Oj
    # default_options() => Hash
    # 
    # Returns the default load and dump options as a Hash. The options are
    # - indent: [Fixnum|String|nil] number of spaces to indent each element in an JSON document, zero or nil is no newline between JSON elements, negative indicates no newline between top level JSON elements in a stream, a String indicates the string should be used for indentation
    # - circular: [true|false|nil] support circular references while dumping
    # - auto_define: [true|false|nil] automatically define classes if they do not exist
    # - symbol_keys: [true|false|nil] use symbols instead of strings for hash keys
    # - escape_mode: [:newline|:json|:xss_safe|:ascii|nil] determines the characters to escape
    # - class_cache: [true|false|nil] cache classes for faster parsing (if dynamically modifying classes or reloading classes then don't use this)
    # - mode: [:object|:strict|:compat|:null] load and dump modes to use for JSON
    # - time_format: [:unix|:unix_zone|:xmlschema|:ruby] time format when dumping in :compat and :object mode
    # - bigdecimal_as_decimal: [true|false|nil] dump BigDecimal as a decimal number or as a String
    # - bigdecimal_load: [:bigdecimal|:float|:auto] load decimals as BigDecimal instead of as a Float. :auto pick the most precise for the number of digits.
    # - create_id: [String|nil] create id for json compatible object encoding, default is 'json_create'
    # - second_precision: [Fixnum|nil] number of digits after the decimal when dumping the seconds portion of time
    # - float_precision: [Fixnum|nil] number of digits of precision when dumping floats, 0 indicates use Ruby
    # - use_to_json: [true|false|nil] call to_json() methods on dump, default is false
    # - use_as_json: [true|false|nil] call as_json() methods on dump, default is false
    # - nilnil: [true|false|nil] if true a nil input to load will return nil and not raise an Exception
    # - allow_gc: [true|false|nil] allow or prohibit GC during parsing, default is true (allow)
    # - quirks_mode: [true,|false|nil] Allow single JSON values instead of documents, default is true (allow)
    # - allow_invalid_unicode: [true,|false|nil] Allow invalid unicode, default is false (don't allow)
    # - indent_str: [String|nil] String to use for indentation, overriding the indent option is not nil
    # - space: [String|nil] String to use for the space after the colon in JSON object fields
    # - space_before: [String|nil] String to use before the colon separator in JSON object fields
    # - object_nl: [String|nil] String to use after a JSON object field value
    # - array_nl: [String|nil] String to use after a JSON array value
    # - nan: [:null|:huge|:word|:raise|:auto] how to dump Infinity and NaN in null, strict, and compat mode. :null places a null, :huge places a huge number, :word places Infinity or NaN, :raise raises and exception, :auto uses default for each mode.
    # - hash_class: [Class|nil] Class to use instead of Hash on load
    # - omit_nil: [true|false] if true Hash and Object attributes with nil values are omitted
    # @return [Hash] all current option settings.
    def self.default_options()
        #This is a stub, used for indexing
    end
    # default_options=(opts)
    # 
    # Sets the default options for load and dump.
    # @param [Hash] opts options to change
    # @param [Fixnum|String|nil] :indent number of spaces to indent each element in a JSON document or the String to use for identation.
    # @param [true|false|nil] :circular support circular references while dumping
    # @param [true|false|nil] :auto_define automatically define classes if they do not exist
    # @param [true|false|nil] :symbol_keys convert hash keys to symbols
    # @param [true|false|nil] :class_cache cache classes for faster parsing
    # @param [:newline|:json|:xss_safe|:ascii|nil] :escape mode encodes all high-bit characters as
    #        escaped sequences if :ascii, :json is standand UTF-8 JSON encoding,
    #        :newline is the same as :json but newlines are not escaped,
    #        and :xss_safe escapes &, <, and >, and some others.
    # @param [true|false|nil] :bigdecimal_as_decimal dump BigDecimal as a decimal number or as a String
    # @param [:bigdecimal|:float|:auto|nil] :bigdecimal_load load decimals as BigDecimal instead of as a Float. :auto pick the most precise for the number of digits.
    # @param [:object|:strict|:compat|:null] load and dump mode to use for JSON
    #        :strict raises an exception when a non-supported Object is
    #        encountered. :compat attempts to extract variable values from an
    #        Object using to_json() or to_hash() then it walks the Object's
    #        variables if neither is found. The :object mode ignores to_hash()
    #        and to_json() methods and encodes variables using code internal to
    #        the Oj gem. The :null mode ignores non-supported Objects and
    #        replaces them with a null.
    # @param [:unix|:xmlschema|:ruby] time format when dumping in :compat mode
    #        :unix decimal number denoting the number of seconds since 1/1/1970,
    #        :unix_zone decimal number denoting the number of seconds since 1/1/1970 plus the utc_offset in the exponent ,
    #        :xmlschema date-time format taken from XML Schema as a String,
    #        :ruby Time.to_s formatted String
    # @param [String|nil] :create_id create id for json compatible object encoding
    # @param [Fixnum|nil] :second_precision number of digits after the decimal when dumping the seconds portion of time
    # @param [Fixnum|nil] :float_precision number of digits of precision when dumping floats, 0 indicates use Ruby
    # @param [true|false|nil] :use_to_json call to_json() methods on dump, default is false
    # @param [true|false|nil] :use_as_json call as_json() methods on dump, default is false
    # @param [true|false|nil] :nilnil if true a nil input to load will return nil and not raise an Exception
    # @param [true|false|nil] :allow_gc allow or prohibit GC during parsing, default is true (allow)
    # @param [true|false|nil] :quirks_mode allow single JSON values instead of documents, default is true (allow)
    # @param [true|false|nil] :allow_invalid_unicode allow invalid unicode, default is false (don't allow)
    # @param [String|nil] :space String to use for the space after the colon in JSON object fields
    # @param [String|nil] :space_before String to use before the colon separator in JSON object fields
    # @param [String|nil] :object_nl String to use after a JSON object field value
    # @param [String|nil] :array_nl String to use after a JSON array value
    # @param [:null|:huge|:word|:raise] :nan how to dump Infinity and NaN in null, strict, and compat mode. :null places a null, :huge places a huge number, :word places Infinity or NaN, :raise raises and exception, :auto uses default for each mode.
    # @param [Class|nil] :hash_class Class to use instead of Hash on load
    # @param [true|false] :omit_nil if true Hash and Object attributes with nil values are omitted
    # @return [nil]
    def self.default_options=(opts)
        #This is a stub, used for indexing
    end
    # mimic_JSON() => Module
    # 
    # Creates the JSON module with methods and classes to mimic the JSON gem. After
    # this method is invoked calls that expect the JSON module will use Oj instead
    # and be faster than the original JSON. Most options that could be passed to
    # the JSON methods are supported. The calls to set parser or generator will not
    # raise an Exception but will not have any effect. The method can also be
    # called after the json gem is loaded. The necessary methods on the json gem
    # will be replaced with Oj methods.
    # 
    # Note that this also sets the default options of :mode to :compat and
    # :encoding to :ascii.
    def self.mimic_JSON()
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
    # load_file(path, options) => Object, Hash, Array, String, Fixnum, Float, true, false, or nil
    # 
    # Parses a JSON document String into a Object, Hash, Array, String, Fixnum,
    # Float, true, false, or nil according to the default mode or the mode
    # specified. Raises an exception if the JSON is malformed or the classes
    # specified are not valid. If the string input is not a valid JSON document (an
    # empty string is not a valid JSON document) an exception is raised.
    # 
    # When used with a document that has multiple JSON elements the block, if
    # any, will be yielded to. If no block then the last element read will be
    # returned.
    # 
    # If the input file is not a valid JSON document (an empty file is not a valid
    # JSON document) an exception is raised.
    # 
    # This is a stream based parser which allows a large or huge file to be loaded
    # without pulling the whole file into memory.
    # 
    # A block can also be provided with a single argument. That argument will be
    # the parsed JSON document. This is useful when parsing a string that includes
    # multiple JSON documents.
    # 
    # @param [String] path path to a file containing a JSON document
    # @param [Hash] options load options (same as default_options)
    def self.load_file(path, options)
        #This is a stub, used for indexing
    end
    # safe_load(doc)
    # 
    # Loads a JSON document in strict mode with :auto_define and :symbol_keys
    # turned off. This function should be safe to use with JSON received on an
    # unprotected public interface.
    # 
    # @param [String|IO] doc JSON String or IO to load
    # @return [Hash|Array|String|Fixnum|Bignum|BigDecimal|nil|True|False]
    def self.safe_load(doc)
        #This is a stub, used for indexing
    end
    # strict_load(json, options) => Hash, Array, String, Fixnum, Float, true, false, or nil
    # 
    # Parses a JSON document String into an Hash, Array, String, Fixnum, Float,
    # true, false, or nil. It parses using a mode that is strict in that it maps
    # each primitive JSON type to a similar Ruby type. The :create_id is not
    # honored in this mode. Note that a Ruby Hash is used to represent the JSON
    # Object type. These two are not the same since the JSON Object type can have
    # repeating entries with the same key and Ruby Hash can not.
    # 
    # When used with a document that has multiple JSON elements the block, if
    # any, will be yielded to. If no block then the last element read will be
    # returned.
    # 
    # Raises an exception if the JSON is malformed or the classes specified are not
    # valid. If the input is not a valid JSON document (an empty string is not a
    # valid JSON document) an exception is raised.
    # 
    # A block can also be provided with a single argument. That argument will be
    # the parsed JSON document. This is useful when parsing a string that includes
    # multiple JSON documents.
    # 
    # @param [String|IO] json JSON String or an Object that responds to read()
    # @param [Hash] options load options (same as default_options)
    def self.strict_load(json, options)
        #This is a stub, used for indexing
    end
    # compat_load(json, options) => Object, Hash, Array, String, Fixnum, Float, true, false, or nil
    # 
    # Parses a JSON document String into an Object, Hash, Array, String, Fixnum,
    # Float, true, false, or nil. It parses using a mode that is generally
    # compatible with other Ruby JSON parsers in that it will create objects based
    # on the :create_id value. It is not compatible in every way to every other
    # parser though as each parser has it's own variations.
    # 
    # When used with a document that has multiple JSON elements the block, if
    # any, will be yielded to. If no block then the last element read will be
    # returned.
    # 
    # Raises an exception if the JSON is malformed or the classes specified are not
    # valid. If the input is not a valid JSON document (an empty string is not a
    # valid JSON document) an exception is raised.
    # 
    # A block can also be provided with a single argument. That argument will be
    # the parsed JSON document. This is useful when parsing a string that includes
    # multiple JSON documents.
    # 
    # @param [String|IO] json JSON String or an Object that responds to read()
    # @param [Hash] options load options (same as default_options)
    def self.compat_load(json, options)
        #This is a stub, used for indexing
    end
    # object_load(json, options) => Object, Hash, Array, String, Fixnum, Float, true, false, or nil
    # 
    # Parses a JSON document String into an Object, Hash, Array, String, Fixnum,
    # Float, true, false, or nil. In the :object mode the JSON should have been
    # generated by Oj.dump(). The parser will reconstitute the original marshalled
    # or dumped Object. The :auto_define and :circular options have meaning with
    # this parsing mode.
    # 
    # When used with a document that has multiple JSON elements the block, if
    # any, will be yielded to. If no block then the last element read will be
    # returned.
    # 
    # Raises an exception if the JSON is malformed or the classes specified are not
    # valid. If the input is not a valid JSON document (an empty string is not a
    # valid JSON document) an exception is raised.
    # 
    # Note: Oj is not able to automatically deserialize all classes that are a
    # subclass of a Ruby Exception. Only exception that take one required string
    # argument in the initialize() method are supported. This is an example of how
    # to write an Exception subclass that supports both a single string intializer
    # and an Exception as an argument. Additional optional arguments can be added
    # as well.
    # 
    # The reason for this restriction has to do with a design decision on the part
    # of the Ruby developers. Exceptions are special Objects. They do not follow the
    # rules of other Objects. Exceptions have 'mesg' and a 'bt' attribute. Note that
    # these are not '@mesg' and '@bt'. They can not be set using the normal C or
    # Ruby calls. The only way I have found to set the 'mesg' attribute is through
    # the initializer. Unfortunately that means any subclass that provides a
    # different initializer can not be automatically decoded. A way around this is
    # to use a create function but this example shows an alternative.
    # 
    # A block can also be provided with a single argument. That argument will be
    # the parsed JSON document. This is useful when parsing a string that includes
    # multiple JSON documents.
    # 
    # @param [String|IO] json JSON String or an Object that responds to read()
    # @param [Hash] options load options (same as default_options)
    def self.object_load(json, options)
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
    # to_file(file_path, obj, options)
    # 
    # Dumps an Object to the specified file.
    # @param [String] file_path file path to write the JSON document to
    # @param [Object] obj Object to serialize as an JSON document String
    # @param [Hash] options formating options
    # @param [Fixnum] :indent format expected
    # @param [true|false] :circular allow circular references, default: false
    def self.to_file(file_path, obj, options)
        #This is a stub, used for indexing
    end
    # to_stream(io, obj, options)
    # 
    # Dumps an Object to the specified IO stream.
    # @param [IO] io IO stream to write the JSON document to
    # @param [Object] obj Object to serialize as an JSON document String
    # @param [Hash] options formating options
    # @param [Fixnum] :indent format expected
    # @param [true|false] :circular allow circular references, default: false
    def self.to_stream(io, obj, options)
        #This is a stub, used for indexing
    end
    # register_odd(clas, create_object, create_method, *members)
    # 
    # Registers a class as special. This is useful for working around subclasses of
    # primitive types as is done with ActiveSupport classes. The use of this
    # function should be limited to just classes that can not be handled in the
    # normal way. It is not intended as a hook for changing the output of all
    # classes as it is not optimized for large numbers of classes.
    # 
    # @param [Class|Module] clas Class or Module to be made special
    # @param [Object] create_object object to call the create method on
    # @param [Symbol] create_method method on the clas that will create a new
    #                 instance of the clas when given all the member values in the
    #                 order specified.
    # @param [Symbol|String] members methods used to get the member values from
    #                        instances of the clas
    def self.register_odd(clas, create_object, create_method, *members)
        #This is a stub, used for indexing
    end
    # register_odd_raw(clas, create_object, create_method, dump_method)
    # 
    # Registers a class as special and expect the output to be a string that can be
    # included in the dumped JSON directly. This is useful for working around
    # subclasses of primitive types as is done with ActiveSupport classes. The use
    # of this function should be limited to just classes that can not be handled in
    # the normal way. It is not intended as a hook for changing the output of all
    # classes as it is not optimized for large numbers of classes. Be careful with
    # this option as the JSON may be incorrect if invalid JSON is returned.
    # 
    # @param [Class|Module] clas Class or Module to be made special
    # @param [Object] create_object object to call the create method on
    # @param [Symbol] create_method method on the clas that will create a new
    #                 instance of the clas when given all the member values in the
    #                 order specified.
    # @param [Symbol|String] dump_method method to call on the object being
    #                        serialized to generate the raw JSON.
    def self.register_odd_raw(clas, create_object, create_method, dump_method)
        #This is a stub, used for indexing
    end
    class CStack
    end
    # The Doc class is used to parse and navigate a JSON document. The model it
    # employs is that of a document that while open can be navigated and values
    # extracted. Once the document is closed the document can not longer be
    # accessed. This allows the parsing and data extraction to be extremely fast
    # compared to other JSON parses.
    # 
    # An Oj::Doc class is not created directly but the _open()_ class method is
    # used to open a document and the yield parameter to the block of the #open()
    # call is the Doc instance. The Doc instance can be moved across, up, and
    # down the JSON document. At each element the data associated with the
    # element can be extracted. It is also possible to just provide a path to the
    # data to be extracted and retrieve the data in that manner.
    # 
    # For many of the methods a path is used to describe the location of an
    # element. Paths follow a subset of the XPath syntax. The slash ('/')
    # character is the separator. Each step in the path identifies the next
    # branch to take through the document. A JSON object will expect a key string
    # while an array will expect a positive index. A .. step indicates a move up
    # the JSON document.
    # 
    # @example
    #   json = %{[
    #     {
    #       "one"   : 1,
    #       "two"   : 2
    #     },
    #     {
    #       "three" : 3,
    #       "four"  : 4
    #     }
    #   ]}
    #   # move and get value
    #   Oj::Doc.open(json) do |doc|
    #     doc.move('/1/two')  
    #     # doc location is now at the 'two' element of the hash that is the first element of the array.
    #     doc.fetch()
    #   end
    #   #=> 2
    # 
    #   # Now try again using a path to Oj::Doc.fetch() directly and not using a block.
    #   doc = Oj::Doc.open(json)
    #   doc.fetch('/2/three')  #=> 3
    #   doc.close()
    class Doc
        # open(json) { |doc| ... } => Object
        # 
        # Parses a JSON document String and then yields to the provided block if one
        # is given with an instance of the Oj::Doc as the single yield parameter. If
        # a block is not given then an Oj::Doc instance is returned and must be
        # closed with a call to the #close() method when no longer needed.
        # 
        # @param [String] json JSON document string
        # @yieldparam [Oj::Doc] doc parsed JSON document
        # @yieldreturn [Object] returns the result of the yield as the result of the method call
        # @example
        #   Oj::Doc.open('[1,2,3]') { |doc| doc.size() }  #=> 4
        #   # or as an alternative
        #   doc = Oj::Doc.open('[1,2,3]')
        #   doc.size()  #=> 4
        #   doc.close()
        def self.open(json)
            #This is a stub, used for indexing
        end
        # open_file(filename) { |doc| ... } => Object
        # 
        # Parses a JSON document from a file and then yields to the provided block if
        # one is given with an instance of the Oj::Doc as the single yield
        # parameter. If a block is not given then an Oj::Doc instance is returned and
        # must be closed with a call to the #close() method when no longer needed.
        # 
        # @param [String] filename name of file that contains a JSON document
        # @yieldparam [Oj::Doc] doc parsed JSON document
        # @yieldreturn [Object] returns the result of the yield as the result of the method call
        # @example
        #   File.open('array.json', 'w') { |f| f.write('[1,2,3]') }
        #   Oj::Doc.open_file(filename) { |doc| doc.size() }  #=> 4
        #   # or as an alternative
        #   doc = Oj::Doc.open_file(filename)
        #   doc.size()  #=> 4
        #   doc.close()
        def self.open_file(filename)
            #This is a stub, used for indexing
        end
        # @see Oj::Doc.open
        def self.parse(p1)
            #This is a stub, used for indexing
        end
        # where?() => String
        # 
        # Returns a String that describes the absolute path to the current location
        # in the JSON document.
        def where?()
            #This is a stub, used for indexing
        end
        # local_key() => String, Fixnum, nil
        # 
        # Returns the final key to the current location.
        # @example
        #   Oj::Doc.open('[1,2,3]') { |doc| doc.move('/2'); doc.local_key() }      #=> 2
        #   Oj::Doc.open('{"one":3}') { |doc| doc.move('/one'); doc.local_key() }  #=> "one"
        #   Oj::Doc.open('[1,2,3]') { |doc| doc.local_key() }                      #=> nil
        def local_key()
            #This is a stub, used for indexing
        end
        # home() => nil
        # 
        # Moves the document marker or location to the hoot or home position. The
        # same operation can be performed with a Oj::Doc.move('/').
        # @example
        #   Oj::Doc.open('[1,2,3]') { |doc| doc.move('/2'); doc.home(); doc.where? }  #=> '/'
        def home()
            #This is a stub, used for indexing
        end
        # type(path=nil) => Class
        # 
        # Returns the Class of the data value at the location identified by the path
        # or the current location if the path is nil or not provided. This method
        # does not create the Ruby Object at the location specified so the overhead
        # is low.
        # @param [String] path path to the location to get the type of if provided
        # @example
        #   Oj::Doc.open('[1,2]') { |doc| doc.type() }      #=> Array
        #   Oj::Doc.open('[1,2]') { |doc| doc.type('/1') }  #=> Fixnum
        def type(path=nil)
            #This is a stub, used for indexing
        end
        # fetch(path=nil) => nil, true, false, Fixnum, Float, String, Array, Hash
        # 
        # Returns the value at the location identified by the path or the current
        # location if the path is nil or not provided. This method will create and
        # return an Array or Hash if that is the type of Object at the location
        # specified. This is more expensive than navigating to the leaves of the JSON
        # document.
        # @param [String] path path to the location to get the type of if provided
        # @example
        #   Oj::Doc.open('[1,2]') { |doc| doc.fetch() }      #=> [1, 2]
        #   Oj::Doc.open('[1,2]') { |doc| doc.fetch('/1') }  #=> 1
        def fetch(path=nil)
            #This is a stub, used for indexing
        end
        # each_leaf(path=nil) => nil
        # 
        # Yields to the provided block for each leaf node with the identified
        # location of the JSON document as the root. The parameter passed to the
        # block on yield is the Doc instance after moving to the child location.
        # @param [String] path if provided it identified the top of the branch to process the leaves of
        # @yieldparam [Doc] Doc at the child location
        # @example
        #   Oj::Doc.open('[3,[2,1]]') { |doc|
        #       result = {}
        #       doc.each_leaf() { |d| result[d.where?] = d.fetch() }
        #       result
        #   }
        #   #=> ["/1" => 3, "/2/1" => 2, "/2/2" => 1]
        def each_leaf(path=nil)
            #This is a stub, used for indexing
        end
        # move(path) => nil
        # 
        # Moves the document marker to the path specified. The path can an absolute
        # path or a relative path.
        # @param [String] path path to the location to move to
        # @example
        #   Oj::Doc.open('{"one":[1,2]') { |doc| doc.move('/one/2'); doc.where? }  #=> "/one/2"
        def move(path)
            #This is a stub, used for indexing
        end
        # each_child(path=nil) { |doc| ... } => nil
        # 
        # Yields to the provided block for each immediate child node with the
        # identified location of the JSON document as the root. The parameter passed
        # to the block on yield is the Doc instance after moving to the child
        # location.
        # @param [String] path if provided it identified the top of the branch to process the chilren of
        # @yieldparam [Doc] Doc at the child location
        # @example
        #   Oj::Doc.open('[3,[2,1]]') { |doc|
        #       result = []
        #       doc.each_value('/2') { |doc| result << doc.where? }
        #       result
        #   }
        #   #=> ["/2/1", "/2/2"]
        def each_child(path=nil)
            #This is a stub, used for indexing
        end
        # each_value(path=nil) { |val| ... } => nil
        # 
        # Yields to the provided block for each leaf value in the identified location
        # of the JSON document. The parameter passed to the block on yield is the
        # value of the leaf. Only those leaves below the element specified by the
        # path parameter are processed.
        # @param [String] path if provided it identified the top of the branch to process the leaf values of
        # @yieldparam [Object] val each leaf value
        # @example
        #   Oj::Doc.open('[3,[2,1]]') { |doc|
        #       result = []
        #       doc.each_value() { |v| result << v }
        #       result
        #   }
        #   #=> [3, 2, 1]
        # 
        #   Oj::Doc.open('[3,[2,1]]') { |doc|
        #       result = []
        #       doc.each_value('/2') { |v| result << v }
        #       result
        #   }
        #   #=> [2, 1]
        def each_value(path=nil)
            #This is a stub, used for indexing
        end
        # dump(path=nil) => String
        # 
        # Dumps the document or nodes to a new JSON document. It uses the default
        # options for generating the JSON.
        # @param [String] path if provided it identified the top of the branch to dump to JSON
        # @param [String] filename if provided it is the filename to write the output to
        # @example
        #   Oj::Doc.open('[3,[2,1]]') { |doc|
        #       doc.dump('/2')
        #   }
        #   #=> "[2,1]"
        def dump(path=nil)
            #This is a stub, used for indexing
        end
        # size() => Fixnum
        # 
        # Returns the number of nodes in the JSON document where a node is any one of
        # the basic JSON components.
        # @return Returns the size of the JSON document.
        # @example
        #   Oj::Doc.open('[1,2,3]') { |doc| doc.size() }  #=> 4
        def size()
            #This is a stub, used for indexing
        end
        # close() => nil
        # 
        # Closes an open document. No further calls to the document will be valid
        # after closing.
        # @example
        #   doc = Oj::Doc.open('[1,2,3]')
        #   doc.size()  #=> 4
        #   doc.close()
        def close()
            #This is a stub, used for indexing
        end
        def clone()
            #This is a stub, used for indexing
        end
        def dup()
            #This is a stub, used for indexing
        end
    end
    # Supports building a JSON document one element at a time. Build the IO stream
    # document by pushing values into the document. Pushing an array or an object
    # will create that element in the JSON document and subsequent pushes will add
    # the elements to that array or object until a pop() is called.
    class StreamWriter
        # new(io, options)
        # 
        # Creates a new StreamWriter.
        # @param [IO] io stream to write to
        # @param [Hash] options formating options
        def self.new(io, options)
            #This is a stub, used for indexing
        end
        # push_key(key)
        # 
        # Pushes a key onto the JSON document. The key will be used for the next push
        # if currently in a JSON object and ignored otherwise. If a key is provided on
        # the next push then that new key will be ignored.
        # @param [String] key the key pending for the next push
        def push_key(key)
            #This is a stub, used for indexing
        end
        # push_object(key=nil)
        # 
        # Pushes an object onto the JSON document. Future pushes will be to this object
        # until a pop() is called.
        # @param [String] key the key if adding to an object in the JSON document
        def push_object(key=nil)
            #This is a stub, used for indexing
        end
        # push_array(key=nil)
        # 
        # Pushes an array onto the JSON document. Future pushes will be to this object
        # until a pop() is called.
        # @param [String] key the key if adding to an object in the JSON document
        def push_array(key=nil)
            #This is a stub, used for indexing
        end
        # push_value(value, key=nil)
        # 
        # Pushes a value onto the JSON document.
        # @param [Object] value value to add to the JSON document
        # @param [String] key the key if adding to an object in the JSON document
        def push_value(value, key=nil)
            #This is a stub, used for indexing
        end
        # push_json(value, key=nil)
        # 
        # Pushes a string onto the JSON document. The String must be a valid JSON
        # encoded string. No additional checking is done to verify the validity of the
        # string.
        # @param [Object] value value to add to the JSON document
        # @param [String] key the key if adding to an object in the JSON document
        def push_json(value, key=nil)
            #This is a stub, used for indexing
        end
        # pop()
        # 
        # Pops up a level in the JSON document closing the array or object that is
        # currently open.
        def pop()
            #This is a stub, used for indexing
        end
        # pop_all()
        # 
        # Pops all level in the JSON document closing all the array or object that is
        # currently open.
        def pop_all()
            #This is a stub, used for indexing
        end
    end
    # Supports building a JSON document one element at a time. Build the document
    # by pushing values into the document. Pushing an array or an object will
    # create that element in the JSON document and subsequent pushes will add the
    # elements to that array or object until a pop() is called. When complete
    # calling to_s() will return the JSON document. Note tha calling to_s() before
    # construction is complete will return the document in it's current state.
    class StringWriter
        # new(options)
        # 
        # Creates a new StringWriter.
        # @param [Hash] options formating options
        def self.new(options)
            #This is a stub, used for indexing
        end
        # push_key(key)
        # 
        # Pushes a key onto the JSON document. The key will be used for the next push
        # if currently in a JSON object and ignored otherwise. If a key is provided on
        # the next push then that new key will be ignored.
        # @param [String] key the key pending for the next push
        def push_key(key)
            #This is a stub, used for indexing
        end
        # push_object(key=nil)
        # 
        # Pushes an object onto the JSON document. Future pushes will be to this object
        # until a pop() is called.
        # @param [String] key the key if adding to an object in the JSON document
        def push_object(key=nil)
            #This is a stub, used for indexing
        end
        # push_array(key=nil)
        # 
        # Pushes an array onto the JSON document. Future pushes will be to this object
        # until a pop() is called.
        # @param [String] key the key if adding to an object in the JSON document
        def push_array(key=nil)
            #This is a stub, used for indexing
        end
        # push_value(value, key=nil)
        # 
        # Pushes a value onto the JSON document.
        # @param [Object] value value to add to the JSON document
        # @param [String] key the key if adding to an object in the JSON document
        def push_value(value, key=nil)
            #This is a stub, used for indexing
        end
        # push_json(value, key=nil)
        # 
        # Pushes a string onto the JSON document. The String must be a valid JSON
        # encoded string. No additional checking is done to verify the validity of the
        # string.
        # @param [String] value JSON document to add to the JSON document
        # @param [String] key the key if adding to an object in the JSON document
        def push_json(value, key=nil)
            #This is a stub, used for indexing
        end
        # pop()
        # 
        # Pops up a level in the JSON document closing the array or object that is
        # currently open.
        def pop()
            #This is a stub, used for indexing
        end
        # pop_all()
        # 
        # Pops all level in the JSON document closing all the array or object that is
        # currently open.
        def pop_all()
            #This is a stub, used for indexing
        end
        # reset()
        # 
        # Reset the writer back to the empty state.
        def reset()
            #This is a stub, used for indexing
        end
        # to_s()
        # 
        # Returns the JSON document string in what ever state the construction is at.
        def to_s()
            #This is a stub, used for indexing
        end
    end
end
