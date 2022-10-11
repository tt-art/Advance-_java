import java.sql.*;
class transaction
{
    public static void main(String[] args)
     {
        try{
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:emp1");
            con.setAutoCommit(false);
            int i=0;
            for( i=1;i<=4;i++)//enter no of records in conditon to update  example:-  i<=rows in table
            {
                PreparedStatement psmt=con.prepareStatement("update emp_info set salary=salary+(salary*0.1) where id=?");
                psmt.setInt(1, i);
                int cnt=psmt.executeUpdate();
            }
            if(i>=4)//enter no of records in conditon to update
                con.commit();
                else
                con.rollback();
                
                con.close();
            }
            
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    
    }