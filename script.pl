#!/usr/bin/perl
use strict;
use warnings;

# https://perldoc.perl.org/perlintro#What-is-Perl?

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

# 変数タイプ
# スカラー
my $animal = "camel";
my $answer = 42;

print $animal;
print "The animal is $animal\n";
print "The square of $answer is ", $answer * $answer, "\n";

# 配列

my @animals = ("camel", "llama", "owl");
my @numbers = (1, 23, 456);
my @mixed = ("camel", 8, 1.23);

print $animals[0];
print "\n";
print $mixed[$#mixed]; # => 1.23, 配列の最後のインデックスを示す $#array
print "\n";

# ハッシュ, キーと値のペアセット
#my %fruit_color = ("apple", "red", "banana", "yellow");
# => 演算子を使うとよい
my %fruit_color = (
    "apple" => "red", 
    "banana" => "yellow",
);

print $fruit_color{"apple"}; # => red

#可変スコープ

my $x = "foo";
my $some_condition = 1;
if ($some_condition) {
    my $y = "bar";
    print $x;
    print $y;
}
print $x;
# print $y; # ifのスコープ外なのでエラーとなる