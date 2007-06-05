#          Copyright (c) 2006 Michael Fellinger m.fellinger@gmail.com
# All files in this distribution are subject to the terms of the Ruby license.

module Ramaze

  # Shortcuts to some CGI methods

  module CgiHelper
    private

    # shortcut for CGI.escape

    def url_encode(*args)
      CGI.escape(*args)
    end

    # shortcut for CGI.unescape

    def url_decode(*args)
      CGI.unescape(*args)
    end

    # shortcut for GCI.escapeHTML

    def escape_html(string)
      CGI.escapeHTML(string)
    end

    # shortcut for GCI.unescapeHTML
    
    def unescape_html(string)
      CGI.unescapeHTML(string)
    end

    # one-letter versions help in case like #{h foo.inspect}
    # ERb/ERuby/Rails compatible 
    alias h escape_html
    alias u url_encode

  end
end
