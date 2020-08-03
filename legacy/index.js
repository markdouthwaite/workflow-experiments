const nunjucks = require("nunjucks");
const fs = require("fs");

function renderTemplate(template, parameters, callback) {
  callback(nunjucks.renderString(template, parameters));
}

function render(filename, to, using, fmt = "utf-8") {
  fs.readFile(filename, fmt, (err, template) => {
    if (err) throw err;
    renderTemplate(template, using, (data) =>
      fs.writeFile(to, data, (err) => {
        if (err) throw err;
        console.log(`Wrote data to ${to}.`);
      })
    );
  });
}

try {
  render(
    "resources/Dockerfile.tmpl",
    (to = "Dockerfile.demo"),
    (using = { entrypoint: "entrypoint.sh", tag: "3.7.8" })
  );
} catch (err) {
  console.log(`Failed with message ${err}.`);
}
