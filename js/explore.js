/* function name: reverse(string)
	for loop to iterate over each char of the string backwards
	concatenate each char onto the end of a fresh string
	return the string once the loop ends */

function reverse(string) {
	var reversedStr = "";
	for (var i = string.length - 1; i >= 0; i--) {
		reversedStr = reversedStr.concat(string[i]);
	}
	return reversedStr
}

freshlyReversedString = reverse("hello");

if (1 == 1) {
	console.log(freshlyReversedString);
}