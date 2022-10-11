import java.sql.*;
class rsmd
{
    public static void main(String[] args) 
    {
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:emp");
            Statement smt =con.createStatement();
            ResultSet rs =smt.executeQuery("select * from emp_info");
            ResultSetMetaData rsm=rs.getMetaData();
            for(int i=1;i<=rsm.getColumnCount();i++)
            {
                System.out.print("column name="+rsm.getColumnName(i));
                System.out.println("   datatype="+rsm.getColumnTypeName(i));
            }
            
            System.out.println("  ");
            boolean a=rsm.isAutoIncrement(1);
            if(a==true)
            System.out.println(rsm.getColumnName(1)+"=column is autoincrement");
            else
            System.out.println(rsm.getColumnName(1)+"=column is not  autoincrement");

            System.out.println("  ");
            
            boolean a1=rsm.isReadOnly(2);
            if(a1==true)
            System.out.println(rsm.getColumnName(2)+"=column is readonly");
            else
            System.out.println(rsm.getColumnName(2)+"=column is not  readonly");

            System.out.println("  ");
            
            boolean a2=rsm.isWritable(3);
            if(a2==true)
            System.out.println(rsm.getColumnName(3)+"=column is writable");
            else
            System.out.println(rsm.getColumnName(3)+"=column is not  writable");
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}