Snippets to gist plugin
=======================

Blablabla
---------

[Snippets](http://www.snippetsapp.com/ "Snippets app for Mac OS X") is a Mac OS X application to to manage - you guessed it right - short reusable pieces of computer source code, also known as snippets.

The Snippets application supports plugins to export code to other code repositories. Support for [Pastie](http://pastie.org/ "On of the most popular code sharing sites in the Rails world"), [Snipt](http://snipt.org/ "Code sharing site heavily focused on Twitter integration") and [Snipplr](http://snipplr.com/ "One of the best known code sharing sites") is build in but I was still missing a GitHub [gist](https://gist.github.com/gists "GitHub's snippets collection corner") export. I took a closer look at the existing 'scrippets' - Snippet's jargon for plugins - and hey, it's all familiar technologies like HTML, JavaScript and even Ruby. Cool! Let's make one myself!

About
-----

You can post gists anonymously without linking you account. Once posted you'll get a URL with your gist. This gist is an anonymous gists so you can *not* update or remove the gists once they are exported.

You can also link your account with your GitHub API token. You can than post gists under your own username (public or private). You can update or remove the gist later via the GitHub website.

Multiple snippets can be uploaded as multiple gists or combined as on gist with multiple files, this is possible in both authenticated and non-authenticated mode.

Installation
------------

1. [Download](http://github.com/cimm/snippets-gist-scrippet/downloads "This repository's download page")  the latest version.
2. Unzip or untar the downloaded file (both should work out-of-the-box on Mac OS X.
3. Double click the Gist scrippet plugin icon.
5. The 'Share via gist.github.com' option should show up in your bundle list.

Exporting
---------

1. Select one or more snippets and choose Scrippets > Share via gist.github.com...
2. A. Leave all fields empty for an anonymous gist.
2. B. Fill in your username and API token to link this gist with your account.
3. Choose if you want to make this gist public or not.
4. Choose if you want to combine all selected snippets in one gist or not.
5. Confirm you selection.
6. Copy the snippet URL.

Questions? Bugs? Feedback?
--------------------------

That's where the [issue list](http://github.com/cimm/snippets-gist-scrippet/issues "This repository's issues list") is for.

Credits
-------

This plugin is heavily based on the plugins found in the Snippets application created by Vadim Shpakovski. I merely copied his work and replaced 'pastie' with 'gist'.

The GitHub authentication feature where you can link gists with your account and mark them as private as well as the combine snippets in one gist feature have been contributed by [Atsushi Nagase](http://ngsdev.org). Thanks!

The gist icon used in the plugin is the GitHub favicon I stole... sorry. The icons used in the UI are from the great [FamFamFam](http://www.famfamfam.com/lab/icons/silk/) icon set.
