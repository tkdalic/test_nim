import os, unicode, sequtils

proc extractOddChar(s1: string, s2: string): string =
    result = ""
    for c in zip(s1.toRunes, s2.toRunes):
        result &= c.a.toUTF8 & c.b.toUTF8

if isMainModule:
    var s1, s2: string
    if os.paramCount() >= 2:
        s1 = os.commandLineParams()[0]
        s2 = os.commandLineParams()[1]
    else:
        s1 = "パトカー"
        s2 = "タクシー"

    echo extractOddChar(s1, s2)