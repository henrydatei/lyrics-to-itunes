import azapi
import argparse

parser = argparse.ArgumentParser(description='Titel und Artist bitte')
parser.add_argument("--title")
parser.add_argument("--artist")
args = parser.parse_args()
title = args.title
artist = args.artist

API = azapi.AZlyrics('google', accuracy=0.5)

API.artist = artist
API.title = title.split("(")[0]

API.getLyrics()

print(API.lyrics)
