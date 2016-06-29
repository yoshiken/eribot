require('date-utils');

var GoogleSpreadsheet = require('google-spreadsheet');

var my_sheet = new GoogleSpreadsheet('1EdL3Jh7k7jmYuV3Gl3MaV4ye8CYj7umZF1V6EnAm-Pk');

var creds = require('../gs.json');
var sheet ;
my_sheet.useServiceAccountAuth(creds, function(err){

  my_sheet.getInfo(function(err, sheet_info){
    console.log("getInfo err="+ err);
    console.log("sheet title="+ sheet_info.title);
    sheet = sheet_info.worksheets[0];
  });
var dt = new Date();
var time = dt.toFormat("YYYY/MM/DD");
  my_sheet.addWorksheet(
  function(err,my_sheet){
    console.log("addWorksheet err="+ err);
      spreadsheet.add({ 3: { 5: "hello!" } });

      spreadsheet.send(function(err) {
        if(err) throw err;
        console.log("Updated Cell at row 3, column 5 to 'hello!'");
      });
  });

});
