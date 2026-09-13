---
title: Solitaire web game - Yukon
---

Most evenings I play a few rounds of Yukon Solitaire to unwind before going to bed.
I've been doing that for years and it works very well for me.
My favorite is [Simple Solitaire](https://f-droid.org/packages/de.tobiasbielefeld.solitaire/) but it has
not been updated for about eight years. The [source code](https://github.com/TobiasBielefeld/Simple-Solitaire)
is still available though, so it is possible to rebuild against a newer Android SDK etc.

However, having in mind that Google is locking down Android more and more, I though *Can one make a web version?*
- I can't - not without a serious start up time, since I don't know Javascript at all, my HTML knowledge is mostly
from around year 2000. And I'm not that interested in frontend development really.

But can an LLM do the job? When you ask an LLM do to something that you can do yourself giving enough time and
energy, you can always provide useful input when the LLM has issues, which they all have from time to time. But
in an area where you don't know how properly do things, you are on thin ice.


The first attempt that the LLM did, did look like some kind of solitaire, but to me as a human it was obvious that
the game did first decide which cards that should face up and which to face down and then shuffle and
deal. There the LLM and I got into a stalemate. The LLM was convinced that everything looked as it should,
while I was convinced that this was not how Yukon is dealt properly.

Switching to a more powerful LLM did help. It did figure out that I somehow had gotten `node` and `npm` installed
and then the LLM asked if it could  downloaded some testing framework that helped the LLM to see the visuals.
Then the stronger LLM realized that I was right and corrected the javascript.

The final version of [Yukon](https://github.com/gmelchett/yukon/) and a playable copy is [here](https://gmelchett.github.io/2026-09-13/yukon/index.html)
It is also configured to be a PWA, so it can be installed like an app.

Works fine on my Android Tablet and Linux Desktop both using Firefox. You can either drag and drop or click to select
and then click on a card to move. It has also rounds won/lost statistics saved as cookies. I hoover around 45-50%
games won - how about you?

For the moment, I'll stick with Simple Solitaire, but it is nice that I now have another option that an
ads filled version from Google Play the day when Google decides that Simple Solitaire is too old, or a security risk, or
the developer hasn't provided a copy of his passport to them or something else - All for "my" security.


I am however interested in doing one more javascript game. Something like [Ravensburger's Memory](https://play.google.com/store/apps/details?id=com.ravensburger.memory&hl=en-US)
It is pretty slow, and it feels like a product where neither the product lead nor the developers actually play
the game. We'll see..
