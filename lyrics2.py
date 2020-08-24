import lyricsgenius
import argparse

parser = argparse.ArgumentParser(description='Titel und Artist bitte')
parser.add_argument("--title")
parser.add_argument("--artist")
args = parser.parse_args()
title = args.title
artist = args.artist

genius = lyricsgenius.Genius("my_client_access_token_here")

song = genius.search_song(title.split("(")[0], artist)
try:
    print(song.lyrics)
except AttributeError as e:
    pass
