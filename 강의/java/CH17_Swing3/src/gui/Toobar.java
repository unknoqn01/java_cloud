package gui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


public class Toobar extends JToolBar {
	private static final long serialVersionUID = 1L;
	
	public Toobar(ColorChangeListener colorChanger) {
		JButton redButton = new JButton("RED");
		JButton blueButton = new JButton("BLUE");
		
		redButton.addActionListener(e->colorChanger.changColor(Color.RED));														   
		blueButton.addActionListener(e->colorChanger.changColor(Color.BLUE));
		
		add(redButton);
		add(blueButton);
	}

}
