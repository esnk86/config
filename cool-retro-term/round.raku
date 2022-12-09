use JSON::Tiny;

my $json = from-json slurp;

for $json.keys.sort -> $k {
    my $v = $json{$k};
    $json{$k} = $v.round: 0.05 if $v ~~ Rat;
}

my @keys = $json.keys.sort;

say '{';
for 0 .. @keys.end {
    my $k = @keys[$_];
    my $v = $json{$k};
    $v = ($v ~~ Bool) ?? $v.lc !! $v.raku;
    say "  {$k.raku}: {$v}{$_ == @keys.end ?? q// !! q/,/}";
}
say '}';
