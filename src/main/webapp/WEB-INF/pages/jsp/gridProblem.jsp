
<head>
<h1 align="center">Frontend Assignment Level 1</h1>
</head>
<body>


	<p id="p" align='center'>Click the button to add a new row</p>

	<br>

	<p align="center" id="b">
		<button onclick="myFunction()" align=center>Form Grid</button>
	</p>

	<script>
		var div = "";
		var count = 0;
		function myFunction() {

			var str = "<table >";
			var end = "</table>";
			var div1 = "<tr><p><div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>1X</div> &nbsp; &nbsp;";
			var div2 = "<div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>1X</div> &nbsp; &nbsp;";
			var div3 = "<div style='width:200px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>2X</div></p></tr>";

			var div4 = "<tr><p><div style='width:200px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>2X</div> &nbsp; &nbsp;";

			var div5 = "<div style='width:100px;height:100px;background-color:lightblue; display: inline-block;text-align:center;'>1X</div></p></tr>";

			if (count < 2) {
				div += div1 + div2 + div3 + div4 + div2 + div5;
				document.getElementById("p").innerHTML = str + div + end;
				count++;
			} else {
				document.getElementById("b").innerHTML = "No more data is available";
			}

		}
	</script>

</body>
</html>
