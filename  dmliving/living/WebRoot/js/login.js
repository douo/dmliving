/**
 * login.js
 */
function update_zone(theForm) {
  // if there is no zone_id field to update, or if it is hidden from display, then exit performing no updates
  if (!theForm || !theForm.elements["zone_id"]) return;
  if (theForm.zone_id.type == "hidden") return;

  // set initial values
  var SelectedCountry = theForm.zone_country_id.options[theForm.zone_country_id.selectedIndex].value;
  var SelectedZone = theForm.elements["zone_id"].value;

  // reset the array of pulldown options so it can be repopulated
  var NumState = theForm.zone_id.options.length;
  while(NumState > 0) {
    NumState = NumState - 1;
    theForm.zone_id.options[NumState] = null;
  }
  // build dynamic list of countries/zones for pulldown
  if (SelectedCountry == "13") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Australian Capital Territory", "182");
    theForm.zone_id.options[2] = new Option("New South Wales", "183");
    theForm.zone_id.options[3] = new Option("Northern Territory", "184");
    theForm.zone_id.options[4] = new Option("Queensland", "185");
    theForm.zone_id.options[5] = new Option("South Australia", "186");
    theForm.zone_id.options[6] = new Option("Tasmania", "187");
    theForm.zone_id.options[7] = new Option("Victoria", "188");
    theForm.zone_id.options[8] = new Option("Western Australia", "189");
    hideStateField(theForm);
  } else if (SelectedCountry == "14") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Burgenland", "102");
    theForm.zone_id.options[2] = new Option("KÃ¤rtnen", "99");
    theForm.zone_id.options[3] = new Option("Niedersterreich", "96");
    theForm.zone_id.options[4] = new Option("Obersterreich", "97");
    theForm.zone_id.options[5] = new Option("Salzburg", "98");
    theForm.zone_id.options[6] = new Option("Steiermark", "100");
    theForm.zone_id.options[7] = new Option("Tirol", "101");
    theForm.zone_id.options[8] = new Option("Voralberg", "103");
    theForm.zone_id.options[9] = new Option("Wien", "95");
    hideStateField(theForm);
  } else if (SelectedCountry == "38") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Alberta", "66");
    theForm.zone_id.options[2] = new Option("British Columbia", "67");
    theForm.zone_id.options[3] = new Option("Manitoba", "68");
    theForm.zone_id.options[4] = new Option("New Brunswick", "70");
    theForm.zone_id.options[5] = new Option("Newfoundland", "69");
    theForm.zone_id.options[6] = new Option("Northwest Territories", "72");
    theForm.zone_id.options[7] = new Option("Nova Scotia", "71");
    theForm.zone_id.options[8] = new Option("Nunavut", "73");
    theForm.zone_id.options[9] = new Option("Ontario", "74");
    theForm.zone_id.options[10] = new Option("Prince Edward Island", "75");
    theForm.zone_id.options[11] = new Option("Quebec", "76");
    theForm.zone_id.options[12] = new Option("Saskatchewan", "77");
    theForm.zone_id.options[13] = new Option("Yukon Territory", "78");
    hideStateField(theForm);
  } else if (SelectedCountry == "81") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Baden-Wrttemberg", "80");
    theForm.zone_id.options[2] = new Option("Bayern", "81");
    theForm.zone_id.options[3] = new Option("Berlin", "82");
    theForm.zone_id.options[4] = new Option("Brandenburg", "83");
    theForm.zone_id.options[5] = new Option("Bremen", "84");
    theForm.zone_id.options[6] = new Option("Hamburg", "85");
    theForm.zone_id.options[7] = new Option("Hessen", "86");
    theForm.zone_id.options[8] = new Option("Mecklenburg-Vorpommern", "87");
    theForm.zone_id.options[9] = new Option("Niedersachsen", "79");
    theForm.zone_id.options[10] = new Option("Nordrhein-Westfalen", "88");
    theForm.zone_id.options[11] = new Option("Rheinland-Pfalz", "89");
    theForm.zone_id.options[12] = new Option("Saarland", "90");
    theForm.zone_id.options[13] = new Option("Sachsen", "91");
    theForm.zone_id.options[14] = new Option("Sachsen-Anhalt", "92");
    theForm.zone_id.options[15] = new Option("Schleswig-Holstein", "93");
    theForm.zone_id.options[16] = new Option("Thringen", "94");
    hideStateField(theForm);
  } else if (SelectedCountry == "163") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Palau", "50");
    hideStateField(theForm);
  } else if (SelectedCountry == "195") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("A Corua", "130");
    theForm.zone_id.options[2] = new Option("Alava", "131");
    theForm.zone_id.options[3] = new Option("Albacete", "132");
    theForm.zone_id.options[4] = new Option("Alicante", "133");
    theForm.zone_id.options[5] = new Option("Almeria", "134");
    theForm.zone_id.options[6] = new Option("Asturias", "135");
    theForm.zone_id.options[7] = new Option("Avila", "136");
    theForm.zone_id.options[8] = new Option("Badajoz", "137");
    theForm.zone_id.options[9] = new Option("Baleares", "138");
    theForm.zone_id.options[10] = new Option("Barcelona", "139");
    theForm.zone_id.options[11] = new Option("Burgos", "140");
    theForm.zone_id.options[12] = new Option("Caceres", "141");
    theForm.zone_id.options[13] = new Option("Cadiz", "142");
    theForm.zone_id.options[14] = new Option("Cantabria", "143");
    theForm.zone_id.options[15] = new Option("Castellon", "144");
    theForm.zone_id.options[16] = new Option("Ceuta", "145");
    theForm.zone_id.options[17] = new Option("Ciudad Real", "146");
    theForm.zone_id.options[18] = new Option("Cordoba", "147");
    theForm.zone_id.options[19] = new Option("Cuenca", "148");
    theForm.zone_id.options[20] = new Option("Girona", "149");
    theForm.zone_id.options[21] = new Option("Granada", "150");
    theForm.zone_id.options[22] = new Option("Guadalajara", "151");
    theForm.zone_id.options[23] = new Option("Guipuzcoa", "152");
    theForm.zone_id.options[24] = new Option("Huelva", "153");
    theForm.zone_id.options[25] = new Option("Huesca", "154");
    theForm.zone_id.options[26] = new Option("Jaen", "155");
    theForm.zone_id.options[27] = new Option("La Rioja", "156");
    theForm.zone_id.options[28] = new Option("Las Palmas", "157");
    theForm.zone_id.options[29] = new Option("Leon", "158");
    theForm.zone_id.options[30] = new Option("Lleida", "159");
    theForm.zone_id.options[31] = new Option("Lugo", "160");
    theForm.zone_id.options[32] = new Option("Madrid", "161");
    theForm.zone_id.options[33] = new Option("Malaga", "162");
    theForm.zone_id.options[34] = new Option("Melilla", "163");
    theForm.zone_id.options[35] = new Option("Murcia", "164");
    theForm.zone_id.options[36] = new Option("Navarra", "165");
    theForm.zone_id.options[37] = new Option("Ourense", "166");
    theForm.zone_id.options[38] = new Option("Palencia", "167");
    theForm.zone_id.options[39] = new Option("Pontevedra", "168");
    theForm.zone_id.options[40] = new Option("Salamanca", "169");
    theForm.zone_id.options[41] = new Option("Santa Cruz de Tenerife", "170");
    theForm.zone_id.options[42] = new Option("Segovia", "171");
    theForm.zone_id.options[43] = new Option("Sevilla", "172");
    theForm.zone_id.options[44] = new Option("Soria", "173");
    theForm.zone_id.options[45] = new Option("Tarragona", "174");
    theForm.zone_id.options[46] = new Option("Teruel", "175");
    theForm.zone_id.options[47] = new Option("Toledo", "176");
    theForm.zone_id.options[48] = new Option("Valencia", "177");
    theForm.zone_id.options[49] = new Option("Valladolid", "178");
    theForm.zone_id.options[50] = new Option("Vizcaya", "179");
    theForm.zone_id.options[51] = new Option("Zamora", "180");
    theForm.zone_id.options[52] = new Option("Zaragoza", "181");
    hideStateField(theForm);
  } else if (SelectedCountry == "204") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Aargau", "104");
    theForm.zone_id.options[2] = new Option("Appenzell Ausserrhoden", "106");
    theForm.zone_id.options[3] = new Option("Appenzell Innerrhoden", "105");
    theForm.zone_id.options[4] = new Option("Basel-Landschaft", "108");
    theForm.zone_id.options[5] = new Option("Basel-Stadt", "109");
    theForm.zone_id.options[6] = new Option("Bern", "107");
    theForm.zone_id.options[7] = new Option("Freiburg", "110");
    theForm.zone_id.options[8] = new Option("Genf", "111");
    theForm.zone_id.options[9] = new Option("Glarus", "112");
    theForm.zone_id.options[10] = new Option("Graubnden", "113");
    theForm.zone_id.options[11] = new Option("Jura", "114");
    theForm.zone_id.options[12] = new Option("Luzern", "115");
    theForm.zone_id.options[13] = new Option("Neuenburg", "116");
    theForm.zone_id.options[14] = new Option("Nidwalden", "117");
    theForm.zone_id.options[15] = new Option("Obwalden", "118");
    theForm.zone_id.options[16] = new Option("Schaffhausen", "120");
    theForm.zone_id.options[17] = new Option("Schwyz", "122");
    theForm.zone_id.options[18] = new Option("Solothurn", "121");
    theForm.zone_id.options[19] = new Option("St. Gallen", "119");
    theForm.zone_id.options[20] = new Option("Tessin", "124");
    theForm.zone_id.options[21] = new Option("Thurgau", "123");
    theForm.zone_id.options[22] = new Option("Uri", "125");
    theForm.zone_id.options[23] = new Option("Waadt", "126");
    theForm.zone_id.options[24] = new Option("Wallis", "127");
    theForm.zone_id.options[25] = new Option("Zrich", "129");
    theForm.zone_id.options[26] = new Option("Zug", "128");
    hideStateField(theForm);
  } else if (SelectedCountry == "223") {
    theForm.zone_id.options[0] = new Option("Please select ...", "");
    theForm.zone_id.options[1] = new Option("Alabama", "1");
    theForm.zone_id.options[2] = new Option("Alaska", "2");
    theForm.zone_id.options[3] = new Option("American Samoa", "3");
    theForm.zone_id.options[4] = new Option("Arizona", "4");
    theForm.zone_id.options[5] = new Option("Arkansas", "5");
    theForm.zone_id.options[6] = new Option("Armed Forces Africa", "6");
    theForm.zone_id.options[7] = new Option("Armed Forces Americas", "7");
    theForm.zone_id.options[8] = new Option("Armed Forces Canada", "8");
    theForm.zone_id.options[9] = new Option("Armed Forces Europe", "9");
    theForm.zone_id.options[10] = new Option("Armed Forces Middle East", "10");
    theForm.zone_id.options[11] = new Option("Armed Forces Pacific", "11");
    theForm.zone_id.options[12] = new Option("California", "12");
    theForm.zone_id.options[13] = new Option("Colorado", "13");
    theForm.zone_id.options[14] = new Option("Connecticut", "14");
    theForm.zone_id.options[15] = new Option("Delaware", "15");
    theForm.zone_id.options[16] = new Option("District of Columbia", "16");
    theForm.zone_id.options[17] = new Option("Federated States Of Micronesia", "17");
    theForm.zone_id.options[18] = new Option("Florida", "18");
    theForm.zone_id.options[19] = new Option("Georgia", "19");
    theForm.zone_id.options[20] = new Option("Guam", "20");
    theForm.zone_id.options[21] = new Option("Hawaii", "21");
    theForm.zone_id.options[22] = new Option("Idaho", "22");
    theForm.zone_id.options[23] = new Option("Illinois", "23");
    theForm.zone_id.options[24] = new Option("Indiana", "24");
    theForm.zone_id.options[25] = new Option("Iowa", "25");
    theForm.zone_id.options[26] = new Option("Kansas", "26");
    theForm.zone_id.options[27] = new Option("Kentucky", "27");
    theForm.zone_id.options[28] = new Option("Louisiana", "28");
    theForm.zone_id.options[29] = new Option("Maine", "29");
    theForm.zone_id.options[30] = new Option("Marshall Islands", "30");
    theForm.zone_id.options[31] = new Option("Maryland", "31");
    theForm.zone_id.options[32] = new Option("Massachusetts", "32");
    theForm.zone_id.options[33] = new Option("Michigan", "33");
    theForm.zone_id.options[34] = new Option("Minnesota", "34");
    theForm.zone_id.options[35] = new Option("Mississippi", "35");
    theForm.zone_id.options[36] = new Option("Missouri", "36");
    theForm.zone_id.options[37] = new Option("Montana", "37");
    theForm.zone_id.options[38] = new Option("Nebraska", "38");
    theForm.zone_id.options[39] = new Option("Nevada", "39");
    theForm.zone_id.options[40] = new Option("New Hampshire", "40");
    theForm.zone_id.options[41] = new Option("New Jersey", "41");
    theForm.zone_id.options[42] = new Option("New Mexico", "42");
    theForm.zone_id.options[43] = new Option("New York", "43");
    theForm.zone_id.options[44] = new Option("North Carolina", "44");
    theForm.zone_id.options[45] = new Option("North Dakota", "45");
    theForm.zone_id.options[46] = new Option("Northern Mariana Islands", "46");
    theForm.zone_id.options[47] = new Option("Ohio", "47");
    theForm.zone_id.options[48] = new Option("Oklahoma", "48");
    theForm.zone_id.options[49] = new Option("Oregon", "49");
    theForm.zone_id.options[50] = new Option("Pennsylvania", "51");
    theForm.zone_id.options[51] = new Option("Puerto Rico", "52");
    theForm.zone_id.options[52] = new Option("Rhode Island", "53");
    theForm.zone_id.options[53] = new Option("South Carolina", "54");
    theForm.zone_id.options[54] = new Option("South Dakota", "55");
    theForm.zone_id.options[55] = new Option("Tennessee", "56");
    theForm.zone_id.options[56] = new Option("Texas", "57");
    theForm.zone_id.options[57] = new Option("Utah", "58");
    theForm.zone_id.options[58] = new Option("Vermont", "59");
    theForm.zone_id.options[59] = new Option("Virgin Islands", "60");
    theForm.zone_id.options[60] = new Option("Virginia", "61");
    theForm.zone_id.options[61] = new Option("Washington", "62");
    theForm.zone_id.options[62] = new Option("West Virginia", "63");
    theForm.zone_id.options[63] = new Option("Wisconsin", "64");
    theForm.zone_id.options[64] = new Option("Wyoming", "65");
    hideStateField(theForm);
  } else {
    theForm.zone_id.options[0] = new Option("Type a choice below ...", "");
    showStateField(theForm);
  }

  // if we had a value before reset, set it again
  if (SelectedZone != "") theForm.elements["zone_id"].value = SelectedZone;

}

  function hideStateField(theForm) {
    theForm.state.disabled = true;
    theForm.state.className = 'hiddenField';
    theForm.state.setAttribute('className', 'hiddenField');
    document.getElementById("stateLabel").className = 'hiddenField';
    document.getElementById("stateLabel").setAttribute('className', 'hiddenField');
    document.getElementById("stText").className = 'hiddenField';
    document.getElementById("stText").setAttribute('className', 'hiddenField');
    document.getElementById("stBreak").className = 'hiddenField';
    document.getElementById("stBreak").setAttribute('className', 'hiddenField');
  }

  function showStateField(theForm) {
    theForm.state.disabled = false;
    theForm.state.className = 'inputLabel visibleField';
    theForm.state.setAttribute('className', 'visibleField');
    document.getElementById("stateLabel").className = 'inputLabel visibleField';
    document.getElementById("stateLabel").setAttribute('className', 'inputLabel visibleField');
    document.getElementById("stText").className = 'alert visibleField';
    document.getElementById("stText").setAttribute('className', 'alert visibleField');
    document.getElementById("stBreak").className = 'clearBoth visibleField';
    document.getElementById("stBreak").setAttribute('className', 'clearBoth visibleField');
  }

