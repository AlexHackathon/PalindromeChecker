public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

boolean palindrome(String s){
  s = s.toLowerCase();
  String wordNoChar = "";
  for(int j = 0; j < s.length(); j++){
    if(Character.isLetter(s.charAt(j))){
      wordNoChar += s.substring(j,j+1);
    }
  }
  String reverse = "";
  for(int i = s.length()-1; i >= 0; i--){
    if(Character.isLetter(s.charAt(i))){
      reverse += s.substring(i,i+1);
    }
  }
  return reverse.equals(wordNoChar);
}
