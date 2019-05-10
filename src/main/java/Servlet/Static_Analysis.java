package Servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Vector;

public class Static_Analysis {
    private static String[] keyword =
            {"boolean", "byte","char", "double", "false", "float", "int", "long", "new", "null","short","true",
                    "void", "break", "case", "catch","continue", "default", "do", "else", "for", "if",
                    "return", "switch", "try", "while", "finally", "throw","this", "super", "abstract", "final", "private","protected",
                    "public","static", "class", "extends", "implements", "interface","package","import","throws","Test","assertTrue","assertEquals","assertNotNull"

            };
    static String string;
    static String wordString;
    static Vector vc;
    static int assertCount=0;
    static String assertionType;

    public void JavaAnalysis(String str) throws Exception{
        File inFile  = new File(str);
        if(inFile.exists()){
            //System.out.println("Successfully opened file");
            try {
                FileReader reader= new FileReader(inFile);
                BufferedReader br = new BufferedReader(reader);
                vc = new Vector();
                while ((string = br.readLine())!=null){
                    string = string.trim().replace(" +"," ")
                            .replaceAll("\\t"," ");
                    //System.out.println(string);
                    judgement();
                }
                br.close();
            }catch (FileNotFoundException e)
            {
                e.printStackTrace();
            }
        }else
        {
            //System.out.println("Open file failed");
        }
    }

    public static boolean isLetter(char c){
        if ((c>= 'a'&&c<='z')||(c >='A' && c<='Z')){
            return true;
        }else
        {
            return false;
        }
    }


    public static boolean isDigit(char c){
        if (c>='0'&&c<='9'){
            return true;
        }
        else {
            return false;
        }
    }

    public static boolean isKey(String ss){
        int flag=0;
        for (int i = 0;i<keyword.length;i++){
            if(ss.equals(keyword[i])){
                flag = 1;
                break;
            }
        }
        if (flag==1){
            return true;
        }
        return false;
    }

    public static boolean isSpilt(char ch){
        if (ch =='+'|| ch=='-'||ch=='|'||ch=='='||ch=='&'){
            return true;
        }
        else {
            return false;
        }
    }

    public static boolean isAssert(String s){
        if (s.equals("assertTrue")||s.equals("assertEquals")||s.equals("assertNotNull")){
            return true;
        }
        else {
            return false;
        }
    }

    public void specificCheck(String target,String input){
        if(target.equals("assertEquals")||input.equals("assertNotNull")){
            //System.out.println("Your test is not specific enough!");
        }
    }

    public void judgement() throws Exception{
        char ch = 0;
        int m = 0;
        String str = null;

        for (int i = 0 ; i < string.length();i++){
            switch (m){
                case 0:
                    ch = string.charAt(i);
                    if (ch =='@'){//通过@定位不同的测试从而判断assertion的个数
                        if(assertCount>1){
                            System.out.println("You have too much assertions!");
                            assertCount=0;
                        }
                    }
                    if (ch=='+'||ch == '-' || ch == '*'|| ch =='/'
                            ||ch == '=' || ch == '>'|| ch=='<'
                            ||ch == '!' || ch == '%'|| ch=='|'){
                        str="";
                        str += ch;
                        if (ch == '+'||ch =='-'||ch == '>'|| ch =='<'
                                || ch =='!' || ch =='|' || ch == '&'){
                            ch=string.charAt(i+1);
                            if (isSpilt(ch)){
                                str +=ch;
                                m = 4;
                            }
                            else {
                                ch = string.charAt(i-1);
                                m = 4;
                            }
                        }
                    }
                    else if (ch == ',' || ch == ';' || ch == '{' || ch == '}'
                            || ch == '(' || ch == ')'||ch== '@')
                    {
                        m = 5;
                    }
                    else if (isDigit((ch = string.charAt(i)))){
                        str="";
                        str += ch;
                        m =2;
                    }
                    else if(isLetter(ch = string.charAt(i)))
                    {
                        str = "";
                        str += ch;
                        m = 2;
                    }
                    else if (ch == '_'||ch =='$'){
                        str = "";
                        str +=ch;
                        m=2;
                    }else {

                    }
                    break;
                case 4:
                    i--;
                  //  System.out.println("(4"+"'"+str+ "')");
                    wordString = ("(4"+ "'"+str + "')");
                    vc.add(wordString);
                    m=0;
                    break;
                case 5:
                    i--;
                  //  System.out.println("( 5 "+"“ "+ch+ " ” )");
                    wordString = ("( 4 "+ "“"+ch + " ” )");
                    vc.add(wordString);
                    m = 0;
                    break;
                case 2:
                    if (isLetter(ch = string.charAt(i)))
                    {
                        str += ch;
                    } else
                    {   //System.out.println(str);
                        if (isKey(str))
                        {
                            if(isAssert(str)){
                                //System.out.println("Detected assert");
                                assertCount +=1;
                                assertionType=str;
                              //  System.out.println(assertCount);
                               // System.out.println(assertionType);
                                specificCheck("assertEquals",str);
                            }

                          //  System.out.println("( 1 " + "“ " + str + " ” )");
                            wordString = ("( 1 " + "“ " + str + " ” )");
                            vc.add(wordString);
                        } else
                        {
                           // System.out.println(("( 2 " + "“ " + str + " ” )"));
                            wordString = ("( 2 " + "“ " + str + " ” )");
                            vc.add(wordString);
                        }
                        i--;
                        m = 0;
                    }
                    break;
                case 3:
                    if (isDigit((ch = string.charAt(i))))
                    {
                        str += ch;
                    } else
                    {
                        //System.out.println("( 3 " + "“ " + str + " ” )");
                        wordString = "( 3 " + "“ " + str + " ” )";
                        vc.add(wordString);
                        i--;
                        m = 0;
                    }
                    break;
            }
        }
    }
    public static Vector getVector()
    {
        return vc;

    }
}
