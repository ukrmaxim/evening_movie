Hangman
=

Hangman is console game. PC thinks of a word, and you try to guess it by suggesting letters within a certain number
of guesses.

Requirements
-

* Windows 10 x32/x64 or Ubuntu 20.04 LTS or macOS Big Sur
* Ruby 2.7.2  or higher

Installation Ruby
-

* Ubuntu
<https://github.com/rbenv/rbenv#installing-ruby-versions>

* Windows
<https://rubyinstaller.org/downloads/>

* macOS
<https://github.com/rbenv/rbenv#installing-ruby-versions>

Quick start
-

### Attention

For correctly application work, you need install a Ruby gem 'colorize' (<https://github.com/fazibear/colorize>).
For gem installation, on command line/terminal, go to the directory, where you unpacked the archive and type in the
following command:

`bundle install`

To run the application, on command line/terminal, go to the directory, where you unpacked the archive and type in the
following command:

`ruby main.rb`

Rules of the game
-

The computer guesses a word (a random word selected from a file). The player enters a letter that can be included in
this word. If such a letter is in a word, the computer displays it as many times as it appears in the word. If there is
no such letter, the computer counts the error and a circle in the loop representing the head is added to the gallows.
The player then continues to guess the letters until he guesses the whole word. For each wrong answer, the computer adds
one part of the torso to the gallows (head, neck, torso, 2 arms and 2 legs).
If the torso in the gallows is drawn completely, then the player loses and is considered hanged. If the player manages
to guess the word, he wins. 7 mistakes are allowed.

Instructions how to add words
-

In order to change or add the words that the computer thinks, you need to edit the `words.txt` file, which is located
in the `hangman/data` folder.

### Attention

Each word is written on a **new line**. All letters of the word are written in UPPERCASE.
