# 使用`commoand` 或者 $(command)

today=`date +%y%m%d`

fileName="vscode.$today"

echo "author : zzzj" > $fileName
echo "date : `date`" >> $fileName
echo "desc : just for fun" >> $fileName

echo "public class HelloWorld {" >> $fileName

echo "  public static void main () {" >> $fileName
echo "      System.out.println(\"hello world~\")" >> $fileName        
echo "  }" >> $fileName

echo "}" >> $fileName