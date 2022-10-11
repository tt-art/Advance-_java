import java.io.*;


class index {
public static void main(String[] args) {
    try{
        BufferedReader br= new BufferedReader(new InputStreamReader(System.in));
        System.out.println("enter char"); 
        String c=br.readLine();
        System.out.println("enter String");      
        String s=br.readLine();
        // char a[]=new char[100];
        // int x=0,x2=0;
        // for(int i=0;i<s.length();i++)
        // {
        //      x=s.indexOf('e');
        //      x2=s.indexOf(c,x);

        // }

        int x=s.indexOf(c);
        int x2=s.indexOf(c,++x);
        int ans=x2-x;
        System.out.println(ans);
        
        


    }
    catch(Exception e)
    {
        e.printStackTrace();

    }
}    
}