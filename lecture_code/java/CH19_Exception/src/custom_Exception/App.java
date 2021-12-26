package custom_Exception;

import custom_Exception.exception.TempTooHighException;
import custom_Exception.exception.TempTooLowException;

public class App {
	public static void main(String[] args) {
		
		Thermostat stat = new Thermostat();
				
		try {
			stat.setTemperature(-5);
		} catch (TempTooHighException e) {			
			//온도가 낮을경우 처리 코드
			System.out.println(e.getMessage());
		} catch (TempTooLowException e) {
			//온도가 높을경우 처리 코드
			System.out.println(e.getMessage());
		}
	}

}
