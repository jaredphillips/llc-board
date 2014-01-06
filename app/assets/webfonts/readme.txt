
---
Symbolset
www.symbolset.com
Copyright © 2013 Oak Studios LLC
---


SS Social Circle v1.005b


--------------------
Desktop
--------------------

Your download contains the set you purchased as OTF, TTF, EOT, WOFF, and SVG font files. OTF, or OpenType Format, is a cross-platform font file for use on the desktop. Don't be misled by the name, each of these file types contain OpenType features. The remaining four files are formatted for web browsers.

Install the OTF font and use it in any desktop application that supports OpenType features.

Your symbol set contains both symbols and alphabetic characters. Begin by typing a keyword from the documentation. Once the keyword is completed, and the font recognizes the keyword, the correlating symbol will be displayed in place of the letters.


--------------------
Web
--------------------

Start by first uploading the "webfonts" folder to your webserver. Then place this link tag within the <head> tags of your HTML:

    <link href="webfonts/ss-social-circle.css" rel="stylesheet" />

There are two common methods to use and reference symbols.

The first is use a symbol alongside a complementary word. Using class names, with CSS :before pseudo elements and Unicode code points, we can append symbols to words. In this example we're adding a check symbol to a submit button:

    <button class="ss-twitter">@symbolset</button>

The second way is to use a symbol in place of a word. This method triggers symbols with semantic keywords. When using this method on the web apply the generic "ss-icon" class to the element wrapping the keyword.

For example:

    Follow us on <i class="ss-icon">facebook</i>

A Facebook icon will be displayed alongside the word "Facebook".

When using the replacement technique, sighted users will see symbols and search engines and screen readers will see the semantic keyword.

You can also use symbols with their direct Unicode value. See documentation.html for a full list of supported icons. This example will show a "like" icon:

    <i class="ss-icon">&#x1F44D;</i> Recommend this page


--------------------
Use with other sets
--------------------

If using in conjunction with another Symbolset (ie. Standard), include a reference to both CSS files (default set should be last) and add the secondary font's CSS class (ie. ".ss-standard") where desired.

    <link href="webfonts/ss-standard.css" rel="stylesheet" />
    <link href="webfonts/ss-social-circle.css" rel="stylesheet" />
    ...
    <i class="ss-icon">Twitter</i>
    <i class="ss-icon ss-standard">Grid</i>

For more see: http://symbolset.com/blog/using-multiple-sets/


--------------------
Browser support
--------------------

Keywords (with optional Javascript support):
Firefox 3.5+, Chrome 1+, Safari 2+, IE 7+, Opera 10.5+, iOS 3.2+, Android 1+

Keywords (without Javascript):
Firefox 3.5+, Chrome 11+, Safari 5+, IE 10+, iOS 4.2+, Android 3+

Unicode: All browsers that support TTF, EOT, WOFF, or SVG webfonts.

To add optional keyword support to legacy browsers through Javascript, insert this code at the end of your document before the </body> tag:

    <script src="webfonts/ss-FONTNAME.js"></script>

For more on browser support, see: http://symbolset.com/blog/browser-support/

Note: Keywords with spaces are not currently supported in Firefox.


--------------------
Versions
--------------------

Periodically Symbolset will push updates to sets. We'll add keywords, build out symbols, and squash bugs. Be sure to check your account (http://symbolset.com/account) for updates.

