package com.yedam.stream;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class OutputStreamEx1 {
	public static void main(String[] args) {
		try {
			InputStream is = new FileInputStream("c:/temp/lambo.jpg");
			OutputStream os = new FileOutputStream("c:/temp/copy.jpg");
			int read = -1;
			byte[] buf = new byte[100];
			while(true) {
				read = is.read(buf);
				if(read == -1) {
					break;
				}
				os.write(buf);
			}
			os.flush();
			os.close();
			is.close();
			System.out.println("이미지 복사 완료");
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}

	

	static void write1() {
		// 출력스트림 상위 OutputStream <- FileOutputStream
		try {
			OutputStream os = new FileOutputStream("c:/temp/file1.dat");
			// 10,20,30 숫자 쓰기.
			os.write(10);
			os.write(20);
			os.write(30);
			os.flush(); // 버퍼비우기.
			os.close(); // 리소스 환원.
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