var form = "";
var submitted = false;
var error = false;
var error_message = "";

// 检查input控件
function check_input(field_name, field_size, message) {
  if (form.elements[field_name] && (form.elements[field_name].type != "hidden")) {
    var field_value = form.elements[field_name].value;

    if (field_value == '' || field_value.length < field_size) {
      error_message = error_message + "* " + message + "\n";
      error = true;
    }
  }
}

function check_radio(field_name, message) {
  var isChecked = false;

  if (form.elements[field_name] && (form.elements[field_name].type != "hidden")) {
    var radio = form.elements[field_name];

    for (var i=0; i<radio.length; i++) {
      if (radio[i].checked == true) {
        isChecked = true;
        break;
      }
    }

    if (isChecked == false) {
      error_message = error_message + "* " + message + "\n";
      error = true;
    }
  }
}

function check_select(field_name, field_default, message) {
  if (form.elements[field_name] && (form.elements[field_name].type != "hidden")) {
    var field_value = form.elements[field_name].value;

    if (field_value == field_default) {
      error_message = error_message + "* " + message + "\n";
      error = true;
    }
  }
}

function check_password(field_name_1, field_name_2, field_size, message_1, message_2) {
  if (form.elements[field_name_1] && (form.elements[field_name_1].type != "hidden")) {
    var password = form.elements[field_name_1].value;
    var confirmation = form.elements[field_name_2].value;

    if (password == '' || password.length < field_size) {
      error_message = error_message + "* " + message_1 + "\n";
      error = true;
    } else if (password != confirmation) {
      error_message = error_message + "* " + message_2 + "\n";
      error = true;
    }
  }
}

