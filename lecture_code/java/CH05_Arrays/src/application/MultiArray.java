package application;

public class MultiArray {

	public static void main(String[] args) {
		// 이중 배열
		String[][] texts = {
				{"하나","둘","셋"},
				{"넷","다섯","여섯"},
				{"일곱","여덟","아홉"},
		};
		
		for(int i=0; i<texts.length; i++) {
			
			for(int j=0; j<texts[i].length; j++) {
				System.out.printf("%s\t",texts[i][j]);
			}
			
			System.out.println();
		}

	}

}
