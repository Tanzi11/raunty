$(document).ready(function() {
  console.log("rant.js")
  $("a#view_link").click(myScript);
  $("a#create_link").click(displayForm);
});

function myScript(event) {
  event.preventDefault()
  const auntID = parseInt(event.target.dataset.auntId); //change into integer
  $.get(`/aunties/${auntID}.json`,function(response){
    let list = `<p> ${response.personality} is popular. She has heard ${response.rants.length} rants! </p>`
    list += "<ol>"
    response.rants.forEach(function(obj){
      list += `<li> partial rants: ${obj.partial_content} </li>`
    })
    list += "</ol>"
    $(`div#space-${auntID}`).empty();
    $(`div#space-${auntID}`).html(list);//handle response that comes from api
  })
};

function displayForm(event) {
  event.preventDefault()
  const auntID = parseInt(event.target.dataset.auntId);
  const form = $('div#hidden').html();
  $(`div#space-${auntID}`).empty();
  $(`div#space-${auntID}`).html(form);
};





// view rants is a link
//set id attribute and data attribute of obj
//create div in view(auntyindex)
//anchor thru onclick or click request which triggers the next function
//get onID before making request
//make correct request in the function to the rails api (nested route)
