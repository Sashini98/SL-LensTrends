<%-- 
    Document   : CategoryUp
    Created on : Oct 13, 2020, 7:37:49 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category Update</title>
        <link rel="stylesheet" href ="../../CSS/Admin/intermediate.css">
    </head>
    <body><div style="float: left; ">
        <form>
	<fieldset>
            <legend><font color="black"><h1>Category</h1></font></legend>
        <table border="0" width="30%" height="40px" >
                        <tr>
				<td align="left">Search</td>
                                <td><input type=text name=name size="30" maxlength="25" placeholder="Type here..."></td>
                                <td><right><img src= "../../Resources/Img/search.png"></right></td>
			</tr>
                        <tr>
				<td align="left">Category Name:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Category Type:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
                            <td><center><input type="submit" value="Update" ></center></td>
                            <td><center><input type="reset" value="Remove" ></center>
                        </tr>
                        
                         
                    </table>
            
	</fieldset>
	</form>
    </body>
</html>
