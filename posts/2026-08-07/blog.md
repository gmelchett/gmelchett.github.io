---
title: GitHub pages and static site generators
---

Well, this is my actually my first published blog post. I've been thinking of having a blog for years. I have a self hosted server reachable from the internet, but I've been reluctant
to put a blog on it, since the less exposure, the less liklihood of unexpected unwanted visitors. So I decided to try github pages.

By default github pages supports Jerkyll, which I'm sure is an excellent static site generator, and I'm all to blame, not reading the manual etc. But I did just manage to get a white
empty page when trying to change theme.. Yes, perhaps it would have worked when github generated the HTML, but I do really want to see what I'm about to push locally first.
So I changed to [Zola](https://www.getzola.org/), started to read the [Getting Started](https://www.getzola.org/documentation/getting-started/overview/) and I created lot of template
files according to the instruction, and then I wanted to use a theme. And the theme was not updated to match the latest Zola release. I did removed the theme, decided to push theme
selection for the future and started to remove one level of pages (index -> blog list -> blogs) Somewhere here I did get lost in the templates, and I gave up on Zola as well..

*I just want to convert markdown to html and an index page using a decent theme, and RSS file. How hard can it be?*

I decided to write an [implementation plan](https://github.com/gmelchett/jssg/blob/master/implementation-plan.md) for a static site generator and ask an LLM to implement it for me. 
One hour and $0.13 later, first version of the static site generator, [jssg](https://github.com/gmelchett/jssg) was completed and in use for this blog.
