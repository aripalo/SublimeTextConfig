# My Sublime Text 2 Configuration

**It sets up Sublime Text 2 with my [preferences](Packages/User/Preferences.sublime-settings) and [plugins](Packages/User/Package%20Control.sublime-settings).**

Works on Mac OS X, but should work on every platform (NOTE: installation instructions only for Mac OS X).

## Installation

Note: Aimed for fresh Sublime Text 2 installation.

1. Install Sublime Text [Package Manager](https://sublime.wbond.net/installation#st2) in `View > Show Console` and pasteing:

  ```
  import urllib2,os; pf='Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler( ))); open( os.path.join( ipp, pf), 'wb' ).write( urllib2.urlopen( 'http://sublime.wbond.net/' +pf.replace( ' ','%20' )).read()); print( 'Please restart Sublime Text to finish installation')
  ```

2. Close Sublime Text

3. In the console run `git clone https://github.com/aripalo/SublimeTextConfig.git ~/Library/Application\ Support/Sublime\ Text\ 2`


