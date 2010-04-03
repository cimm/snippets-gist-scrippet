Snippets to gist plugin
=======================

Blablabla
---------

[Snippets](http://www.snippetsapp.com/ "Snippets app for Mac OS X") is a Mac OS X application to to manage - you guessed it right -  short reusable pieces of computer source code, also known as snippets.

The Snippets application supports plugins to export code to other code repositories. Support for [Pastie](http://pastie.org/ "On of the most popular code sharing sites in the Rails world"), [Snipt](http://snipt.org/ "Code sharing site heavily focused on Twitter integration") and [Snipplr](http://snipplr.com/ "One of the best known code sharing sites") is build in but I was still missing a GitHub [gist](http://gist.github.com/gists "GitHub's snippets collection corner") export. I took a closer look at the existing 'scrippets' - Snippet's jargon for plugins - and hey, it's all familiar technologies like HTML, JavaScript and even Ruby. Cool! Let's make one myself!

About
-----

The current version exports on or more snippets as gists and returns the gist URL. All snippets are anonymous gists so you can *not* update or remove the gists once they are exported. You can always ask nicely (or fork) this repository if you need an authentication based export.

Installation
------------

1. [Download](http://github.com/cimm/snippets-gist-scrippet/downloads "This repository's download page")  the latest version.
2. Unzip or untar the downloaded file (both should work out-of-the-box on Mac OS X.
3. Launch the Snippets application and choose Scrippets > Manage Bundles.
4. Click the + sign and locate the extracted scrippet  called Gist.scrippet.
5. The 'Share via gist.github.com' option should show up in your bundle list.

Exporting
---------

1. Select one or more snippets and choose Scrippets > Share via gist.github.com...
2. Confirm you selection.
3. Copy the snippet URL.

Questions? Bugs? Feedback?
--------------------------

That's where the [issue list](http://github.com/cimm/snippets-gist-scrippet/issues "This repository's issues list") is for.

Credits
-------

This plugin is heavily based on the plugins found in the Snippets application created by Vadim Shpakovski. I merely copied his work and replaced 'pastie' with 'gist'.

The gist icon used in the plugin is the GitHub favicon I stole... sorry.