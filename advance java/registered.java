import java.awt.*;
import javax.swing.*;
import java.sql.*;
import java.awt.event.*;
class nevigate extends Frame implements ActionListener
{
   Label l1,l2,l3,l4;
   TextField t1,t2,t3,t4;
   Button b1,b2,b3,b4,b5,b6;
   PreparedStatement psmt;
	Statement smt;
	Connection con;
   nevigate()
  {
	   setVisible(true);
	   setSize(500,1000);
	// setBackground(Color.BLACK);
	// setForeground(Color.WHITE);
	setLayout(null);
	
	l1=new Label("Enter the id");
	l1.setBounds(120,120,120,30);
	add(l1);
	t1=new TextField();
	t1.setBounds(270,120,120,30);
	add(t1);
	l2=new Label("enter the name");
	l2.setBounds(120,270,120,30);
	add(l2);
	t2=new TextField();
	t2.setBounds(270, 270,120,30);
	add(t2);
	l3=new Label("enter the dept  ");
	l3.setBounds(120,320,120,30);
	add(l3);
	t3=new TextField();
	t3.setBounds(420,320,120,30);
	add(t3);
	l4=new Label("enter the salary");
	l4.setBounds(120,380,120,30);
	add(l4);
	t4=new TextField();
	t4.setBounds(270,380,120,30);
	add(t4);
	b1=new Button("FIRST");
	b1.setBounds(120,420,120,30);
	add(b1);
	b1.addActionListener(this);

	b2=new Button("LAST");
	b2.setBounds(270,420,120,30);
	add(b2);
	b2.addActionListener(this);

	b3=new Button("NEXT");
	b3.setBounds(420,420,120,30);
	add(b3);
	b3.addActionListener(this);

	b4=new Button("PREVIOUS");
	b4.setBounds(120,480,120,30);
	add(b4);
	b4.addActionListener(this);

	b5=new Button("RELATIVE");
	b5.setBounds(270,480,120,30);
	add(b5);
	b5.addActionListener(this);

	b6=new Button("ABSOLUTE");
	b6.setBounds(400,480,120,30);
	add(b6);
	b6.addActionListener(this);

	// try{
	
	// 	// smt=createStatement();
	// 	// ResultSet rs=smt.executeQuery("select * from registered");
	// }
	// catch(Exception e2)
	// 
	// 	// JOptionpane.showMessageDialog(null,"error");
	// }
 }	

	public void actionPerformed(ActionEvent e)
	{
		try
		{

				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:emp");
			if(e.getSource()==b1)
			{
				smt=con.createStatement();
				ResultSet rs=smt.executeQuery("select * from emp_info where id=(select min(id) from emp_info);");
				while(rs.next())
				{
					t1.setText(" "+rs.getInt(1));
					t2.setText(" "+rs.getString(2));
					t3.setText(" "+rs.getString(3));
					t4.setText(" "+rs.getInt(4));

				
				}
			}
			if(e.getSource()==b2)
			{

				smt=con.createStatement();
				ResultSet rs=smt.executeQuery("select * from emp_info where id=(select max (id)from emp_info)");
				while(rs.next())
				{
					t1.setText(""+rs.getInt(1));
					t2.setText(""+rs.getString(2));
					t3.setText(""+rs.getString(3));
					t4.setText(""+rs.getInt(4));

				
				}
			}

			if (e.getSource()==b3)
			{
				psmt=con.prepareStatement("select * from emp_info where id =(select min(id)from emp_info where id>?)");
				psmt.setInt(1,Integer.parseInt(t1.getText()));
				ResultSet rs=psmt.executeQuery();
				while(rs.next())
				{
					t1.setText(""+rs.getInt(1));
					t2.setText(""+rs.getString(2));
					t3.setText(""+rs.getString(3));
					t4.setText(""+rs.getInt(4));
				}
			}
			if (e.getSource()==b4)
			{
				psmt=con.prepareStatement("select * from emp_info where id =(select max(id)from emp_info where  id<?)");
				psmt.setInt(1,Integer.parseInt(t1.getText()));
				ResultSet rs=psmt.executeQuery();
				while(rs.next())
				{
					t1.setText(""+rs.getInt(1));
					t2.setText(""+rs.getString(2));
					t3.setText(""+rs.getString(3));
					t4.setText(""+rs.getInt(4));
				}
			}
			if (e.getSource()==b5)
			{
				
				smt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
				ResultSet rs=smt.executeQuery("select * from emp_info ");
                
				//  rs.first();
				rs.relative(2);
					t1.setText(""+rs.getInt(1));
					t2.setText(""+rs.getString(2));
					t3.setText(""+rs.getString(3));
					t4.setText(""+rs.getInt(4));
				
			}
			if (e.getSource()==b6)
			{
				smt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
				ResultSet rs=smt.executeQuery("select * from emp_info ");
				
					// enter id in TextField

					rs.absolute( Integer.parseInt(t1.getText()));
					t1.setText(""+rs.getInt(1));
					t2.setText(""+rs.getString(2));
					t3.setText(""+rs.getString(3));
					t4.setText(""+rs.getInt(4));
			}
			
			con.close();



		}
		 catch(Exception e3)
		 {

		  // JOptionpane.showMessageDialog(null,"error");
		  }
	}

   }
   class registered
   {
   	public static  void main(String s[])
   	{
   		new nevigate();
   	}
   }


