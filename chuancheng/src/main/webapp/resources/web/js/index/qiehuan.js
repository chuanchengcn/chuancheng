//<!-- banner下拉框  选项卡切换 -->
function fun(num) {
	for (var i = 1; i <= 5; i++) {
		if (num == i) {
			document.getElementById("d" + i).style.display = "block";
		} else {
			document.getElementById("d" + i).style.display = "none";

		}
	}

}