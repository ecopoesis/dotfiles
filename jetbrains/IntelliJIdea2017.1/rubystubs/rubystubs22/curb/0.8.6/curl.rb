=begin
 This is a machine generated stub using stdlib-doc for <b>module Curl</b>
 Sources used:  gem curb, v. 0.8.6
 Created by IntelliJ Ruby Stubs Generator.
=end

module Curl
    CURB_VERSION = nil #value is unknown, used for indexing.
    VERSION = nil #value is unknown, used for indexing.
    CURL_VERSION = nil #value is unknown, used for indexing.
    VERNUM = nil #value is unknown, used for indexing.
    CURL_VERNUM = nil #value is unknown, used for indexing.
    LONG_VERSION = nil #value is unknown, used for indexing.
    CURL_LONG_VERSION = nil #value is unknown, used for indexing.
    # Passed to on_debug handler to indicate that the data is informational text.   
    CURLINFO_TEXT = nil #value is unknown, used for indexing.
    # Passed to on_debug handler to indicate that the data is header (or header-like) data received from the peer.   
    CURLINFO_HEADER_IN = nil #value is unknown, used for indexing.
    # Passed to on_debug handler to indicate that the data is header (or header-like) data sent to the peer.   
    CURLINFO_HEADER_OUT = nil #value is unknown, used for indexing.
    # Passed to on_debug handler to indicate that the data is protocol data received from the peer.   
    CURLINFO_DATA_IN = nil #value is unknown, used for indexing.
    # Passed to on_debug handler to indicate that the data is protocol data sent to the peer.   
    CURLINFO_DATA_OUT = nil #value is unknown, used for indexing.
    CURL_MULTICWD = nil #value is unknown, used for indexing.
    CURL_NOCWD = nil #value is unknown, used for indexing.
    CURL_SINGLECWD = nil #value is unknown, used for indexing.
    CURLPROXY_HTTP = nil #value is unknown, used for indexing.
    CURL_SSLVERSION_DEFAULT = nil #value is unknown, used for indexing.
    CURL_SSLVERSION_TLSv1 = nil #value is unknown, used for indexing.
    CURL_SSLVERSION_SSLv2 = nil #value is unknown, used for indexing.
    CURL_SSLVERSION_SSLv3 = nil #value is unknown, used for indexing.
    CURL_USESSL_CONTROL = nil #value is unknown, used for indexing.
    CURL_USESSL_NONE = nil #value is unknown, used for indexing.
    CURL_USESSL_TRY = nil #value is unknown, used for indexing.
    CURL_USESSL_ALL = nil #value is unknown, used for indexing.
    CURLPROXY_SOCKS4 = nil #value is unknown, used for indexing.
    CURLPROXY_SOCKS4A = nil #value is unknown, used for indexing.
    CURLPROXY_SOCKS5 = nil #value is unknown, used for indexing.
    CURLAUTH_BASIC = nil #value is unknown, used for indexing.
    CURLAUTH_DIGEST = nil #value is unknown, used for indexing.
    CURLAUTH_GSSNEGOTIATE = nil #value is unknown, used for indexing.
    CURLAUTH_NTLM = nil #value is unknown, used for indexing.
    CURLAUTH_ANYSAFE = nil #value is unknown, used for indexing.
    CURLAUTH_ANY = nil #value is unknown, used for indexing.
    HTTP_1_1 = nil #value is unknown, used for indexing.
    HTTP_1_0 = nil #value is unknown, used for indexing.
    HTTP_NONE = nil #value is unknown, used for indexing.
    # Curl.ipv6?                                       => true or false
    # 
    # Returns true if the installed libcurl supports IPv6.
    def self.ipv6?()
        #This is a stub, used for indexing
    end
    # Curl.kerberos4?                                  => true or false
    # 
    # Returns true if the installed libcurl supports Kerberos4 authentication
    # with FTP connections.
    def self.kerberos4?()
        #This is a stub, used for indexing
    end
    # Curl.ssl?                                        => true or false
    # 
    # Returns true if the installed libcurl supports SSL connections.
    # For libcurl versions < 7.10, always returns false.
    def self.ssl?()
        #This is a stub, used for indexing
    end
    # Curl.libz?                                       => true or false
    # 
    # Returns true if the installed libcurl supports HTTP deflate
    # using libz. For libcurl versions < 7.10, always returns false.
    def self.libz?()
        #This is a stub, used for indexing
    end
    # Curl.ntlm?                                       => true or false
    # 
    # Returns true if the installed libcurl supports HTTP NTLM.
    # For libcurl versions < 7.10.6, always returns false.
    def self.ntlm?()
        #This is a stub, used for indexing
    end
    # Curl.gssnegotiate?                               => true or false
    # 
    # Returns true if the installed libcurl supports HTTP GSS-Negotiate.
    # For libcurl versions < 7.10.6, always returns false.
    def self.gssnegotiate?()
        #This is a stub, used for indexing
    end
    # Curl.debug?                                      => true or false
    # 
    # Returns true if the installed libcurl was built with extra debug
    # capabilities built-in. For libcurl versions < 7.10.6, always returns
    # false.
    def self.debug?()
        #This is a stub, used for indexing
    end
    # Curl.asyncdns?                                   => true or false
    # 
    # Returns true if the installed libcurl was built with support for
    # asynchronous name lookups, which allows more exact timeouts (even
    # on Windows) and less blocking when using the multi interface.
    # For libcurl versions < 7.10.7, always returns false.
    def self.asyncdns?()
        #This is a stub, used for indexing
    end
    # Curl.spnego?                                     => true or false
    # 
    # Returns true if the installed libcurl was built with support for SPNEGO
    # authentication (Simple and Protected GSS-API Negotiation Mechanism, defined
    # in RFC 2478). For libcurl versions < 7.10.8, always returns false.
    def self.spnego?()
        #This is a stub, used for indexing
    end
    # Curl.largefile?                                  => true or false
    # 
    # Returns true if the installed libcurl was built with support for large
    # files. For libcurl versions < 7.11.1, always returns false.
    def self.largefile?()
        #This is a stub, used for indexing
    end
    # Curl.idn?                                        => true or false
    # 
    # Returns true if the installed libcurl was built with support for IDNA,
    # domain names with international letters. For libcurl versions < 7.12.0,
    # always returns false.
    def self.idn?()
        #This is a stub, used for indexing
    end
    # Curl.sspi?                                       => true or false
    # 
    # Returns true if the installed libcurl was built with support for SSPI.
    # This is only available on Windows and makes libcurl use Windows-provided
    # functions for NTLM authentication. It also allows libcurl to use the current
    # user and the current user's password without the app having to pass them on.
    # For libcurl versions < 7.13.2, always returns false.
    def self.sspi?()
        #This is a stub, used for indexing
    end
    # Curl.conv?                                       => true or false
    # 
    # Returns true if the installed libcurl was built with support for character
    # conversions. For libcurl versions < 7.15.4, always returns false.
    def self.conv?()
        #This is a stub, used for indexing
    end
    class Easy
        # Curl::Easy.new                                   => #&lt;Curl::Easy...&gt;
        # Curl::Easy.new(url = nil)                        => #&lt;Curl::Easy...&gt;
        # Curl::Easy.new(url = nil) { |self| ... }         => #&lt;Curl::Easy...&gt;
        # 
        # Create a new Curl::Easy instance, optionally supplying the URL.
        # The block form allows further configuration to be supplied before
        # the instance is returned.
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        # Curl::Easy.error(code)    => [ErrCode, String]
        # 
        # translate an internal libcurl error to ruby error class
        def self.error(code)
            #This is a stub, used for indexing
        end
        # easy.url                                         => string
        # 
        # Obtain the URL that will be used by subsequent calls to +perform+.
        def url()
            #This is a stub, used for indexing
        end
        # easy.proxy_url                                   => string
        # 
        # Obtain the HTTP Proxy URL that will be used by subsequent calls to +perform+.
        def proxy_url()
            #This is a stub, used for indexing
        end
        # easy.headers = "Header: val"                              => "Header: val"
        # easy.headers = {"Header" => "val" ..., "Header" => "val"} => {"Header: val", ...}
        # easy.headers = ["Header: val" ..., "Header: val"]         => ["Header: val", ...]
        # 
        # Set custom HTTP headers for following requests. This can be used to add
        # custom headers, or override standard headers used by libcurl. It defaults to a
        # Hash.
        # 
        # For example to set a standard or custom header:
        # 
        #    easy.headers["MyHeader"] = "myval"
        # 
        # To remove a standard header (this is useful when removing libcurls default
        # 'Expect: 100-Continue' header when using HTTP form posts):
        # 
        #    easy.headers["Expect"] = ''
        # 
        # Anything passed to libcurl as a header will be converted to a string during
        # the perform step.
        def headers=()
            #This is a stub, used for indexing
        end
        # easy.headers                                     => Hash, Array or Str
        # 
        # Obtain the custom HTTP headers for following requests.
        def headers()
            #This is a stub, used for indexing
        end
        # easy.interface                                   => string
        # 
        # Obtain the interface name that is used as the outgoing network interface.
        # The name can be an interface name, an IP address or a host name.
        def interface()
            #This is a stub, used for indexing
        end
        # easy.userpwd                                     => string
        # 
        # Obtain the username/password string that will be used for subsequent
        # calls to +perform+.
        def userpwd()
            #This is a stub, used for indexing
        end
        # easy.proxypwd                                    => string
        # 
        # Obtain the username/password string that will be used for proxy
        # connection during subsequent calls to +perform+. The supplied string
        # should have the form "username:password"
        def proxypwd()
            #This is a stub, used for indexing
        end
        # easy.cookies                                     => "name1=content1; name2=content2;"
        # 
        # Obtain the cookies for this Curl::Easy instance.
        def cookies()
            #This is a stub, used for indexing
        end
        # easy.cookiefile                                  => string
        # 
        # Obtain the cookiefile file for this Curl::Easy instance.
        def cookiefile()
            #This is a stub, used for indexing
        end
        # easy.cookiejar                                   => string
        # 
        # Obtain the cookiejar file to use for this Curl::Easy instance.
        def cookiejar()
            #This is a stub, used for indexing
        end
        # easy.cert = string                               => ""
        # 
        # Set a cert file to use for this Curl::Easy instance. This file
        # will be used to validate SSL connections.
        def cert= string
            #This is a stub, used for indexing
        end
        # easy.cert                                        => string
        # 
        # Obtain the cert file to use for this Curl::Easy instance.
        def cert()
            #This is a stub, used for indexing
        end
        # easy.cert_key = "cert_key.file"                  => ""
        # 
        # Set a cert key to use for this Curl::Easy instance. This file
        # will be used to validate SSL certificates.
        def cert_key=(p1)
            #This is a stub, used for indexing
        end
        # easy.cert_key                                    => "cert_key.file"
        # 
        # Obtain the cert key file to use for this Curl::Easy instance.
        def cert_key()
            #This is a stub, used for indexing
        end
        # easy.cacert = string                             => ""
        # 
        # Set a cacert bundle to use for this Curl::Easy instance. This file
        # will be used to validate SSL certificates.
        def cacert= string
            #This is a stub, used for indexing
        end
        # easy.cacert                                      => string
        # 
        # Obtain the cacert file to use for this Curl::Easy instance.
        def cacert()
            #This is a stub, used for indexing
        end
        # easy.certpassword = string                       => ""
        # 
        # Set a password used to open the specified cert
        def certpassword= string
            #This is a stub, used for indexing
        end
        # easy.certtype = "PEM|DER"                        => ""
        # 
        # Set a cert type to use for this Curl::Easy instance.
        # Default is PEM
        def certtype=(p1)
            #This is a stub, used for indexing
        end
        # easy.certtype                                    => string
        # 
        # Obtain the cert type used for this Curl::Easy instance
        def certtype()
            #This is a stub, used for indexing
        end
        # easy.encoding = string                           => string
        # 
        # Set the accepted encoding types, curl will handle all of the decompression
        def encoding= string
            #This is a stub, used for indexing
        end
        # easy.encoding                                    => string
        # 
        # Get the set encoding types
        def encoding()
            #This is a stub, used for indexing
        end
        # easy.useragent = "Ruby/Curb"                     => ""
        # 
        # Set the user agent string for this Curl::Easy instance
        def useragent=(p1)
            #This is a stub, used for indexing
        end
        # easy.useragent                                  => "Ruby/Curb"
        # 
        # Obtain the user agent string used for this Curl::Easy instance
        def useragent()
            #This is a stub, used for indexing
        end
        # easy.post_body = "some=form%20data&to=send"      => string or nil
        # 
        # Sets the POST body of this Curl::Easy instance.  This is expected to be
        # URL encoded; no additional processing or encoding is done on the string.
        # The content-type header will be set to application/x-www-form-urlencoded.
        # 
        # This is handy if you want to perform a POST against a Curl::Multi instance.
        def post_body=(p1)
            #This is a stub, used for indexing
        end
        # easy.post_body                                  => string or nil
        # 
        # Obtain the POST body used in this Curl::Easy instance.
        def post_body()
            #This is a stub, used for indexing
        end
        # easy.put_data = data                             => ""
        # 
        # Points this Curl::Easy instance to data to be uploaded via PUT.  This
        # sets the request to a PUT type request - useful if you want to PUT via
        # a multi handle.
        def put_data= data
            #This is a stub, used for indexing
        end
        # easy.ftp_commands = ["CWD /", "MKD directory"]   => ["CWD /", ...]
        # 
        # Explicitly sets the list of commands to execute on the FTP server when calling perform
        def ftp_commands=(p1)
            #This is a stub, used for indexing
        end
        # call-seq
        #   easy.ftp_commands                                => array or nil
        def ftp_commands()
            #This is a stub, used for indexing
        end
        # easy.local_port = fixnum or nil                  => fixnum or nil
        # 
        # Set the local port that will be used for the following +perform+ calls.
        # 
        # Passing +nil+ will return to the default behaviour (no local port
        # preference).
        # 
        # This option is ignored if compiled against libcurl < 7.15.2.
        def local_port=(p1)
            #This is a stub, used for indexing
        end
        # easy.local_port                                  => fixnum or nil
        # 
        # Obtain the local port that will be used for the following +perform+ calls.
        # 
        # This option is ignored if compiled against libcurl < 7.15.2.
        def local_port()
            #This is a stub, used for indexing
        end
        # easy.local_port_range = fixnum or nil            => fixnum or nil
        # 
        # Set the local port range that will be used for the following +perform+
        # calls. This is a number (between 0 and 65535) that determines how far
        # libcurl may deviate from the supplied +local_port+ in order to find
        # an available port.
        # 
        # If you set +local_port+ it's also recommended that you set this, since
        # it is fairly likely that your specified port will be unavailable.
        # 
        # This option is ignored if compiled against libcurl < 7.15.2.
        def local_port_range=(p1)
            #This is a stub, used for indexing
        end
        # easy.local_port_range                            => fixnum or nil
        # 
        # Obtain the local port range that will be used for the following +perform+
        # calls.
        # 
        # This option is ignored if compiled against libcurl < 7.15.2.
        def local_port_range()
            #This is a stub, used for indexing
        end
        # easy.proxy_port = fixnum or nil                  => fixnum or nil
        # 
        # Set the proxy port that will be used for the following +perform+ calls.
        def proxy_port=(p1)
            #This is a stub, used for indexing
        end
        # easy.proxy_port                                  => fixnum or nil
        # 
        # Obtain the proxy port that will be used for the following +perform+ calls.
        def proxy_port()
            #This is a stub, used for indexing
        end
        # easy.proxy_type = fixnum or nil                  => fixnum or nil
        # 
        # Set the proxy type that will be used for the following +perform+ calls.
        # This should be one of the Curl::CURLPROXY constants.
        def proxy_type=(p1)
            #This is a stub, used for indexing
        end
        # easy.proxy_type                                  => fixnum or nil
        # 
        # Obtain the proxy type that will be used for the following +perform+ calls.
        def proxy_type()
            #This is a stub, used for indexing
        end
        # easy.http_auth_types = fixnum or nil             => fixnum or nil
        # easy.http_auth_types = [:basic,:digest,:digest_ie,:gssnegotiate, :ntlm, :any, :anysafe]
        # 
        # Set the HTTP authentication types that may be used for the following
        # +perform+ calls. This is a bitmap made by ORing together the
        # Curl::CURLAUTH constants.
        def http_auth_types=(*args)
            #This is a stub, used for indexing
        end
        # easy.http_auth_types                             => fixnum or nil
        # 
        # Obtain the HTTP authentication types that may be used for the following
        # +perform+ calls.
        def http_auth_types()
            #This is a stub, used for indexing
        end
        # easy.proxy_auth_types = fixnum or nil            => fixnum or nil
        # 
        # Set the proxy authentication types that may be used for the following
        # +perform+ calls. This is a bitmap made by ORing together the
        # Curl::CURLAUTH constants.
        def proxy_auth_types=(p1)
            #This is a stub, used for indexing
        end
        # easy.proxy_auth_types                            => fixnum or nil
        # 
        # Obtain the proxy authentication types that may be used for the following
        # +perform+ calls.
        def proxy_auth_types()
            #This is a stub, used for indexing
        end
        # easy.max_redirects = fixnum or nil               => fixnum or nil
        # 
        # Set the maximum number of redirections to follow in the following +perform+
        # calls. Set to nil or -1 allow an infinite number (the default). Setting this
        # option only makes sense if +follow_location+ is also set true.
        # 
        # With libcurl >= 7.15.1, setting this to 0 will cause libcurl to refuse any
        # redirect.
        def max_redirects=(p1)
            #This is a stub, used for indexing
        end
        # easy.max_redirects                               => fixnum or nil
        # 
        # Obtain the maximum number of redirections to follow in the following
        # +perform+ calls.
        def max_redirects()
            #This is a stub, used for indexing
        end
        # easy.timeout = fixnum or nil                     => fixnum or nil
        # 
        # Set the maximum time in seconds that you allow the libcurl transfer
        # operation to take. Normally, name lookups can take a considerable time
        # and limiting operations to less than a few minutes risk aborting
        # perfectly normal operations.
        # 
        # Set to nil (or zero) to disable timeout (it will then only timeout
        # on the system's internal timeouts).
        def timeout=(p1)
            #This is a stub, used for indexing
        end
        # easy.timeout                                     => fixnum or nil
        # 
        # Obtain the maximum time in seconds that you allow the libcurl transfer
        # operation to take.
        def timeout()
            #This is a stub, used for indexing
        end
        # easy.connect_timeout = fixnum or nil             => fixnum or nil
        # 
        # Set the maximum time in seconds that you allow the connection to the
        # server to take. This only limits the connection phase, once it has
        # connected, this option is of no more use.
        # 
        # Set to nil (or zero) to disable connection timeout (it will then only
        # timeout on the system's internal timeouts).
        def connect_timeout=(p1)
            #This is a stub, used for indexing
        end
        # easy.connect_timeout                             => fixnum or nil
        # 
        # Obtain the maximum time in seconds that you allow the connection to the
        # server to take.
        def connect_timeout()
            #This is a stub, used for indexing
        end
        # easy.dns_cache_timeout = fixnum or nil           => fixnum or nil
        # 
        # Set the dns cache timeout in seconds. Name resolves will be kept in
        # memory for this number of seconds. Set to zero (0) to completely disable
        # caching, or set to nil (or -1) to make the cached entries remain forever.
        # By default, libcurl caches this info for 60 seconds.
        def dns_cache_timeout=(p1)
            #This is a stub, used for indexing
        end
        # easy.dns_cache_timeout                           => fixnum or nil
        # 
        # Obtain the dns cache timeout in seconds.
        def dns_cache_timeout()
            #This is a stub, used for indexing
        end
        # easy.ftp_response_timeout = fixnum or nil        => fixnum or nil
        # 
        # Set a timeout period (in seconds) on the amount of time that the server
        # is allowed to take in order to generate a response message for a command
        # before the session is considered hung. While curl is waiting for a
        # response, this value overrides +timeout+. It is recommended that if used
        # in conjunction with +timeout+, you set +ftp_response_timeout+ to a value
        # smaller than +timeout+.
        # 
        # Ignored if libcurl version is < 7.10.8.
        def ftp_response_timeout=(p1)
            #This is a stub, used for indexing
        end
        # easy.ftp_response_timeout                        => fixnum or nil
        # 
        # Obtain the maximum time that libcurl will wait for FTP command responses.
        def ftp_response_timeout()
            #This is a stub, used for indexing
        end
        # easy.low_speed_limit = fixnum or nil        => fixnum or nil
        # 
        # Set the transfer speed (in bytes per second) that the transfer should be
        # below during +low_speed_time+ seconds for the library to consider it too
        # slow and abort.
        def low_speed_limit=(p1)
            #This is a stub, used for indexing
        end
        # easy.low_speed_limit                        => fixnum or nil
        # 
        # Obtain the minimum transfer speed over +low_speed+time+ below which the
        # transfer will be aborted.
        def low_speed_limit()
            #This is a stub, used for indexing
        end
        # easy.low_speed_time = fixnum or nil        => fixnum or nil
        # 
        # Set the time (in seconds) that the transfer should be below the
        # +low_speed_limit+ for the library to consider it too slow and abort.
        def low_speed_time=(p1)
            #This is a stub, used for indexing
        end
        # easy.low_speed_time                        => fixnum or nil
        # 
        # Obtain the time that the transfer should be below +low_speed_limit+ for
        # the library to abort it.
        def low_speed_time()
            #This is a stub, used for indexing
        end
        # easy.ssl_version = value                         => fixnum or nil
        # 
        # Sets the version of SSL/TLS that libcurl will attempt to use. Valid
        # options are Curl::CURL_SSLVERSION_TLSv1, Curl::CURL_SSLVERSION::SSLv2,
        # Curl::CURL_SSLVERSION_SSLv3 and Curl::CURL_SSLVERSION_DEFAULT
        def ssl_version= value
            #This is a stub, used for indexing
        end
        # easy.ssl_version                                 => fixnum
        # 
        # Get the version of SSL/TLS that libcurl will attempt to use.
        def ssl_version()
            #This is a stub, used for indexing
        end
        # easy.use_ssl = value                             => fixnum or nil
        # 
        # Ensure libcurl uses SSL for FTP connections. Valid options are Curl::CURL_USESSL_NONE,
        # Curl::CURL_USESSL_TRY, Curl::CURL_USESSL_CONTROL, and Curl::CURL_USESSL_ALL.
        def use_ssl= value
            #This is a stub, used for indexing
        end
        # easy.use_ssl                                     => fixnum
        # 
        # Get the desired level for using SSL on FTP connections.
        def use_ssl()
            #This is a stub, used for indexing
        end
        # easy.ftp_filemethod = value                      => fixnum or nil
        # 
        # Controls how libcurl reaches files on the server. Valid options are Curl::CURL_MULTICWD,
        # Curl::CURL_NOCWD, and Curl::CURL_SINGLECWD (see libcurl docs for CURLOPT_FTP_METHOD).
        def ftp_filemethod= value
            #This is a stub, used for indexing
        end
        # call-seq
        #   easy.ftp_filemethod                              => fixnum
        # 
        # Get the configuration for how libcurl will reach files on the server.
        def ftp_filemethod()
            #This is a stub, used for indexing
        end
        # easy.username = string                           => string
        # 
        # Set the HTTP Authentication username.
        def username= string
            #This is a stub, used for indexing
        end
        # easy.username                                    => string
        # 
        # Get the current username
        def username()
            #This is a stub, used for indexing
        end
        # easy.password = string                           => string
        # 
        # Set the HTTP Authentication password.
        def password= string
            #This is a stub, used for indexing
        end
        # easy.password                                    => string
        # 
        # Get the current password
        def password()
            #This is a stub, used for indexing
        end
        # easy.proxy_tunnel = boolean                      => boolean
        # 
        # Configure whether this Curl instance will use proxy tunneling.
        def proxy_tunnel= boolean
            #This is a stub, used for indexing
        end
        # easy.proxy_tunnel?                               => boolean
        # 
        # Determine whether this Curl instance will use proxy tunneling.
        def proxy_tunnel?()
            #This is a stub, used for indexing
        end
        # easy.fetch_file_time = boolean                   => boolean
        # 
        # Configure whether this Curl instance will fetch remote file
        # times, if available.
        def fetch_file_time= boolean
            #This is a stub, used for indexing
        end
        # easy.fetch_file_time?                            => boolean
        # 
        # Determine whether this Curl instance will fetch remote file
        # times, if available.
        def fetch_file_time?()
            #This is a stub, used for indexing
        end
        # easy.ssl_verify_peer = boolean                   => boolean
        # 
        # Configure whether this Curl instance will verify the SSL peer
        # certificate. When true (the default), and the verification fails to
        # prove that the certificate is authentic, the connection fails. When
        # false, the connection succeeds regardless.
        # 
        # Authenticating the certificate is not by itself very useful. You
        # typically want to ensure that the server, as authentically identified
        # by its certificate, is the server you mean to be talking to.
        # The ssl_verify_host? options controls that.
        def ssl_verify_peer= boolean
            #This is a stub, used for indexing
        end
        # easy.ssl_verify_peer?                            => boolean
        # 
        # Determine whether this Curl instance will verify the SSL peer
        # certificate.
        def ssl_verify_peer?()
            #This is a stub, used for indexing
        end
        # easy.ssl_verify_host = [0, 1, 2]                   => [0, 1, 2]
        # 
        # Configure whether this Curl instance will verify that the server cert
        # is for the server it is known as. When true (the default) the server
        # certificate must indicate that the server is the server to which you
        # meant to connect, or the connection fails. When false, the connection
        # will succeed regardless of the names in the certificate.
        # 
        # this option controls is of the identity that the server claims.
        # The server could be lying. To control lying, see ssl_verify_peer? .
        def ssl_verify_host_integer=(p1)
            #This is a stub, used for indexing
        end
        # easy.ssl_verify_host                            => number
        # 
        # Determine whether this Curl instance will verify that the server cert
        # is for the server it is known as.
        def ssl_verify_host()
            #This is a stub, used for indexing
        end
        # easy.header_in_body = boolean                    => boolean
        # 
        # Configure whether this Curl instance will return HTTP headers
        # combined with body data. If this option is set true, both header
        # and body data will go to +body_str+ (or the configured +on_body+ handler).
        def header_in_body= boolean
            #This is a stub, used for indexing
        end
        # easy.header_in_body?                             => boolean
        # 
        # Determine whether this Curl instance will return HTTP headers
        # combined with body data.
        def header_in_body?()
            #This is a stub, used for indexing
        end
        # easy.use_netrc = boolean                         => boolean
        # 
        # Configure whether this Curl instance will use data from the user's
        # .netrc file for FTP connections.
        def use_netrc= boolean
            #This is a stub, used for indexing
        end
        # easy.use_netrc?                                  => boolean
        # 
        # Determine whether this Curl instance will use data from the user's
        # .netrc file for FTP connections.
        def use_netrc?()
            #This is a stub, used for indexing
        end
        # easy.follow_location?                            => boolean
        # 
        # Determine whether this Curl instance will follow Location: headers
        # in HTTP responses.
        def follow_location?()
            #This is a stub, used for indexing
        end
        # 
        # easy = Curl::Easy.new
        # easy.autoreferer=true
        def autoreferer=(p1)
            #This is a stub, used for indexing
        end
        # easy.unrestricted_auth = boolean                 => boolean
        # 
        # Configure whether this Curl instance may use any HTTP authentication
        # method available when necessary.
        def unrestricted_auth= boolean
            #This is a stub, used for indexing
        end
        # easy.unrestricted_auth?                          => boolean
        # 
        # Determine whether this Curl instance may use any HTTP authentication
        # method available when necessary.
        def unrestricted_auth?()
            #This is a stub, used for indexing
        end
        # easy.verbose = boolean                           => boolean
        # 
        # Configure whether this Curl instance gives verbose output to STDERR
        # during transfers. Ignored if this instance has an on_debug handler.
        def verbose= boolean
            #This is a stub, used for indexing
        end
        # easy.verbose?                                    => boolean
        # 
        # Determine whether this Curl instance gives verbose output to STDERR
        # during transfers.
        def verbose?()
            #This is a stub, used for indexing
        end
        # easy.multipart_form_post = boolean               => boolean
        # 
        # Configure whether this Curl instance uses multipart/formdata content
        # type for HTTP POST requests. If this is false (the default), then the
        # application/x-www-form-urlencoded content type is used for the form
        # data.
        # 
        # If this is set true, you must pass one or more PostField instances
        # to the http_post method - no support for posting multipart forms from
        # a string is provided.
        def multipart_form_post= boolean
            #This is a stub, used for indexing
        end
        # easy.multipart_form_post?                        => boolean
        # 
        # Determine whether this Curl instance uses multipart/formdata content
        # type for HTTP POST requests.
        def multipart_form_post?()
            #This is a stub, used for indexing
        end
        # easy.enable_cookies = boolean                    => boolean
        # 
        # Configure whether the libcurl cookie engine is enabled for this Curl::Easy
        # instance.
        def enable_cookies= boolean
            #This is a stub, used for indexing
        end
        # easy.enable_cookies?                             => boolean
        # 
        # Determine whether the libcurl cookie engine is enabled for this
        # Curl::Easy instance.
        def enable_cookies?()
            #This is a stub, used for indexing
        end
        # easy.ignore_content_length = boolean
        # 
        # Configure whether this Curl::Easy instance should ignore the content
        # length header.
        def ignore_content_length= boolean
            #This is a stub, used for indexing
        end
        # easy.ignore_content_length?                             => boolean
        # 
        # Determine whether this Curl::Easy instance ignores the content
        # length header.
        def ignore_content_length?()
            #This is a stub, used for indexing
        end
        # easy.resolve_mode                                      => symbol
        # 
        # Determines what type of IP address this Curl::Easy instance
        # resolves DNS names to.
        def resolve_mode()
            #This is a stub, used for indexing
        end
        # easy.resolve_mode = symbol                             => symbol
        # 
        # Configures what type of IP address this Curl::Easy instance
        # resolves DNS names to. Valid options are:
        # 
        # [:auto]  resolves DNS names to all IP versions your system allows
        # [:ipv4]  resolves DNS names to IPv4 only
        # [:ipv6]  resolves DNS names to IPv6 only
        def resolve_mode= symbol
            #This is a stub, used for indexing
        end
        # easy.on_body { |body_data| ... }                 => &lt;old handler&gt;
        # 
        # Assign or remove the +on_body+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_body+ handler is called for each chunk of response body passed back
        # by libcurl during +perform+. It should perform any processing necessary,
        # and return the actual number of bytes handled. Normally, this will
        # equal the length of the data string, and CURL will continue processing.
        # If the returned length does not equal the input length, CURL will abort
        # the processing with a Curl::Err::AbortedByCallbackError.
        def on_body()
            #This is a stub, used for indexing
        end
        # easy.on_header { |header_data| ... }             => &lt;old handler&gt;
        # 
        # Assign or remove the +on_header+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_header+ handler is called for each chunk of response header passed
        # back by libcurl during +perform+. The semantics are the same as for the
        # block supplied to +on_body+.
        def on_header()
            #This is a stub, used for indexing
        end
        # easy.on_progress { |dl_total, dl_now, ul_total, ul_now| ... } => &lt;old handler&gt;
        # 
        # Assign or remove the +on_progress+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_progress+ handler is called regularly by libcurl (approximately once
        # per second) during transfers to allow the application to receive progress
        # information. There is no guarantee that the reported progress will change
        # between calls.
        # 
        # The result of the block call determines whether libcurl continues the transfer.
        # Returning a non-true value (i.e. nil or false) will cause the transfer to abort,
        # throwing a Curl::Err::AbortedByCallbackError.
        def on_progress()
            #This is a stub, used for indexing
        end
        # easy.on_debug { |type, data| ... }               => &lt;old handler&gt;
        # 
        # Assign or remove the +on_debug+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_debug+ handler, if configured, will receive detailed information
        # from libcurl during the perform call. This can be useful for debugging.
        # Setting a debug handler overrides libcurl's internal handler, disabling
        # any output from +verbose+, if set.
        # 
        # The type argument will match one of the Curl::Easy::CURLINFO_XXXX
        # constants, and specifies the kind of information contained in the
        # data. The data is passed as a String.
        def on_debug()
            #This is a stub, used for indexing
        end
        # easy.on_success { |easy| ... }                   => &lt;old handler&gt;
        # 
        # Assign or remove the +on_success+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_success+ handler is called when the request is finished with a
        # status of 20x
        def on_success()
            #This is a stub, used for indexing
        end
        # easy.on_failure {|easy,code| ... }               => &lt;old handler&gt;
        # 
        # Assign or remove the +on_failure+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_failure+ handler is called when the request is finished with a
        # status of 50x
        def on_failure()
            #This is a stub, used for indexing
        end
        # easy.on_missing {|easy,code| ... }                => &lt;old handler;&gt;
        # 
        #  Assign or remove the on_missing handler for this Curl::Easy instance.
        #  To remove a previously-supplied handler, call this method with no attached
        #  block.
        # 
        #  The +on_missing+ handler is called when request is finished with a 
        #  status of 40x
        def on_missing()
            #This is a stub, used for indexing
        end
        # easy.on_redirect {|easy,code| ... }                => &lt;old handler;&gt;
        # 
        #  Assign or remove the on_redirect handler for this Curl::Easy instance.
        #  To remove a previously-supplied handler, call this method with no attached
        #  block.
        # 
        #  The +on_redirect+ handler is called when request is finished with a 
        #  status of 30x
        def on_redirect()
            #This is a stub, used for indexing
        end
        # easy.on_complete {|easy| ... }                   => &lt;old handler&gt;
        # 
        # Assign or remove the +on_complete+ handler for this Curl::Easy instance.
        # To remove a previously-supplied handler, call this method with no
        # attached block.
        # 
        # The +on_complete+ handler is called when the request is finished.
        def on_complete()
            #This is a stub, used for indexing
        end
        # easy.http(verb)
        # 
        # Send an HTTP request with method set to verb, using the current options set for this Curl::Easy instance.
        # This method always returns true or raises an exception (defined under Curl::Err) on error.
        def http(verb)
            #This is a stub, used for indexing
        end
        # easy.http_post("url=encoded%20form%20data;and=so%20on") => true
        # easy.http_post("url=encoded%20form%20data", "and=so%20on", ...) => true
        # easy.http_post("url=encoded%20form%20data", Curl::PostField, "and=so%20on", ...) => true
        # easy.http_post(Curl::PostField, Curl::PostField ..., Curl::PostField) => true
        # 
        # POST the specified formdata to the currently configured URL using
        # the current options set for this Curl::Easy instance. This method
        # always returns true, or raises an exception (defined under
        # Curl::Err) on error.
        # 
        # The Content-type of the POST is determined by the current setting
        # of multipart_form_post? , according to the following rules:
        # * When false (the default): the form will be POSTed with a
        #   content-type of 'application/x-www-form-urlencoded', and any of the
        #   four calling forms may be used.
        # * When true: the form will be POSTed with a content-type of
        #   'multipart/formdata'. Only the last calling form may be used,
        #   i.e. only PostField instances may be POSTed. In this mode,
        #   individual fields' content-types are recognised, and file upload
        #   fields are supported.
        def http_post(*several_variants)
            #This is a stub, used for indexing
        end
        # easy.http_put(data)                              => true
        # 
        # PUT the supplied data to the currently configured URL using the
        # current options set for this Curl::Easy instance. This method always
        # returns true, or raises an exception (defined under Curl::Err) on error.
        def http_put(data)
            #This is a stub, used for indexing
        end
        # easy.body_str                                    => "response body"
        # 
        # Return the response body from the previous call to +perform+. This
        # is populated by the default +on_body+ handler - if you supply
        # your own body handler, this string will be empty.
        def body_str()
            #This is a stub, used for indexing
        end
        # easy.header_str                                  => "response header"
        # 
        # Return the response header from the previous call to +perform+. This
        # is populated by the default +on_header+ handler - if you supply
        # your own header handler, this string will be empty.
        def header_str()
            #This is a stub, used for indexing
        end
        # easy.last_effective_url                          => "http://some.url" or nil
        # 
        # Retrieve the last effective URL used by this instance.
        # This is the URL used in the last +perform+ call,
        # and may differ from the value of easy.url.
        def last_effective_url()
            #This is a stub, used for indexing
        end
        # easy.response_code                               => fixnum
        # 
        # Retrieve the last received HTTP or FTP code. This will be zero
        # if no server response code has been received. Note that a proxy's
        # CONNECT response should be read with +http_connect_code+
        # and not this method.
        def response_code()
            #This is a stub, used for indexing
        end
        # easy.primary_ip                                  => "xx.xx.xx.xx" or nil
        # 
        #   Retrieve the resolved IP of the most recent connection
        #   done with this curl handle. This string may be  IPv6 if
        #   that's enabled. This feature requires curl 7.19.x and above
        def primary_ip()
            #This is a stub, used for indexing
        end
        # easy.http_connect_code                           => fixnum
        # 
        # Retrieve the last received proxy response code to a CONNECT request.
        def http_connect_code()
            #This is a stub, used for indexing
        end
        # easy.file_time                                   => fixnum
        # 
        # Retrieve the remote time of the retrieved document (in number of
        # seconds since 1 jan 1970 in the GMT/UTC time zone). If you get -1,
        # it can be because of many reasons (unknown, the server hides it
        # or the server doesn't support the command that tells document time
        # etc) and the time of the document is unknown.
        # 
        # Note that you must tell the server to collect this information
        # before the transfer is made, by setting +fetch_file_time?+ to true,
        # or you will unconditionally get a -1 back.
        # 
        # This requires libcurl 7.5 or higher - otherwise -1 is unconditionally
        # returned.
        def file_time()
            #This is a stub, used for indexing
        end
        # easy.total_time                                  => float
        # 
        # Retrieve the total time in seconds for the previous transfer,
        # including name resolving, TCP connect etc.
        def total_time()
            #This is a stub, used for indexing
        end
        # easy.name_lookup_time                            => float
        # 
        # Retrieve the time, in seconds, it took from the start until the
        # name resolving was completed.
        def name_lookup_time()
            #This is a stub, used for indexing
        end
        # easy.connect_time                                => float
        # 
        # Retrieve the time, in seconds, it took from the start until the
        # connect to the remote host (or proxy) was completed.
        def connect_time()
            #This is a stub, used for indexing
        end
        def app_connect_time()
            #This is a stub, used for indexing
        end
        # easy.pre_transfer_time                           => float
        # 
        # Retrieve the time, in seconds, it took from the start until the
        # file transfer is just about to begin. This includes all pre-transfer
        # commands and negotiations that are specific to the particular protocol(s)
        # involved.
        def pre_transfer_time()
            #This is a stub, used for indexing
        end
        # easy.start_transfer_time                         => float
        # 
        # Retrieve the time, in seconds, it took from the start until the first byte
        # is just about to be transferred. This includes the +pre_transfer_time+ and
        # also the time the server needs to calculate the result.
        def start_transfer_time()
            #This is a stub, used for indexing
        end
        # easy.redirect_time                               => float
        # 
        # Retrieve the total time, in seconds, it took for all redirection steps
        # include name lookup, connect, pretransfer and transfer before final
        # transaction was started. +redirect_time+ contains the complete
        # execution time for multiple redirections.
        # 
        # Requires libcurl 7.9.7 or higher, otherwise -1 is always returned.
        def redirect_time()
            #This is a stub, used for indexing
        end
        # easy.redirect_count                            => integer
        # 
        # Retrieve the total number of redirections that were actually followed.
        # 
        # Requires libcurl 7.9.7 or higher, otherwise -1 is always returned.
        def redirect_count()
            #This is a stub, used for indexing
        end
        # easy.redirect_url                               => "http://some.url" or nil
        # 
        # Retrieve  the URL a redirect would take you to if you 
        # would enable CURLOPT_FOLLOWLOCATION.
        # 
        # Requires libcurl 7.18.2 or higher, otherwise -1 is always returned.
        def redirect_url()
            #This is a stub, used for indexing
        end
        # easy.downloaded_bytes                            => float
        # 
        # Retrieve the total amount of bytes that were downloaded in the
        # preceeding transfer.
        def downloaded_bytes()
            #This is a stub, used for indexing
        end
        # easy.uploaded_bytes                              => float
        # 
        # Retrieve the total amount of bytes that were uploaded in the
        # preceeding transfer.
        def uploaded_bytes()
            #This is a stub, used for indexing
        end
        # easy.download_speed                              => float
        # 
        # Retrieve the average download speed that curl measured for
        # the preceeding complete download.
        def download_speed()
            #This is a stub, used for indexing
        end
        # easy.upload_speed                                => float
        # 
        # Retrieve the average upload speed that curl measured for the
        # preceeding complete upload.
        def upload_speed()
            #This is a stub, used for indexing
        end
        # easy.header_size                                 => fixnum
        # 
        # Retrieve the total size of all the headers received in the
        # preceeding transfer.
        def header_size()
            #This is a stub, used for indexing
        end
        # easy.request_size                                => fixnum
        # 
        # Retrieve the total size of the issued requests. This is so far
        # only for HTTP requests. Note that this may be more than one request
        # if +follow_location?+ is true.
        def request_size()
            #This is a stub, used for indexing
        end
        # easy.ssl_verify_result                           => integer
        # 
        # Retrieve the result of the certification verification that was requested
        # (by setting +ssl_verify_peer?+ to +true+).
        def ssl_verify_result()
            #This is a stub, used for indexing
        end
        # easy.downloaded_content_length                   => float
        # 
        # Retrieve the content-length of the download. This is the value read
        # from the Content-Length: field.
        def downloaded_content_length()
            #This is a stub, used for indexing
        end
        # easy.uploaded_content_length                     => float
        # 
        # Retrieve the content-length of the upload.
        def uploaded_content_length()
            #This is a stub, used for indexing
        end
        # easy.content_type                                => "content/type" or nil
        # 
        # Retrieve the content-type of the downloaded object. This is the value read
        # from the Content-Type: field. If you get +nil+, it means that the server
        # didn't send a valid Content-Type header or that the protocol used doesn't
        # support this.
        def content_type()
            #This is a stub, used for indexing
        end
        # easy.os_errno                                    => integer
        # 
        # Retrieve the errno variable from a connect failure (requires
        # libcurl 7.12.2 or higher, otherwise 0 is always returned).
        def os_errno()
            #This is a stub, used for indexing
        end
        # easy.num_connects                                => integer
        # 
        # Retrieve the number of new connections libcurl had to create to achieve
        # the previous transfer (only the successful connects are counted).
        # Combined with +redirect_count+ you are able to know how many times libcurl
        # successfully reused existing connection(s) or not.
        # 
        # See the Connection Options of curl_easy_setopt(3) to see how libcurl tries
        # to make persistent connections to save time.
        # 
        # (requires libcurl 7.12.3 or higher, otherwise -1 is always returned).
        def num_connects()
            #This is a stub, used for indexing
        end
        # easy.ftp_entry_path                                => "C:\ftp\root\" or nil
        # 
        # Retrieve the path of the entry path. That is the initial path libcurl ended
        # up in when logging on to the remote FTP server. This returns +nil+ if
        # something is wrong.
        # 
        # (requires libcurl 7.15.4 or higher, otherwise +nil+ is always returned).
        def ftp_entry_path()
            #This is a stub, used for indexing
        end
        # easy.close                                      => nil
        # 
        # Close the Curl::Easy instance. Any open connections are closed
        # The easy handle is reinitialized.  If a previous multi handle was 
        # open it is set to nil and will be cleared after a GC.
        def close()
            #This is a stub, used for indexing
        end
        # easy.reset                                      => Hash
        # 
        # Reset the Curl::Easy instance, clears out all settings.
        # 
        # from http://curl.haxx.se/libcurl/c/curl_easy_reset.html
        # Re-initializes all options previously set on a specified CURL handle to the default values. This puts back the handle to the same state as it was in when it was just created with curl_easy_init(3).
        # It does not change the following information kept in the handle: live connections, the Session ID cache, the DNS cache, the cookies and shares.
        # 
        # The return value contains all settings stored.
        def reset()
            #This is a stub, used for indexing
        end
        # easy.escape("some text")                         => "some%20text"
        # 
        # Convert the given input string to a URL encoded string and return
        # the result. All input characters that are not a-z, A-Z or 0-9 are
        # converted to their "URL escaped" version (%NN where NN is a
        # two-digit hexadecimal number).
        def escape(p1)
            #This is a stub, used for indexing
        end
        # easy.unescape("some%20text")                     => "some text"
        # 
        # Convert the given URL encoded input string to a "plain string" and return
        # the result. All input characters that are URL encoded (%XX where XX is a
        # two-digit hexadecimal number) are converted to their binary versions.
        def unescape(p1)
            #This is a stub, used for indexing
        end
        # easy.clone                                       => #&lt;easy clone&gt;
        # easy.dup                                         => #&lt;easy clone&gt;
        # 
        # Clone this Curl::Easy instance, creating a new instance.
        # This method duplicates the underlying CURL* handle.
        def clone()
            #This is a stub, used for indexing
        end
        alias dup clone
        # easy.inspect                                     => "#<Curl::Easy http://google.com/>"
        def inspect()
            #This is a stub, used for indexing
        end
        # easy.multi                                     => "#<Curl::Multi>"
        def multi()
            #This is a stub, used for indexing
        end
        # easy.multi=multi                                    => "#<Curl::Multi>"
        def multi= multi
            #This is a stub, used for indexing
        end
        # easy.last_result                                    => 0
        def last_result()
            #This is a stub, used for indexing
        end
        # easy.setopt Fixnum, value  => value
        # 
        # Iniital access to libcurl curl_easy_setopt
        def setopt(p1, p2)
            #This is a stub, used for indexing
        end
        # easy.getinfo Fixnum => value
        # 
        # Iniital access to libcurl curl_easy_getinfo, remember getinfo doesn't return the same values as setopt
        def getinfo(p1)
            #This is a stub, used for indexing
        end
        def dup()
            #This is a stub, used for indexing
        end
    end
    module Err
        class AbortedByCallbackError < CurlError
        end
        class AccessDeniedError < FTPError
        end
        class Again < CurlError
        end
        class BadCallingOrderError < CurlError
        end
        class BadContentEncodingError < CurlError
        end
        class BadFunctionArgumentError < CurlError
        end
        class BadOptionSyntaxError < TelnetError
        end
        class BadPasswordEnteredError < CurlError
        end
        class BadPasswordError < FTPError
        end
        class BadResumeError < CurlError
        end
        class CantGetHostError < FTPError
        end
        class CantReconnectError < FTPError
        end
        class ConnectionFailedError < CurlError
        end
        class ConvFailed < CurlError
        end
        class ConvReqd < CurlError
        end
        class CouldntBindError < LDAPError
        end
        class CouldntGetSizeError < FTPError
        end
        class CouldntReadError < FileError
        end
        class CouldntRetrFileError < FTPError
        end
        class CouldntSetASCIIError < FTPError
        end
        class CouldntSetBinaryError < FTPError
        end
        class CouldntStorFileError < FTPError
        end
        class CouldntUseRestError < FTPError
        end
        class CurlError < RuntimeError
        end
        class CurlOK < CurlError
        end
        class DiskFullError < TFTPError
        end
        class FTPError < CurlError
        end
        class FTPQuoteError < FTPError
        end
        class FTPSSLFailed < FTPError
        end
        class FTPWriteError < FTPError
        end
        class FailedInitError < CurlError
        end
        class FileError < CurlError
        end
        class FileExistsError < TFTPError
        end
        class FileSizeExceededError < CurlError
        end
        class FunctionNotFoundError < CurlError
        end
        class GotNothingError < CurlError
        end
        class HTTPError < CurlError
        end
        class HTTPFailedError < HTTPError
        end
        class HTTPPostError < HTTPError
        end
        class HTTPRangeError < HTTPError
        end
        class HostResolutionError < CurlError
        end
        class IllegalOperationError < TFTPError
        end
        class InterfaceFailedError < CurlError
        end
        class InvalidLDAPURLError < LDAPError
        end
        class InvalidPostFieldError < CurlError
        end
        class LDAPError < CurlError
        end
        class LibraryNotFoundError < CurlError
        end
        class LoginDeniedError < CurlError
        end
        class MalformedURLError < CurlError
        end
        class MalformedURLUserError < CurlError
        end
        class MalformedUserError < CurlError
        end
        class MultiAddedAlready < CurlError
        end
        class MultiBadEasyHandle < CurlError
        end
        class MultiBadHandle < CurlError
        end
        class MultiBadSocket < CurlError
        end
        class MultiInitError < CurlError
        end
        class MultiInternalError < CurlError
        end
        class MultiOutOfMemory < CurlError
        end
        class MultiPerform < CurlError
        end
        class MultiUnknownOption < CurlError
        end
        class NoSuchUserError < TFTPError
        end
        class NotBuiltInError < CurlError
        end
        class NotFoundError < TFTPError
        end
        class ObsoleteError < CurlError
        end
        class OutOfMemoryError < CurlError
        end
        class PartialFileError < CurlError
        end
        class PermissionError < TFTPError
        end
        class PortFailedError < FTPError
        end
        class ProxyResolutionError < CurlError
        end
        class ReadError < CurlError
        end
        class RecvError < CurlError
        end
        class RemoteFileNotFound < CurlError
        end
        class SSH < CurlError
        end
        class SSLCACertificateError < CurlError
        end
        class SSLCRLBadfile < CurlError
        end
        class SSLCaertBadFile < CurlError
        end
        class SSLCertificateError < CurlError
        end
        class SSLConnectError < CurlError
        end
        class SSLCypherError < CurlError
        end
        class SSLEngineInitFailedError < CurlError
        end
        class SSLEngineNotFoundError < CurlError
        end
        class SSLEngineSetFailedError < CurlError
        end
        class SSLIssuerError < CurlError
        end
        class SSLPeerCertificateError < CurlError
        end
        class SSLShutdownFailed < CurlError
        end
        class SearchFailedError < LDAPError
        end
        class SendError < CurlError
        end
        class SendFailedRewind < CurlError
        end
        class ShareInUseError < CurlError
        end
        class TFTPError < CurlError
        end
        class TelnetError < CurlError
        end
        class TimeoutError < CurlError
        end
        class TooManyRedirectsError < CurlError
        end
        class UnknownIDError < TFTPError
        end
        class UnknownOptionError < TelnetError
        end
        class UnsupportedProtocolError < CurlError
        end
        class Weird227FormatError < FTPError
        end
        class WeirdPassReplyError < FTPError
        end
        class WeirdPasvReplyError < FTPError
        end
        class WeirdReplyError < FTPError
        end
        class WeirdUserReplyError < FTPError
        end
        class WriteError < CurlError
        end
    end
    class Multi
        # Curl::Multi.new                                   => #&lt;Curl::Easy...&gt;
        # 
        # Create a new Curl::Multi instance
        def self.new()
            #This is a stub, used for indexing
        end
        # Curl::Multi.default_timeout = 4 => 4
        # 
        # Set the global default time out for all Curl::Multi Handles.  This value is used
        # when libcurl cannot determine a timeout value when calling curl_multi_timeout.
        def self.default_timeout=(p1)
            #This is a stub, used for indexing
        end
        # Curl::Multi.default_timeout = 4 => 4
        # 
        # Get the global default time out for all Curl::Multi Handles.
        def self.default_timeout()
            #This is a stub, used for indexing
        end
        # multi.requests                                   => [#&lt;Curl::Easy...&gt;, ...]
        # 
        # Returns an array containing all the active requests on this Curl::Multi object.
        def requests()
            #This is a stub, used for indexing
        end
        # multi.idle?                                      => true or false
        # 
        # Returns whether or not this Curl::Multi handle is processing any requests.  E.g. this returns
        # true when multi.requests.length == 0.
        def idle?()
            #This is a stub, used for indexing
        end
        # multi = Curl::Multi.new
        # multi.max_connects = 800
        # 
        # Set the max connections in the cache for a multi handle
        def max_connects=(p1)
            #This is a stub, used for indexing
        end
        # multi = Curl::Multi.new
        # multi.pipeline = true
        # 
        # Pass a long set to 1 to enable or 0 to disable. Enabling pipelining on a multi handle will make it
        # attempt to perform HTTP Pipelining as far as possible for transfers using this handle. This means
        # that if you add a second request that can use an already existing connection, the second request will
        # be "piped" on the same connection rather than being executed in parallel. (Added in 7.16.0)
        def pipeline=(p1)
            #This is a stub, used for indexing
        end
        # multi = Curl::Multi.new
        # easy = Curl::Easy.new('url')
        # multi.add(easy)
        # 
        # Add an easy handle to the multi stack
        def add(easy)
            #This is a stub, used for indexing
        end
        # multi = Curl::Multi.new
        # easy = Curl::Easy.new('url')
        # multi.add(easy)
        # 
        # # sometime later
        # multi.remove(easy)
        # 
        # Remove an easy handle from a multi stack.
        # 
        # Will raise an exception if the easy handle is not found
        def remove(p1)
            #This is a stub, used for indexing
        end
        # multi.cancel!
        # 
        # Cancels all requests currently being made on this Curl::Multi handle.  
        def cancel!()
            #This is a stub, used for indexing
        end
        # multi = Curl::Multi.new
        # easy1 = Curl::Easy.new('url')
        # easy2 = Curl::Easy.new('url')
        # multi.add(easy1)
        # multi.add(easy2)
        # multi.perform do
        # # while idle other code my execute here
        # end
        # 
        # Run multi handles, looping selecting when data can be transfered
        def perform(&block)
            #This is a stub, used for indexing
        end
    end
    class PostField
        # Curl::PostField.content(name, content) => #&lt;Curl::PostField...&gt;
        # Curl::PostField.content(name, content, content_type = nil) => #&lt;Curl::PostField...&gt;
        # Curl::PostField.content(name, content_type = nil) { |field| ... } => #&lt;Curl::PostField...&gt;
        # 
        # Create a new Curl::PostField, supplying the field name, content,
        # and, optionally, Content-type (curl will attempt to determine this if
        # not specified).
        # 
        # The block form allows a block to supply the content for this field, called
        # during the perform. The block should return a ruby string with the field
        # data.
        def self.content(*several_variants)
            #This is a stub, used for indexing
        end
        # Curl::PostField.file(name, local_file_name) => #&lt;Curl::PostField...&gt;
        # Curl::PostField.file(name, local_file_name, remote_file_name = local_file_name) => #&lt;Curl::PostField...&gt;
        # Curl::PostField.file(name, remote_file_name) { |field| ... } => #&lt;Curl::PostField...&gt;
        # 
        # Create a new Curl::PostField for a file upload field, supplying the local filename
        # to read from, and optionally the remote filename (defaults to the local name).
        # 
        # The block form allows a block to supply the content for this field, called
        # during the perform. The block should return a ruby string with the field
        # data.
        def self.file(*several_variants)
            #This is a stub, used for indexing
        end
        # field.name = "name"                            => "name"
        # 
        # Set the POST field name for this PostField.
        def name=(p1)
            #This is a stub, used for indexing
        end
        # field.name                                       => "name"
        # 
        # Obtain the POST field name for this PostField.
        def name()
            #This is a stub, used for indexing
        end
        # field.content = "content"                        => "content"
        # 
        # Set the POST field content for this PostField. Ignored when a 
        # content_proc is supplied via either +Curl::PostField.file+ or 
        # +set_content_proc+.
        def content=(p1)
            #This is a stub, used for indexing
        end
        # field.content                                    => "content"
        # 
        # Obtain the POST field content for this PostField.
        def content()
            #This is a stub, used for indexing
        end
        # field.content_type = "content_type"              => "content_type"
        # 
        # Set the POST field Content-type for this PostField.
        def content_type=(p1)
            #This is a stub, used for indexing
        end
        # field.content_type                               => "content_type"
        # 
        # Get the POST field Content-type for this PostField.
        def content_type()
            #This is a stub, used for indexing
        end
        # field.local_file = "filename"                    => "filename"
        # 
        # Set the POST field local filename for this PostField (when performing
        # a file upload). Ignored when a content_proc is supplied via either 
        # +Curl::PostField.file+ or +set_content_proc+.
        def local_file=(p1)
            #This is a stub, used for indexing
        end
        # field.local_file                                 => "filename"
        # 
        # Get the POST field local filename for this PostField (when performing
        # a file upload). 
        def local_file()
            #This is a stub, used for indexing
        end
        # field.remote_file = "filename"                   => "filename"
        # 
        # Set the POST field remote filename for this PostField (when performing
        # a file upload). If no remote filename is provided, and no content_proc
        # is supplied, the local filename is used. If no remote filename is 
        # specified when a content_proc is used, an exception will be raised 
        # during the perform. 
        def remote_file=(p1)
            #This is a stub, used for indexing
        end
        # field.local_file                                 => "filename"
        # 
        # Get the POST field remote filename for this PostField (when performing
        # a file upload).
        def remote_file()
            #This is a stub, used for indexing
        end
        # field.set_content_proc { |field| ... }           => &lt;old proc&gt;
        # 
        # Set a content proc for this field. This proc will be called during the
        # perform to supply the content for this field, overriding any setting
        # of +content+ or +local_file+.
        def set_content_proc()
            #This is a stub, used for indexing
        end
        # field.to_str                                     => "name=value"
        # field.to_s                                       => "name=value"
        # 
        # Obtain a String representation of this PostField in url-encoded 
        # format. This is used to construct the post data for non-multipart
        # POSTs.
        # 
        # Only content fields may be converted to strings.
        def to_str()
            #This is a stub, used for indexing
        end
        alias to_s to_str
        def to_s()
            #This is a stub, used for indexing
        end
    end
    class Upload
        # internal class for sending large file uploads
        def self.new()
            #This is a stub, used for indexing
        end
        # internal class for sending large file uploads
        def stream=(p1)
            #This is a stub, used for indexing
        end
        # internal class for sending large file uploads
        def stream()
            #This is a stub, used for indexing
        end
        # internal class for sending large file uploads
        def offset=(p1)
            #This is a stub, used for indexing
        end
        # internal class for sending large file uploads
        def offset()
            #This is a stub, used for indexing
        end
    end
end
