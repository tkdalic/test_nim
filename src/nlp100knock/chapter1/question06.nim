import sequtils, sets
import question05

if isMainModule:
    let
        origin1 = "paraparaparadise"
        origin2 = "paragraph"
    
    let
        origin1Set = toSeq(origin1.getCharNgram(2)).toHashSet
        origin2Set = toSeq(origin2.getCharNgram(2)).toHashSet
    
    echo origin1Set + origin2Set
    echo origin1Set -+- origin2Set
