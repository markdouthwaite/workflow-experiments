const fs = require("fs")


fs.writeFileSync("alt.txt", "Hello, world! From Node12.")

fs.readdir(".", (err, files) => files.forEach((file) => console.log(file)))