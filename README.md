# zm -- Modified lb

This is the source of the tool used to generate the ZERM page. This repo is a fork of Luke Smith's lb, which is just a better choice than my take on it. (look at chrissxYT/BlogTool if you want to see my failed take on it)

[Luke's Video Showcase](https://www.youtube.com/watch?v=S1WQlr42xDM)

## Features

`zm` is an extremely small shell script that lets you write articles and will format them in all the ways you could ever want. Here's what it will produce:

- A Rolling Page.
- A list of all articles with dates: [The index.html](https://zerm.chrissx.ga/index.html).
- All the articles appear as standalone entries/pages.
- These standalone files exist in a `zerm/` directory.
- Articles are added, in full form, to an RSS feed of your chosing as well, see [our RSS feed](https://zerm.chrissx.ga/rss.xml).
- Posts in the rolling page have divs that can easily be modified via a CSS stylesheet, and in general everything is easily editable.
- One command to delete published articles from the RSS feed, rolling page and standalone entries simultaneously.
- Published articles can be revised, updating the standalone article pages, the RSS feed and everything else.

## Usage

`zm` commands are all one letter. They all stand for something though.

```sh
zm n(ew)	# Make a new draft.
zm e(dit)	# Edit a draft of an entry.
zm t(rash)	# Delete a draft of an entry.
zm p(ublish)    # Finalize/publish a draft.
zm d(elete)	# Delete a published article.
zm r(evise)	# Revise an already published entry (you can republish it with `zm p` when done)
```

## Installation

+ bash and GNU sed are required. >inb4 bloat
+ Be sure that you own or have writing privileges in the given directory, so the script can create the required directory structure.
+ Open the script and change the first few variables to match the names of the files you use in your website.
+ Clone the repository and run `sudo make install`
+ Add markers for where the new articles are added. **Don't skip this step.** See below.

### Markers

For the system to work, add the following comment line to a (1) Rolling Page File (as above), a (2) Article List File and (3) RSS feed.

```
<!-- ZERM -->
```

You can format these files/pages how ever you want, just be sure to edit the `zerm` file and change the variables at the top to match the file names of those you chose.

When you `finalize` an article, it will be added directly below that line in the proper format (either HTML or the proper RSS/XML format), give you the rolling page and RSS feed for free.

## Info

- The articles are stored in `zerm/` in your website's root directory. Drafts are in `zerm/.drafts`.
- `zerm/.htaccess` acts as a "database" file. `zerm` stores filenames with their corresponding proper names and publishing dates there.
- The other files in this repo just illustrate how you can use `zerm`. Only the `zerm` script itself is necessary.
- Your `$EDITOR` variable should be set to your preferred text editor, vim will be assumed if you don't have one set.
