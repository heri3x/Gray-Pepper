#
# pip.exeなどのツールの実行ファイルに埋め込まれた環境依存パスを書き換えて環境非依存に修正する
# 
# see:
#  Create a portable Python with Pip on Windows
#  http://www.clemens-sielaff.com/create-a-portable-python-with-pip-on-windows/

import sys
import os

#
def findTextBlock( data, textBlockBegin, textBlockEnd ):
    end = data.rfind(textBlockEnd)
    if end == -1:
        return None
    begin = data.rfind(textBlockBegin, 0, end)
    if begin == -1:
        return None
    return (begin, end + len(textBlockEnd))

#
def replaceTextPadRight( data, begin, end, dataToReplace, spaceChar ):
    srcSize = len(dataToReplace)
    dstSize = end - begin
    if srcSize > dstSize:
        return None
    dataToReplace += spaceChar * (dstSize - srcSize) 
    data = dataToReplace.join((data[:begin], data[end:]))
    return data


#
textToReplace = b"#!python.exe"
dstHeader = b"#!"
dstFooter = b"python.exe"

toolDirPath = r"extras\python3\Scripts"

for filename in os.listdir(toolDirPath):
    targetPath = os.path.join(toolDirPath, filename)
    print("found: {}".format(targetPath))

    with open(targetPath, "r+b") as targetFile:
        data = targetFile.read()

        found = findTextBlock(data, dstHeader, dstFooter)
        if found is None:
            print("[ERROR] target string not found:\n  {0} ... {1}".format(dstHeader, dstFooter))
            sys.exit(-1)
        
        data = replaceTextPadRight(data, found[0], found[1], textToReplace, b"\0")
        if data is None:
            print("[ERROR] replace size over for string:\n  {0}".format(textToReplace))
            sys.exit(-1)

        targetFile.seek(0)
        targetFile.write(data)
        targetFile.truncate()
