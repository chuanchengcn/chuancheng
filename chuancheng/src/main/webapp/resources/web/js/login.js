function fun1(num) {
			for (var i = 1; i <= 2; i++) {
				if (num == i) {
					document.getElementById("d" + i).style.display = "block";

				} else {
					document.getElementById("d" + i).style.display = "none";

				}
			}
		}