#decompressor for the BinaryData files
import zlib #compression used, hence decompressor used

#file to decode, this is an example
testfile = "[example]"

#open as bytes and read entire file
file = open(testfile, "rb").read()

#decompress the file
bytes = zlib.decompress(file)

#saves the file
decodedFile = open("[to_save]", "wb")
decodedFile.write(bytes)
decodedFile.close()