<%@ page import="org.eclipse.lyo.rio.core.IConstants" %>
<%@ page import="org.eclipse.lyo.rio.store.RioStore" %>
<%
RioStore store = RioStore.getStore();
String uriBase = store.getUriBase();
%>
<!--
    Copyright (c) 2011 IBM Corporation.
   
    All rights reserved. This program and the accompanying materials
    are made available under the terms of the Eclipse Public License v1.0
    and Eclipse Distribution License v. 1.0 which accompanies this distribution. 
   
    The Eclipse Public License is available at http://www.eclipse.org/legal/epl-v10.html
    and the Eclipse Distribution License is available at 
    http://www.eclipse.org/org/documents/edl-v10.php.
   
    Contributors:
   
       Jim Conallen - initial API and implementation
 -->
<html>
<head>
<title>RIO - Default Resource Creator</title>
<link rel="SHORTCUT ICON" href="../oslc.png">
<script language="JavaScript">
function postForm() {
	document.crForm.submit();
	window.close();
}
</script>
</head>
<body>
<form name="createResourceForm" action="<%=uriBase%>/creator/resource" method="post">
Title: (required)<br/>
<input name="title" type="text" style="width:400px" id="title" /><br/>
Description: (optional):<br/>
<textarea name="description" rows="3" cols="100" style="width:400px" id="description"></textarea>
<br/>
<button type="button" onClick="createResourceForm.submit();window.close()">Create</button>
<button type="button" onclick="window.close()">Cancel</button>
</form>
</body>
</html>

