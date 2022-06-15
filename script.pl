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

# サブルーチン
sub logger {
    my $logmessage = shift;
    print "$logmessage\n";
}
logger("便利");

# ループ
# https://perldoc.perl.org/perlintro#Conditional-and-looping-constructs

# perlは数値の場合は0だけがfalse、0以外はtrueとなる
my $int_condition = 1;

if ($int_condition) {
    logger("true")
} elsif (!$int_condition) {
    logger("elsif")
}
else {
    logger("else")
}

# 文字列の場合は空文字 '' 、または'0'がfalse、それ以外はtrue（シングルクォーテーションもダブルクォーテーションも同じ）
my $str_true_condition = 'true';
my $str_false_condition = '';

# unlessもある
unless ($int_condition) {
     logger("int_condition")
}

# 1行の条件付きブロック
logger("yow!") if $str_true_condition;
logger("we have no bananas") unless $str_false_condition;

# while
while ( $str_false_condition ) {
    logger("while start")
}

# whileの逆バージョン
until ($str_true_condition) {
    logger("until start")
}

# for
for (my $i = 0; $i <= 5; $i++) {
    logger("for $i")
}

# foreach
foreach(@animals) {
    logger("element is $_") # $_ でループの値を取得できる
}

foreach my $key (keys %fruit_color) {
    logger("key: $key, value: $fruit_color{$key}") # $_ でループの値を取得できる
}
