package custom_Exception.exception;

// 온도가 너무 낮을경우 발생시킬 예외
public class TempTooLowException extends TempOutOfRangeException {
	private static final long serialVersionUID = 1L;
	
	public TempTooLowException(String message) {
		//생성자 예외 메세지를 상위 예외클래스에 처리
		super(message); //예외클래스에서 메세지명으로 예외를 생성
	}

}
