{
  FS=OFS="\t"
  if(NR==1) Ntotal="Ntotal"
  else if(NR>1)
  {
    $3=chr
    Ntotal=int($9+$10+$11+0.5)
  }
  print $2,$3,$4,Ntotal,$19
}
