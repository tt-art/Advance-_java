import java.io.*;
import java.net.*;

import javax.swing.JOptionPane;


import java.awt.event.*;
import java.awt.*;


class clientloginframe extends Frame implements ActionListener
 {
     Label l1,l2;
     TextField t1,t2;
     Button btn;
     clientloginframe()
     {
         setVisible(true);
         setLayout(null);
         setSize(500,500);

         l1=new Label("Enter username ");
         l1.setBounds(120,120,120,30);
         add(l1);

         t1=new TextField();
         t1.setBounds(270,120,120,30);
         add(t1);
         
         l2=new Label("Enter password  ");
         l2.setBounds(120,180,120,30);
         add(l2);

         t2=new TextField();
         t2.setBounds(270,180,120,30);
         add(t2);
         
         btn=new Button("login");
         btn.setBounds(200,240,120,30);
        btn.addActionListener(this);
        add(btn);

     }
     public void actionPerformed(ActionEvent e2)
     {
         try{
            while(true)
            {
             if(e2.getSource()==btn)
             {
             Socket soc=new Socket("localhost",8585);
             InputStream obj=soc.getInputStream();
             DataInputStream in=new DataInputStream(obj);
             OutputStream obj1=soc.getOutputStream();
             DataOutputStream out=new DataOutputStream(obj1);
             String a="";
           
             
          String Uname=t1.getText();
            out.writeUTF(""+Uname);
            String pass=t2.getText();
            out.writeUTF(""+pass);
            a=in.readUTF();
            JOptionPane.showMessageDialog(null, a);
            }
        }
        
         }
         catch (Exception e)
         {
             e.printStackTrace();
         }
     }
    
}
class clientframe
{
    public static void main(String[] args) {
        new clientloginframe();
    }
}
