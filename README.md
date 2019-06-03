# zm -- Modified lb

This is the source of the tool used to generate the ZERM page. This repo is a fork of Luke Smith's lb, which is just a better choice than my take on it. (look at chrissxYT/BlogTool if you want to see my failed take on it) `ZERM` stands for Zeitung zur Erhaltung der Rechte des Menschen.

[Luke's Video Showcase](https://www.youtube.com/watch?v=S1WQlr42xDM)

## Features

`zerm` is an extremely small shell script that lets you write blog posts and will format them in all the ways you could ever want. Here's what it will produce:

- A Rolling Page.
- A list of all blog entries with dates: [Blog List File](https://zerm.chrissx.ga/zermindex.html).
- All the posts appear as standalone entries/pages.
- These standalone files exist in a `zerm/` directory, which you can allow to be browsed manually via the Apache web server.
- Blog posts are added, in full form, to an RSS feed of your chosing as well, see [my RSS feed](https://lukesmith.xyz/rss.xml).
- Posts in the rolling blog have divs that can easily be modified via a CSS stylesheet, and in general everything is easily editable.
- One command to delete published entries from the RSS feed, rolling blog and standalone entries simultaneously.
- Published blog entries can now be revised, updating the standalone blog pages, the RSS feed and everything else.

## Usage

`zerm` commands are all one letter cause I'm lazy. They all stand for something though.

```sh
./zm n(ew)	# Make a new blog post draft.
./zm e(edit)	# Edit a draft of an entry.
./zm t(rash)	# Delete a draft of an entry.
./zm p(ublish)# Finalize/publish a blog post draft.
./zm d(elete)	# Delete a published blog post.
./zm r(evise)	# Revise an already published entry (you can republish it with `zm p` when done)
```

## Installation

+ bash and GNU sed is required. >inb4 bloat
+ Be sure that you own or have writing privileges in the given directory, so the script can create the required directory structure.
+ Download the `zm` script and put it in your website's main directory. The expectation is that your rolling page file and RSS feed will be there as well.
+ Open the script and change the first few variables to match the names of the files you use in your website.
+ Add markers for where the new blog posts are added. **Don't skip this step.** See below.

### Markers

For the system to work, add the following comment line to a (1) Rolling Page File (as above), a (2) Article List File and (3) RSS feed.

```
<!-- ZERM -->
```

You can format these files/pages how ever you want, just be sure to edit the `zerm` file and change the variables at the top to match the file names of those you chose.

When you `finalize` a blog post, it will be added directly below that line in the proper format (either HTML or the proper RSS/XML format), give you the rolling blog and RSS feed for free.

## Info

- The blog entries are stored in `zerm/` in your websites root directory. Drafts are in `zerm/.drafts`.
- `zerm/.htaccess` acts as a "database" file. `zerm` stores filenames with their corresponding proper names and publishing dates there.
- The other files in this repo just illustrate how you can use `zerm`. Only the `zerm` script itself is necessary.
- Your `$EDITOR` variable should be set to your preferred text editor, vim will be assumed if you don't have one set.
