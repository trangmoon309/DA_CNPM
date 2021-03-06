package CNPM;

import java.awt.EventQueue;

import javax.swing.ButtonGroup;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Insets;

import javax.swing.JTextField;
import javax.swing.JRadioButton;
import javax.swing.JComboBox;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JTextArea;
import java.awt.SystemColor;
import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.GroupLayout.Group;

import java.awt.Toolkit;
import javax.swing.JPasswordField;
import javax.swing.JButton;
import javax.swing.border.Border;
import javax.swing.border.EmptyBorder;
import javax.swing.border.MatteBorder;
import java.awt.Color;
import java.awt.Component;

import javax.swing.UIManager;
import javax.swing.border.CompoundBorder;
import javax.swing.border.TitledBorder;
import javax.swing.border.SoftBevelBorder;
import javax.swing.border.BevelBorder;
import java.awt.Rectangle;
import java.awt.BorderLayout;
import java.awt.Button;

import javax.swing.border.LineBorder;
import javax.swing.JCheckBox;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import CNPM.Connect_DB;
public class Register {

	private JFrame frmDangki;
	private JTextField txtfullname;
	// private ButtonGroup gen;
	private JTextField txtsogiayphep;
	private JTextField txtusername;
	private JPasswordField passwordField;
	private JPasswordField repasswordField;
	private JTextField txtsdt;
	Connection connect = null;
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Register register = new Register();
					register.frmDangki.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public Register() {
		// initialize();
		// private void initialize() {
		try {
			connect = Connect_DB.getSQLServer();
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		frmDangki = new JFrame();
		frmDangki.setIconImage(Toolkit.getDefaultToolkit().getImage("E:\\tiu\\icon\\register.png"));
		frmDangki.getContentPane().setBackground(SystemColor.activeCaption);
		frmDangki.getContentPane().setLayout(null);
		frmDangki.setTitle("\u0110\u0103ng k\u00ED th\u00E0nh vi\u00EAn");
		frmDangki.setBounds(100, 100, 910, 488);
		// frmDangki.setExtendedState(JFrame.MAXIMIZED_BOTH);
		frmDangki.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		// frmDangki.getContentPane().setLayout(null);

		JPanel personalinfo = new JPanel();
		personalinfo.setBounds(30, 47, 468, 380);
		personalinfo.setLayout(null);

		JLabel infor = new JLabel("Th\u00F4ng tin c\u00E1 nh\u00E2n");
		infor.setHorizontalTextPosition(SwingConstants.CENTER);
		infor.setFont(new Font("Arial", Font.BOLD, 14));
		infor.setHorizontalAlignment(SwingConstants.CENTER);
		infor.setBounds(139, 11, 227, 32);
		personalinfo.add(infor);
		JLabel lblFullname = new JLabel("H\u1ECD v\u00E0 t\u00EAn");
		lblFullname.setHorizontalAlignment(SwingConstants.LEFT);
		lblFullname.setBounds(52, 69, 68, 21);
		personalinfo.add(lblFullname);

		txtfullname = new JTextField();
		txtfullname.setBorder(null);
		txtfullname.setBounds(163, 66, 219, 27);
		personalinfo.add(txtfullname);
		txtfullname.setColumns(10);

		JLabel lblGender = new JLabel("Gi\u1EDBi t\u00EDnh");
		lblGender.setHorizontalAlignment(SwingConstants.LEFT);
		lblGender.setBounds(52, 101, 68, 28);
		personalinfo.add(lblGender);

		JRadioButton rdbtnNam = new JRadioButton("Nam");
		rdbtnNam.setBounds(173, 106, 60, 23);
		personalinfo.add(rdbtnNam);
		rdbtnNam.setSelected(true);

		JRadioButton rdbtnN = new JRadioButton("N\u1EEF");
		rdbtnN.setBounds(245, 104, 68, 23);
		personalinfo.add(rdbtnN);

		JRadioButton rdbtnkhac = new JRadioButton("Kh\u00E1c");
		rdbtnkhac.setBounds(314, 104, 68, 23);
		personalinfo.add(rdbtnkhac);

		ButtonGroup group = new ButtonGroup();
		group.add(rdbtnNam);
		group.add(rdbtnN);
		group.add(rdbtnkhac);

		// rdbtnNam.addActionListener(this);
		/*
		 * Group genderGroup = new Group(shell, SWT.NONE); genderGroup.setLayout(new
		 * RowLayout(SWT.HORIZONTAL)); Button buttonMale = new Button(genderGroup,
		 * SWT.RADIO); buttonMale.setText("Male");
		 * 
		 * Button buttonFemale = new Button(genderGroup, SWT.RADIO);
		 * buttonFemale.setText("Female");
		 */

		JLabel lbldob = new JLabel("Ng\u00E0y sinh");
		lbldob.setHorizontalAlignment(SwingConstants.LEFT);
		lbldob.setBounds(52, 140, 77, 24);
		personalinfo.add(lbldob);

		/*String day[] = new String[100];
		for (int i = 1; i <= 31; i++) {
			// day[i]= new StringBuffer().append(i).toString(); new String[] {"Ng\u00E0y"})
			day[i] = new Integer(i).toString();
		}

		String date[] = { "1", "2", "3", "4" };*/
		JComboBox cbDay = new JComboBox();
		cbDay.setName("Ngày");
		cbDay.setModel(new DefaultComboBoxModel(new String[] {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 
																"11", "12", "13", "14", "15", "16", "17", "18", "19", 
																"20", "21", "22", "23", "24", "25", "26", "27", "28", 
																"29", "30", "31"}));
		// cbDay.setToolTipText("");
		cbDay.setBounds(163, 144, 60, 20);
		personalinfo.add(cbDay);

		/*String month[] = new String[100];
		for (int i = 0; i <= 12; i++) {
			month[i] = new StringBuffer().append(i).toString();
		}*/
		JComboBox cbmonth = new JComboBox();
		cbmonth.setName("Tháng");
		cbmonth.setModel(new DefaultComboBoxModel(new String[] {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"}));
		cbmonth.setBounds(245, 144, 60, 20);
		personalinfo.add(cbmonth);

		/*String year[] = new String[150];
		for (int j = 0; j <= 100; j++)
			for (int i = 1920; i <= 2020; i++) {
				year[j] = new StringBuffer().append(i).toString();
			}*/
		String year[] = { "1920",	"1921",	"1922",	"1923",	"1924",	"1925",	"1926",	"1927",	
				"1928","1929",	"1930",	"1931",	"1932",	"1933",	"1934",	"1935",	"1936",	
				"1937",	"1938",	"1939",	"1940",	"1941",	"1942",	"1943",	"1944",	"1945",	
				"1946",	"1947",	"1948",	"1949",	"1950",	"1951",	"1952",	"1953",	"1954",	
				"1955",	"1956",	"1957",	"1958",	"1959",	"1960",	"1961",	"1962",	"1963",	
				"1964",	"1965",	"1966",	"1967",	"1968",	"1969",	"1970",	"1971",	"1972",	
				"1973",	"1974",	"1975",	"1976",	"1977",	"1978",	"1979",	"1980",	"1981",	
				"1982",	"1983",	"1984",	"1985",	"1986",	"1987",	"1988",	"1989",	"1990",	
				"1991",	"1992",	"1993",	"1994",	"1995",	"1996",	"1997",	"1998",	"1999",	
				"2000",	"2001",	"2002",	"2003",	"2004",	"2005",	"2006",	"2007",	"2008",	
				"2009",	"2010",	"2011",	"2012",	"2013",	"2014",	"2015",	"2016",	"2017",	
				"2018",	"2019"};	
		
		JComboBox cbyear = new JComboBox(year);
		cbyear.setName("Năm");
		//cbyear.setModel(new DefaultComboBoxModel(new String[] { "N\u0103m" }));
		//cbyear.setT
		//cbyear.setToolTipText("year");
		cbyear.setBounds(322, 144, 60, 20);
		personalinfo.add(cbyear);

		JTextArea textAreaadd = new JTextArea();
		textAreaadd.setBounds(163, 188, 219, 60);
		personalinfo.add(textAreaadd);

		JLabel lbldiachi = new JLabel("\u0110\u1ECBa ch\u1EC9");
		lbldiachi.setHorizontalAlignment(SwingConstants.LEFT);
		lbldiachi.setBounds(52, 197, 60, 21);
		personalinfo.add(lbldiachi);

		JLabel lblsogiayphep = new JLabel("S\u1ED1 gi\u1EA5y ph\u00E9p");
		lblsogiayphep.setHorizontalAlignment(SwingConstants.LEFT);
		lblsogiayphep.setBounds(52, 321, 89, 32);
		personalinfo.add(lblsogiayphep);

		txtsogiayphep = new JTextField();
		txtsogiayphep.setBorder(null);
		txtsogiayphep.setBounds(163, 321, 219, 27);
		personalinfo.add(txtsogiayphep);
		txtsogiayphep.setColumns(10);
		frmDangki.getContentPane().add(personalinfo);

		JLabel lblSdt = new JLabel("S\u1ED1 \u0111i\u1EC7n tho\u1EA1i");
		lblSdt.setBounds(52, 272, 77, 21);
		personalinfo.add(lblSdt);

		txtsdt = new JTextField();
		txtsdt.setColumns(10);
		txtsdt.setBorder(null);
		txtsdt.setBounds(163, 270, 219, 27);
		personalinfo.add(txtsdt);

		JPanel account = new JPanel();
		account.setBackground(SystemColor.activeCaptionBorder);
		account.setBorder(new MatteBorder(0, 2, 0, 0, (Color) new Color(0, 0, 0)));
		account.setBounds(498, 47, 371, 380);
		frmDangki.getContentPane().add(account);
		account.setLayout(null);

		JLabel lblusername = new JLabel("T\u00EAn \u0111\u0103ng nh\u1EADp");
		lblusername.setHorizontalAlignment(SwingConstants.LEFT);
		lblusername.setBounds(10, 65, 91, 27);
		account.add(lblusername);

		txtusername = new JTextField();
		txtusername.setBorder(null);
		txtusername.setBounds(133, 65, 180, 27);
		account.add(txtusername);
		txtusername.setColumns(10);

		JLabel lblpass = new JLabel("M\u1EADt kh\u1EA9u");
		lblpass.setHorizontalAlignment(SwingConstants.LEFT);
		lblpass.setBounds(10, 126, 66, 22);
		account.add(lblpass);

		passwordField = new JPasswordField();
		passwordField.setBorder(null);
		passwordField.setBounds(133, 124, 180, 27);
		account.add(passwordField);

		JLabel lblrepass = new JLabel("Nh\u1EADp l\u1EA1i m\u1EADt kh\u1EA9u");
		lblrepass.setHorizontalAlignment(SwingConstants.LEFT);
		lblrepass.setBounds(10, 183, 113, 27);
		account.add(lblrepass);

		repasswordField = new JPasswordField();
		repasswordField.setBorder(null);
		repasswordField.setBounds(133, 183, 180, 27);
		account.add(repasswordField);

		JButton btnregister = new JButton("\u0110\u0103ng k\u00ED");
		btnregister.addActionListener(new ActionListener() {
			@SuppressWarnings("deprecation")
			public void actionPerformed(ActionEvent e) {
				String text = group.getSelection().getActionCommand();// cai nao  đc chọn trong 3 cái radiobutton male female..
				if(txtfullname.getText() != null && group.getSelection()!= null && cbDay != null && cbmonth!= null
						&& cbyear!= null && txtsdt.getText() != null && txtsogiayphep.getText() != null && textAreaadd.getText() != null 
						&& txtusername.getText()!= null && passwordField.getText() != null && repasswordField.getText() != null) {
					if(passwordField.getText().equals(repasswordField.getText())) {
						try {
							String sql = "insert into HD(username, ipassword, hoten, tuoi, gioitinh, sodienthoai, diachi,  sogiayphep) values ( ?, ?, ?, ?, ?, ?, ?, ?)";
							PreparedStatement pre = connect.prepareStatement(sql);
							pre.setString(1, txtusername.getText() );
							pre.setString(2, passwordField.getText());
							pre.setString(3, txtfullname.getText());
							//pre.setInt(4,  2020 - cbyear.get);
							pre.setString(5, text);
							pre.setString(6, txtsdt.getText());
							pre.setString(7, textAreaadd.getText() );
							pre.setString(8, txtsogiayphep.getText());
							//con id vatnuoi, id hodan duoc them sau all co 10 field
						}catch(Exception ex) {
							JOptionPane.showMessageDialog(null, "System Error!" + ex);
						}
					
					}
					else {
						JOptionPane.showMessageDialog(null, "Password doesn't match with repassword! Please check again");
					}
				}
				else {
					JOptionPane.showMessageDialog(null, "Please fill out all the fields!");
				}
			}
			
		});
		
		btnregister.setBackground(SystemColor.activeCaptionBorder);
		btnregister.setBorder(new LineBorder(SystemColor.text));
		btnregister.setFont(new Font("Arial", Font.BOLD, 11));
		btnregister.setBounds(186, 270, 91, 27);
		account.add(btnregister);

		JLabel lblTiKhon = new JLabel("T\u00E0i kho\u1EA3n");
		lblTiKhon.setFont(new Font("Arial", Font.BOLD, 14));
		lblTiKhon.setHorizontalAlignment(SwingConstants.CENTER);
		lblTiKhon.setBounds(151, 11, 100, 26);
		account.add(lblTiKhon);

		JCheckBox cbShowPassword = new JCheckBox("Show password");
		cbShowPassword.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (cbShowPassword.isSelected()) {
					passwordField.setEchoChar((char) 0);// hien thi mat khau
				} else {
					passwordField.setEchoChar('*');// khong chon showpass
				}
			}
		});
		cbShowPassword.setBackground(SystemColor.activeCaptionBorder);
		cbShowPassword.setBorder(null);
		cbShowPassword.setBounds(133, 217, 144, 23);
		account.add(cbShowPassword);

		JLabel lbldangnhap = new JLabel("\u0110\u0103ng nh\u1EADp");
		lbldangnhap.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				login logi = new login();
				 //logi.setVisible(true);
			}
		});
		lbldangnhap.setBounds(200, 355, 65, 14);
		account.add(lbldangnhap);
	}
}

/**
 * Initialize the contents of the frame.
 */

/*
 * class RoundedBorder implements Border {
 * 
 * private int radius;
 * 
 * 
 * RoundedBorder(int radius) { this.radius = radius; }
 * 
 * 
 * public Insets getBorderInsets(Component c) { return new Insets(this.radius +
 * 1, this.radius+1, this.radius + 2, this.radius); }
 * 
 * 
 * public boolean isBorderOpaque() { return true; }
 * 
 * 
 * public void paintBorder(Component c, Graphics g, int x, int y, int width, int
 * height) { g.drawRoundRect(x, y, width - 1, height - 1, radius, radius); } }
 */