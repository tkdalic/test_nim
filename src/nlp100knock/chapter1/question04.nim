import os, unicode, strutils

proc extractRuledLetter(origin: string): string =
    result = ""
    for k, s in pairs(origin.split(" ")):
        if k in [0, 4, 5, 6, 7, 8, 14, 15, 18]:
            result &= s.toRunes[0].toUTF8 & " "
        else:
            result &= s.toRunes[0..1].join("") & " "

if isMainModule:
    let origin =
        if os.paramCount() > 0:
            os.commandLineParams()[0]
        else:
            "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
    echo origin.extractRuledLetter
