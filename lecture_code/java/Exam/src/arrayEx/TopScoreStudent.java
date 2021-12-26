package arrayEx;

public class TopScoreStudent {
	public static void main(String[] args) {
		// 배열 생성
		String[] names = {"Elena","Suzie","John","Emily","Neda","Kate",
				"Alex","Daniel","Hamilton"};
		int[] scores = {65,74,23,75,68,96,88,98,54 };

		// 1등 인덱스 검색
		int i = topIndex(scores);

		// 결과 출력
		System.out.printf("1등: %s(%d점)\n", names[i], scores[i]);
	}

	// 정수형 배열을 입력받아 가장 큰 값의 인덱스를 반환
	public static int topIndex(int[] arr) {
		/* 해당 함수를 완성하세요. */
		int index = 0;
		for(int i=0,temp=0; i<arr.length; i++) {
			if(arr[i] > temp) {
				temp = arr[i]; 
				index = i;
			}
		}
		return index;
	}
}
