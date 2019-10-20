import os, unicode, strutils, sequtils, sugar

iterator getNgram(words: seq[string], n: int): seq[string] =
    for index in 0..(words.len - n):
        yield words[index..(index + n - 1)]

iterator getWordNgram*(sentence: string, n: int): string =
    for ngram in getNgram(sentence.split(" "), n):
        yield ngram.join(" ")

iterator getCharNgram*(sentence: string, n: int): string =
    for ngram in getNgram(sentence.toRunes.map(rune => rune.toUTF8), n):
        yield ngram.join("")


if isMainModule:
    let origin =
        if os.paramCount() > 0:
            os.commandLineParams()[0]
        else:
            "I am an NLPer"
    for ngram in origin.getWordNgram(2):
        echo ngram

    for ngram in origin.getCharNgram(2):
        echo ngram
