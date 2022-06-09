#!/usr/bin/perl
use strict;
use warnings;
use FindBin; # includeオプションが不要になる
use lib "$FindBin::Bin/local/lib/perl5";
use Path::Tiny;

my $dir = path('/Users/k_ikemura/dev/perl_playground');

# Iterate over the content of foo/bar
my $iter = $dir->iterator;
while (my $file = $iter->()) {
    
    # See if it is a directory and skip
    next if $file->is_dir();
    
    # Print out the file name and path
    print "$file\n";
}

# 実行結果
# $perl read_directory.pl
# /Users/k_ikemura/dev/perl_playground/read_directory.pl
# /Users/k_ikemura/dev/perl_playground/README.md
# /Users/k_ikemura/dev/perl_playground/cpm
# /Users/k_ikemura/dev/perl_playground/script.pl