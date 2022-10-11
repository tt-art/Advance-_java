import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import javax.swing.*;

class Scrollabledemo extends Frame implements ActionListener
{
    Lable l1,l2,l3,l4;
    TextField t1,t2,t3,t4;
    Button b1,b2,b3,b4,b5,b6;

Scrollabledemo()
{
    try{
    setVisible(true);
    setSize(500,500);
    setLayout(null);
    
    l1=new Lable("emp id");
    l1.setBounds(120,120,120,30);
    add(l1);
    
    t1=new TextField();
    t1.setBounds(270,120,120,30);
    add(t1);
    
    l2=new Lable("emp id");
    l2.setBounds(120,180,120,30);
    add(l2);
    
        t2=new TextField();
        t2.setBounds(270,180,120,30);
        add(t2);
    
    l3=new Lable("emp id");
    l3.setBounds(120,240,120,30);
    add(l3);
    
        t3=new TextField();
        t3.setBounds(270,240,120,30);
        add(t3);

    l4=new Lable("emp id");
    l4.setBounds(120,300,120,30);
    add(l4);
    
        t4=new TextField();
        t4.setBounds(270,300,120,30);
        add(t4);
} 

}
}
