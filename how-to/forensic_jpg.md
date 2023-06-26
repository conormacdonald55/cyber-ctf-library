# Forensic: Jpg files used to hide information

## Uncorrupted jpg file

- open with a hex editor like GHex and see if you can find the flag within the data

## Corrupted jpg file

- open with hex editor and find out what's wrong with it
- previous challenges have had broken headers in the file, so needed to understand what a jpg header should look like then fix that in the hex editor
- save as a .jpg file to view the file.