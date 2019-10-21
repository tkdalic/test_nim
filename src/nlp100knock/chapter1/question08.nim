import unicode, sequtils, strutils

proc rot13(origin: string): string =
    return origin.toRunes.map(proc (rune: Rune): string =
        if isLowerAscii(rune.toUTF8[0]):
            return $(219 - rune.ord).chr
        else:
            return rune.toUTF8
    ).join("")

if isMainModule:
    const origin = "I am an NLPer"
    echo origin
    echo origin.rot13
    echo origin.rot13.rot13
