// controlAddIn is the id for control add in in BC
var d1 = document.getElementById('controlAddIn');

d1.insertAdjacentHTML('beforeend', '<img src="' + Microsoft.Dynamics.NAV.GetImageResource('src/images/logo.png') +'"><br/><textarea id="multilineInput" style="overflow: auto;" rows="5" cols="250"></textarea>');
