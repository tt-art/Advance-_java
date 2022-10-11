import java.sql.*;
class commit1
{
    public static void main(String[] args)
     {
        try{
            
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:emp1");
            con.setAutoCommit(false);
            for(int i=1;i<=4;i++)//condition depend upon row  count
            {
                PreparedStatement psmt=con.prepareStatement("update emp_info set salary=salary+(salary*0.1) where id=?");
                psmt.setInt(1, i);
                int cnt=psmt.executeUpdate();
            }
            if(i>=4){
                con.commit();
                else
                con.rollback();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    
    }