<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add a Book</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body class="container">
	<form class="form-horizontal" action="../books/${book.id}" method="post">
	<table>
		<tr>
			<td>Title:</td>
			<td><input type="text" class="form-control" name="title" value="${book.title}" /> </td>
		</tr>
		<tr>
			<td>ISBN:</td>
			<td><input type="text" class="form-control" name="ISBN" value="${book.ISBN}" /> </td>
		</tr>
		<tr>
			<td>Author:</td>
			<td><input type="text" class="form-control" name="author" value="${book.author}" /> </td>
		</tr>
		<tr>
			<td>Price:</td>
			<td><input type="text" class="form-control" name="price" value="${book.price}" /> </td>
		</tr>
	</table>
	<input type="submit" class="btn btn-primary" value="update"/>
	</form>
	<br><br>
	<form action="delete?bookId=${book.id}" method="post">
		<button class="btn btn-danger" type="submit">Delete</button>
	</form>
</body>
</html>