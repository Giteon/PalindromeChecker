public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public String compatiblize(String sWord)
{
  String word = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
  if (Character.isLetter(sWord.charAt(i)))
  {
  word += sWord.charAt(i);
  }
  }
 word = word.toLowerCase();
  return word;
}
public boolean palindrome(String tempWord)
{
tempWord = compatiblize(tempWord);
for(int b = 0; b < tempWord.length(); b++)
{
if(tempWord.charAt(b) != tempWord.charAt(tempWord.length()-b-1))
{
return false;
}
}//for b
return true;
} //function
