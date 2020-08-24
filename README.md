# lyrics-to-itunes
add lyrics to all songs in your iTunes/Music library

A small script that tries to find the lyrics for all your songs in the iTunes/Music library.

I use 2 different websites to get the lyrics
- `lyrics1.py` uses [AZLyrics.com](AZLyrics.com) (Python script by [elmoiv](elmoiv), see his repo [https://github.com/elmoiv/azapi](https://github.com/elmoiv/azapi))
- `lyrics2.py` uses [genius.com](genius.com) (Python script by [johnwmillr](johnwmillr), see his repo [https://github.com/johnwmillr/LyricsGenius](https://github.com/johnwmillr/LyricsGenius))

You need the following python packages: `argparse`, `azapi` and `lyricsgenius`. Please set the right path to the python scripts in the `lyrics-to-itunes.applescript`-file and choose whether you want to use `lyrics1.py` or `lyrics2.py`.

### Some things to note:
- No quotes in the song's or artist's name!
- `lyrics2.py` has a higher success rate but the lyrics will start with 2 lines resulting from the search done by `lyricsgenius` - If you find a way around this (I know that I could fix this by modifing the code of `lyricsgenius` but I don't want to) then let me know.
- When I tested the scripts I got sometimes (every 500 songs or so) a timeout. I don't why - could be my network or some sort of protection used by AZLyrics.com and genius.com. Just wait a minute and start the script again, this should fix it.
