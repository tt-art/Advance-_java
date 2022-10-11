import java.io.*;

class duplicatechar {
    public static void main(String[] args) {
        try{
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            System.out.println("Enter a string");
            
            String str=br.readLine();
            int count=0;
            char s[]=str.toCharArray();
            for(int i=0;i<str.length();i++)
            {
                for(int j=i+1;j<str.length();j++)
                {
                    if(s[i]==s[j]&&s[i]!=' ')
                    {
                        count++;
                    System.out.println(s[j]);
                    }
                }
            }
            System.out.println("count ="+count);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
