package application;

public class Increment {

	public static void main(String[] args) {
		// 정수값을 1씩 증가 또는 감소 연산자
		int count = 0;
		
		count = count + 1;
		System.out.println(count);
		count += 1;
		System.out.println(count);
		count++;
		System.out.println(count);
		++count;
		System.out.println(count);
		
		count = count - 1;
		System.out.println(count);
		count -= 1;
		System.out.println(count);
		count--;
		System.out.println(count);
		--count;
		System.out.println(count);

	}

}