function check_password_new(field_name_1, field_name_2, field_name_3, field_size, message_1, message_2, message_3) {
  if (form.elements[field_name_1] && (form.elements[field_name_1].type != "hidden")) {
    var password_current = form.elements[field_name_1].value;
    var password_new = form.elements[field_name_2].value;
    var password_confirmation = form.elements[field_name_3].value;

    if (password_current == '' || password_current.length < field_size) {
      error_message = error_message + "* " + message_1 + "\n";
      error = true;
    } else if (password_new == '' || password_new.length < field_size) {
      error_message = error_message + "* " + message_2 + "\n";
      error = true;
    } else if (password_new != password_confirmation) {
      error_message = error_message + "* " + message_3 + "\n";
      error = true;
    }
  }
}

// 验证表单
function check_form(form_name) {
  if (submitted == true) {
    alert("This form has already been submitted. Please press OK and wait for this process to be completed.");
    return false;
  }

  error = false;
  form = form_name;
  error_message = "Errors have occurred during the processing of your form.\n\nPlease make the following corrections:\n\n";


  check_input("user.firstName", 2, "Is your first name correct? Our system requires a minimum of 2 characters. Please try again.");
  check_input("user.lastName", 2, "Is your last name correct? Our system requires a minimum of 2 characters. Please try again.");


  check_input("user.email", 6, "Is your email address correct? It should contain at least 6 characters. Please try again.");
  check_input("user.streetAddress", 5, "Your Street Address must contain a minimum of 5 characters.");
  check_input("user.postZipCode", 4, "Your Post/ZIP Code must contain a minimum of 4 characters.");
  check_input("user.city", 3, "Your City must contain a minimum of 3 characters.");

  /*
  if (!form.state.disabled && form.zone_id.value == "") check_input("user.stateProvince", 0, "Your State must contain a minimum of 0 characters.")
  else if (form.state.disabled) check_select("zone_id", "", "Please select a state from the States pull down menu.");
  */

  check_select("user.country", "", "You must select a country from the Countries pull down menu.");

  check_input("user.telephone", 3, "Your Telephone Number must contain a minimum of 3 characters.");

  check_password("user.password", "confirmation", 5, "Your Password must contain a minimum of 5 characters.", "The Password Confirmation must match your Password.");
  check_password_new("password_current", "user.password", "password_confirmation", 5, "Your Password must contain a minimum of 5 characters.", "Your new Password must contain a minimum of 5 characters.", "The Password Confirmation must match your new Password.");

  if (error == true) {
    alert(error_message);
    return false;
  } else {
    submitted = true;
    return true;
  }
} // 验证表单结束

// 验证登陆
function check_login(form_name) {
	form = form_name;
	if (submitted == true) {
		alert("This form has already been submitted. Please press OK and wait for this process to be completed.");
		return false;
    }
	
	error = false;
	error_message = "Errors have occurred during the processing of your form.\n\nPlease make the following corrections:\n\n";
	
	check_input("user.email", 6, "Is your email address correct? It should contain at least 6 characters. Please try again.");
	check_input("user.password", 5, "Your Password must contain a minimum of 5 characters.");
	
	if (error == true) {
    alert(error_message);
    	return false;
	} else {
		submitted = true;
		return true;
	}
} // 验证登陆结束

function session_win() {
	window.open("index.jsp?main_page=info_shopping_cart","info_shopping_cart","height=460,width=430,toolbar=no,statusbar=no,scrollbars=yes").focus();
}