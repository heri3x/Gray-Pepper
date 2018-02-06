import sys
import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("targetPath", help="処理対象のフォルダ")
args = parser.parse_args()

def proc_dir(dirPath): 
    for filename in os.listdir(dirPath):
        targetPath = os.path.join(dirPath, filename)
        if os.path.isdir(targetPath):
            proc_dir(targetPath)
            continue

        dummy, extension = os.path.splitext(targetPath)
        if not extension in [".meta"]:
            continue

        print("削除: {}".format(targetPath))
        os.remove(targetPath)

rootDir = args.targetPath
proc_dir(rootDir)
