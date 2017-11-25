module.exports = (num, n) ->
  return num if n is 0

  [ int, frac ] = (''+num).split '.'
  int or= '0'
  frac or= '0'

  neg = (if int[0] is '-' then '-' else '')
  int = int[1..] if neg

  if n > 0
    if n > frac.length
      frac += zeros n - frac.length
    int += frac[0...n]
    frac = frac[n..]
  else
    n = n * -1
    if n > int.length
      int = (zeros n - int.length) + int
    frac = int[n*-1..] + frac
    int  = int[...n*-1]

  int  = int[1..]    while int[0] is '0'
  frac = frac[...-1] while frac[frac.length-1] is '0'

  neg + (int or '0') + (if frac.length then '.' + frac else '')

zeros = (n) -> new Array(n+1).join('0')
