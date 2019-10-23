import unicode, sequtils, strutils, random, sugar

proc typoglycemia(word: seq[Rune]): seq[Rune] =
    if word.len <= 4:
        return word
    var middle = word[1..^2]
    shuffle(middle)
    return word[0] & middle & word[^1]

if isMainModule:
    const origin = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
    echo origin.split(" ").map(word => word.toRunes.typoglycemia).join(" ")