<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�Խ��� �߰��ϴ� ������</title>
</head>

<body>

<% 
String menu=request.getParameter("menu");
String table=request.getParameter("table_name");
String name=request.getParameter("name");

%>

</body>
</html>


<ul>
<li>�Խ��� TABLE</li>
<li><input type="text" name="table_name" /></li>
<li>������, ����, _�� ����(������� 20�� �̳�)</li>
</ul>
<ul>
<li>�Խ��� ����</li>
<li><input type="text" name="name" /></li>
</ul>
<ul>
<li>����޴� �̹���</li>
<li><input type="text" name="file" /></li>
</ul>
<ul>
<li>��Ϻ��� ����</li>
<li>
<select name="list_level">
<option name="4">�α������� ���� ȸ��</option>
<option name="3">�Ϲ�ȸ��</option>
<option name="2">������</option>
<option name="1">������</option>
</select>
</li>
</ul>
<ul>
<li>���б� ����</li>
<li>
<select name="view_level">
<option name="4">�α������� ���� ȸ��</option>
<option name="3">�Ϲ�ȸ��</option>
<option name="2">������</option>
<option name="1">������</option>
</select>
</li>
</ul>
<ul>
<li>�۾��� ����</li>
<li>
<select name="write_level">
<option name="4">�α������� ���� ȸ��</option>
<option name="3">�Ϲ�ȸ��</option>
<option name="2">������</option>
<option name="1">������</option>
</select>
</li>
</ul>
<ul>
<li>�ڸ�Ʈ���� ����</li>
<li>
<select name="cmt_level">
<option name="4">�α������� ���� ȸ��</option>
<option name="3">�Ϲ�ȸ��</option>
<option name="2">������</option>
<option name="1">������</option>
</select>
</li>
</ul>
<ul>
<li>���Ű��� ����</li>
<li>
<select name="buy_level">
<option name="5">Ư������ȸ��</option>
<option name="4">�α������� ���� ȸ��</option>
<option name="3">�Ϲ�ȸ��</option>
<option name="2">������</option>
<option name="1">������</option>
</select>
</li>
<li>����5 Ư������ȸ���� �Ʒ� Ư������ȸ�� ���� �Է��� ȸ���� ����Ŵ</li>
</ul>
<ul>
<li>���Ű��� ����</li>
<li>
<select name="buy_level">
<option name="5">Ư��ȸ��</option>
<option name="4">�α������� ���� ȸ��</option>
<option name="3">�Ϲ�ȸ��</option>
<option name="2">������</option>
<option name="1">������</option>
</select>
</li>
<li>����5 Ư��ȸ���� �Ʒ� Ư��ȸ������ ���� �Էµ� ȸ���� ����Ŵ</li>
</ul>
<ul>
<li>Ư��ȸ������</li>
<li><input type="text" name="buy_5level" /></li>
<li>���̵�� ���̵� ���̴� | �� �����ϼ���.</li>
</ul>
<ul>
<li>����Ʈ ����</li>
</ul>
<ul>
<li>�۾��� ����Ʈ</li>
<li><input type="text" name="write_point" /></li>
</ul>
<ul>
<li>����õ�� �۾��� ����Ʈ</li>
<li><input type="text" name="writer_point" /></li>
</ul>
<ul>
<li>��۾��� ����Ʈ</li>
<li><input type="text" name="cmt_point" /></li>
</ul>
<ul>
<li>�з�</li>
<li><input type="text" name="ctg" /></li>
<li>�з��� �з� ���̴� | �� �����ϼ���.</li>
</ul>
<ul>
<li>��б� ���</li>
<li>
<select type="secret">
<option name="x">������� ����</option>
<option name="o">�׻� ���</option>
<option name="m">üũ�ڽ�</option>
</select>
</li>
</ul>
<ul>
<li>��õ ���</li>
<li>
<input type="checkbox" name="pluson" />
</li>
</ul>
<ul>
<li>��� ���</li>
<li>
<input type="checkbox" name="replyon" />
</li>
</ul>
<ul>
<li>���Ͼ��ε� ���</li>
<li>
<input type="checkbox" name="loadon" />
</li>
</ul>
<ul>
<li>���߱۾��� ���</li>
<li>
<input type="checkbox" name="writeson" />
</li>
</ul>
<ul>
<li>�Խ��� ��Ų</li>
<li>
<select type="skin">
<option>���Ķ�ġ������</option>
<option>�Ǹ��� ����</option>
<option>�Ǹſ��� ����</option>
<option>�Խ��� ����</option>
<option>������ ����</option>
<option>FAQ ����</option>
</select>
</li>
</ul>
<ul>
<li><input type="button" value="Ȯ��" /><input type="button" value="���" /></li>
</ul>
</div>
</body>
</html>