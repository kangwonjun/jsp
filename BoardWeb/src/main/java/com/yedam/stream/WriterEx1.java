package com.yedam.stream;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class WriterEx1 {
	public static void main(String[] args) {
		// 기본 스트림 - 보조스트림 - 추가적인 기능 수행.
		List<MemberVO> members = new ArrayList<>();
		try {
			FileReader fr = new FileReader("c:/temp/file3.txt");
			BufferedReader br = new BufferedReader(fr);
			String str = "";
			String[] strAry = null;

			while (true) {
				str = br.readLine(); // 한라인 읽기.
				if (str == null) {
					break;
				}
				strAry = str.split(" ");
				MemberVO member = new MemberVO();
				member.setMemberNo(Integer.parseInt(strAry[0]));
				member.setMemberName(strAry[1]);
				member.setPoint(Integer.parseInt(strAry[2]));

				System.out.print(str);
			}
			br.close();
			fr.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		members.forEach(System.out::println);
		System.out.println("완료!!");
	}

	static void writer1() {
		// 문자기반스트림 Writer <- FileWriter
		Scanner scn = new Scanner(System.in);
		String str = "";
		try {
			Writer writer = new FileWriter("c:/temp/file2.dat");
			while (true) {
				System.out.println("입력>> ");
				str = scn.nextLine();
				if (str.equals("quit"))
					break;

				writer.write(str + "\n");
			}
			writer.flush();
			writer.close();
			scn.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("완료!!");
	}
}
