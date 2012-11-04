# Treehash [![Build Status](https://secure.travis-ci.org/erichmenge/treehash.png)](http://travis-ci.org/erichmenge/treehash)

Amazon Glacier uses a tree of SHA256 hashes. This is a tool to help you verify that your files were uploaded safely to
Glacier.

### Installing it:

    $ gem install treehash

## Usage

### Library:
    Treehash::calculate_tree_hash string_or_io

### Command-Line:
    treehash filename
