
<head>
<h1 align="center">Frontend Assignment Level 2</h1>
</head>
<body>


	<p id="p" align='center'>Click the button to add a new row</p>

	<br>

	<p align="center" id = "b">
		<button onclick="myFunction()" align=center>Form Grid</button>
	</p>

	<script>
	//Right not json parser is not working, other it will work fine
		var obj = JSON.parse('${data}');
		var jsonSize = obj.len;
		var currentNode = 0;
		var div = "";
		function myFunction() {
			var str = "<table >";
			var end = "</table>";
			
			if ((currentNode + 1) < jsonSize) {
				var node1 = obj[currentNode++];
				var node2 = obj[currentNode++];

				var div1 = "<tr><p><div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
						+ node1['category'] + "</div> &nbsp; &nbsp;";
				var div2 = "<div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
						+ node1['title'] + "</div> &nbsp; &nbsp;";
				var div3 = "<div style='width:200px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
						+ node1['author_name'] + "</div></p></tr>";

				var div4 = "<tr><p><div style='width:200px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
						+ node2['category'] + "</div> &nbsp; &nbsp;";
				var div5 = "<div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
						+ node2['title'] + "</div> &nbsp; &nbsp;";
				var div6 = "<div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
						+ node2['author_name'] + "</div></p></tr>";

				div += div1 + div2 + div3 + div4 + div5 + div6;
				document.getElementById("p").innerHTML = str + div + end;
			} else {
				if (currentNode < jsonSize) {
					var node1 = obj[currentNode];
					var div1 = "<tr><p><div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
							+ node1['category'] + "</div> &nbsp; &nbsp;";
					var div2 = "<div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
							+ node1['title'] + "</div> &nbsp; &nbsp;";
					var div3 = "<div style='width:200px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>"
							+ node1['author_name'] + "</div></p></tr>";
					div += div1 + div2 + div3;
					document.getElementById("p").innerHTML = str + div + end;
				} else {
					document.getElementById("b").innerHTML = "No more data is available";
				}
			}
		}
	</script>

</body>
</html>
