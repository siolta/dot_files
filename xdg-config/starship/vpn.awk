$4 ~ /utun[0-9]+/ && match($2, /10\.253\.([0-9]{1,3})/, ip) && ip[1] >= lo && ip[1] <= hi {
  connected=1
  exit
}
END {
  exit (connected ? 0 : 1)
}
