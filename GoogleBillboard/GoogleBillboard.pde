String [] piLines;
String piDigits;
long numDigits;
String bDay = "02/27/2007";
String us [];
String uk [];

void setup()
{
  size(200, 200);
  noLoop();
  piLines = loadStrings("pi-tenmillion.txt");
  piDigits = piLines[0].substring(0, 1) + piLines[0].substring(2);
  numDigits = piDigits.length();
  MyPI.setPI(piDigits);
  System.out.println(numDigits);
  String bDay_uk = bDay.substring(3, 5) + "/" + bDay.substring(0, 3) + "/" + bDay.substring(6);
  uk = MyPI.getSubs(bDay);
  for (String q : uk)
  {
    println(q + " " + MyPI.findinPI(q));
  }
  us = MyPI.getSubs(bDay);
  for (String q : us)
  {
    println(q + " " + MyPI.findinPI(q));
  }
}
