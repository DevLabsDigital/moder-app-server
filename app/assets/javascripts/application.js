// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
$(document).on('ready turbolinks:load', function() {
  $('.alert .close').click((e)=> { 
        e.preventDefault() 
        $('.alert').hide()

      })
});
 
setupParent=(e)=>{
	axios.get('/companies.json', {params:{ filter_category_parent: e.value}}).then((result)=> {

		let select_el = document.getElementById("company_parent_id")
		select_el.innerHTML = ""
    
    let option = document.createElement("OPTION");
    select_el.appendChild(option)

		result.data.map((company)=>{
			let option = document.createElement("OPTION");
			option.setAttribute("value", company.id);	
  			option.appendChild(document.createTextNode(company.razao_social));	

  			select_el.appendChild(option)
		})
		if(result.data.length == 0){
			$('.company_parent').hide()
      $('.company_pattern_to_clone_id').show()
		}else{
			$('.company_parent').show()
      if(e.value == "matriz_type"){
        $('.company_pattern_to_clone_id').show()
      }
      if(e.value == "subsidiary_type"){
        $('.company_parent label').text("Matriz")  
        $('.company_pattern_to_clone_id').hide()
      }
      
		}
		
	})
}


function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function(e) {
      document.getElementById("content").style.backgroundImage = `url(${e.target.result})`;
    }
    
    reader.readAsDataURL(input.files[0]);
  }
}

function readXLSX(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function(e) {
      document.getElementById("content").style.content = `arquivo carregado`;
      if (input.files[0].size > 2000000) {
        alert("Arquivo tem mais de 2mb, verifique se existem linhas em branco")
        throw "Arquivo muito grande"
      }
      $(input).parent().parent().find("#content").text(input.files[0].name);
    }
    
    reader.readAsDataURL(input.files[0]);
  }
}