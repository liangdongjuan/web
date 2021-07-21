<!DOCTYPE html>
<html>
<body>

<%
randomize()
r=rnd()
if r>0.5 then
  response.write("<a href='http://www.w3cschool.cc'>W3Cschool.cc!</a>")
else
  response.write("<a href='http://www.refsnesdata.no'>Refsnesdata.no!</a>")
end if
%>

<p>
This example demonstrates a link, each time you load the page, it will display
one of two links: W3Cschool.cc! OR Refsnesdata.no! There is a 50% chance for
each of them.
</p>

</body>
</html>