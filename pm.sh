# bash script to make pacman package review better
pacman -Qi | 
  grep -E 'Name\s*:|Version\s*:|Description\s*' | 
  awk -F: 'BEGIN { RED = "\033[0;31m"; RESET = "\033[0m"}
{
  if (NR % 3 == 1) 
    { print RED $2 RESET} 
  else
    {print "\t" $2}
}' |
  less -R -Ps'Current Pacman Packages lines %lt-%lb bytes %bt-%bb (press h for help or q to quit)'
