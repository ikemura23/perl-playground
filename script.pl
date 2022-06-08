#!/usr/bin/perl
use strict;
use warnings;

print "Hello, world\n";

print "改行もいける
か？";

# 文字列にシングルクオートも使える

print '
Hello, single world!
';

# 変数と改行などの特殊文字を使えるのはダブルクォオートのみ
my $name = "hoge";
print "Hello, $name\n";

# 数字は引用符で囲む必要なし
print 32;