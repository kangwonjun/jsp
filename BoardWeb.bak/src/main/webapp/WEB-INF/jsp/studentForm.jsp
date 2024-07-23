<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studentForm.jsp</title>
</head>
<body>
    <h3>학생정보등록화면...</h3>
    <form action="../StudentAddServ">
        <table border ="2">
            <tr>
                <th>학생번호</th>
                <td><input type="text" name="sno" id=""></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="sname" id=""></td>
            </tr>
            <tr>
                <td>연락처</td>
                <td><input type="text" name="sphone" id=""></td>
            </tr>
            <tr>
                <td>생일</td>
                <th><input type="date" name="sbirth" id=""></th>
            </tr>
            <tr>
                <td colspan="2" align ="center">
                    <button type="submit">저장</button>
                </td>
            </tr>
        </table>
           
    </form>
</body>
</html>