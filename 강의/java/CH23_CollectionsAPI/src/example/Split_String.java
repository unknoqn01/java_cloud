package example;

public class Split_String {
	public static void main(String[] args) {
		// 문자열.split(" ") => 문자열을 공백(space)로 쪼개서 배열로 리턴
		String text1 = "When? Joe. Manchin, stepped to the podium in the US Capitol on Monday afternoon, the hope among Democrats was that he was going to announce that he supported the $1.75 trillion social safety net bill -- a moment that would virtually ensure passage of the bulk of President Joe Biden's first-term domestic agenda.";
		String text2 = "시중은행도 최근 들어 고금리 수신 상품을 잇따라 선보이고 있다. IBK기업은행은 ‘IBK 알토스 적금’을 출시했다. 알토스배구단의 ‘도드람 2021~2022 V-리그’ 성적에 따라 우대금리를 제공하는 자유적립식 상품이다. 계약기간은 1년이며 월 최대 50만원까지 납입이 가능하고 연말까지 5만좌 한정으로 판매된다. 상품의 기본금리는 연 1.00%로 우대금리 최대 연 2.00%포인트를 포함한 최고금리는 연 3.00%다.";
		
		//String[] words = text1.split("[^a-zA-Z]+"); //정규표현식[] ^시작문자
		String[] words = text2.split("[^가-힣]+");
		
		
		for(String w : words) {
			
			if(w.length()<2) continue; //한 철자이하는 빼기
			
			System.out.println(w.toLowerCase()); //전부 소문자로 출력
		}
	}

}
