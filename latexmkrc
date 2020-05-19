$makeindex=q/makeindex -s cind.ist %O -o %D %S/;
$clean_ext=q/glo gls %R.ist/;

add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
  return system( "makeindex -s \"$_[0].ist\" -o \"$_[0].gls\" \"$_[0].glo\"" );
}
