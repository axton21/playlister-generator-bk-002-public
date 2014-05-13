---
tags: generators, static site, erb, object orientation, parser
language: ruby
  resources: 2
---

# Playlister Generator

Your goal here is to create a static website that links together the various objects in the domain. We're not giving you anything, you'll have to scaffold the entire project. But you should provide a `bin/generate` that will generate the static site. Feel free to use models you've already built from this domain. Try to test drive as much as possible. Break the project up. Have fun.

This script should generate a website that has the following sections:
An index page that links to the two sections of the sites, artists and genres

  site/index.html
    links to artists.html
    links to genres.html

  This index page does not need to be generated by the application, you can just manually
  create it.

Templates should be generated via ERB files located in lib/views.

site/artists.html
The artist index must list all the artists. This list must be sorted alphabetically.
In addition to the Artists name, the artists total song count should be displayed.
The artist name should link to the artists individual page within site/artists.
This page should also say how many Artists there are in total.

artists/<artist>.html
The script must generate an artist page for each individual artist that was created
during import. An artists page should list the name of the artist along with their songs
and genres. The songs and genres must link to the individual song and genre page.

  M83 - 8 Songs
    1. Midnight City - Folk
    2. Kim & Jesse - Pop

genres.html
The genre index must list all the genres. This list must be sorted by the amount of songs.
In addition to the Genres name, the total song and artist count should be listed along side it.
The genre name should linke to the genres individual page within site/genres.

  Folk: 8 Songs, 3 Artists

genres/<genre>.html
The script must generate a genre page for each individual genre that was created
during import. A genres page should list the name of the songs, linking to the individual
song and artists. Also include the total unique artists and song counts in the genre.

Folk
  M83 - Midnight City
  Lady Gaga - Pokerface

songs/<song>.html
The song page should list all the available information on the song, it's artist and genre
with the appropriate links.

## Resources
* [Bolmaster2](http://blog.bolmaster2.com/) - [Building web apps with Sinatra: My basic setup](http://blog.bolmaster2.com/building-web-apps-with-sinatra-my-basic-setup/)
* [Matt Weppler's Blog](http://matt.weppler.me/) - [Let's Build a Sinatra App](http://matt.weppler.me/2013/07/19/lets-build-a-sinatra-app.html)
