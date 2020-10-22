/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//Get the button element
        var btn = document.getElementById('bold');

        //Get paragraph element
        var para = document.getElementById('body');

        //Define an click event listener on button
        btn.addEventListener('click', function() {
        	//Change the font weight style to 700
        	para.style.fontWeight = '700';
        });