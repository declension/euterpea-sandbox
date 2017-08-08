# euterpea-sandbox

Playground for Euterpea projects.

Accompany Blog Posts
--------------------
See blog articles:
 * [Music, Haskell and Westeros](http://declension.net/posts/2017-08-08-music-haskell-and-westeros/)
 * More coming soon...

Build
-----

Using stack
```bash
stack build
```

Setup
-----
### Midi
The [Euterpea guide to MIDI output](http://www.euterpea.com/euterpea/setting-up-midi/) is as good as any.

On Ubuntu (with PulseAudio as default), Timidity and VMPK were very useful for me in investigating which problems were MIDI / synthesizer related and which were programming.

### Linux tips
This is helpful to get a nice loud output:
```bash
timidity -iA -Os -A 220 -f
```

Run
---
```bash
stack exec music
```

