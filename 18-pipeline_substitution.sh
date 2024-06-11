''
Imagine you've two files for which you want to compare the content. Using diff file1 file2 could generate false positives in the case lines are not ordered. So if you want to compare those files you could create two new files, ordered, and compare those. It would look like:
'


#!/bin/bash
sort file1 > sorted_file1
sort file2 > sorted_file2
diff sorted_file1 sorted_file2
diff $(sort file1) $(sort file2)

'Imagine you want to store logs of an application into a file and at the same time print it on the console. A very handy command for that is tee.'

echo "Hello, world!" | tee /tmp/hello.txt

echo "Hello, world!" | tee >(tr '[:upper:]' '[:lower:]' > /tmp/hello.txt)


