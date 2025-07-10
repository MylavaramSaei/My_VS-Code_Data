let n = prompt("Enter number:");
let sum = [...n].reduce((a, b) => a + +b, 0);
alert(sum % 9 === 0 ? "🎉 Lucky!" : "❌ Not lucky.");
