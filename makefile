all:
	gsc -exe -o inPath inStr.scm inPath.scm cli.scm

clean:
	rm -f *~
	rm -f */*~
	rm -f \#*
	rm -f */\#*
	rm -f *.c
	rm -f *.o*
	rm -f out.txt
	rm -f inPath
