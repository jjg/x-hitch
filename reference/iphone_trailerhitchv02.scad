include <iphone4_model.scad>;
wallthickness=8;

assembled=false;

module boltholes(){
union (){
translate ([0,0,6]) cylinder (20,2,2);//hole
translate ([60,0,9]) cylinder (20,2,2);//hole
translate([0,0,7]) cylinder (5,5,5);//head
translate ([60,0,7]) cylinder (5,5,5);//head
}}

module hitch_mount(){
difference(){
union (){
roundedRect([48	, 48,  80], 15);//outer hitch wall
translate ([0,0,0]) rotate ([0,0,90]) roundedRect ([45,75,6],3); //bolt plate mount
}
union (){
translate ([0,0,-1]) roundedRect([48-wallthickness	, 48-wallthickness,  85], 15);//inner hitch wall
translate ([-25,0,60,]) rotate ([0,90,0])cylinder (50,10,10);//hitch pin hole
translate ([0,-25,60,]) rotate ([0,90,90])cylinder (50,10,10);//other hitch pin hole
translate ([-30,10,-15]) boltholes(); //boltholes for mounting
translate ([-30,-10,-15])  boltholes(); //bolt holes for mounting
}
}}




hitch_mount();

/*
module iphoneholder(){

  difference(){
    union(){
      translate ([0,0,0])    scale ([1.05,1.1,1.1]) iphone4(
      show_connector=false,
      show_buttons=false,
      show_front=false,
      show_flush=false,
      show_misc_side=false);
      translate ([0,0,-5])    scale ([1.05,1.1,1.1]) iphone4(
      show_connector=false,
      show_buttons=false,
      show_front=false,
      show_flush=false,
      show_misc_side=false);
    }
    union() //add shapes for cutaway
    {
      //actual phone to cut out
      translate([0,0,-1]) scale ([1.02,1.05,1.05])iphone4(
      show_connector=false,
      show_buttons=false,
      show_front=false,
      show_flush=false,
      show_misc_side=false);
      translate([0,0,2]) scale ([1.02,1.05,1.05])iphone4(
      show_connector=false,
      show_buttons=false,
      show_front=false,
      show_flush=false,
      show_misc_side=false);
      translate ([5,0,5]) rotate ([90,0,90]) roundedRect ([28,6,60],3); //dock connector
	  translate ([30,10,8]) rotate ([0,180,0]) boltholes(); //boltholes for mounting
      translate ([30,-10,8])  rotate ([0,180,0]) boltholes(); //bolt holes for mounting	
translate ([-22,-29,-3]) cube ([45,60,4]);
translate ([-52,-29,-3]) cube ([15,60,4]);
translate ([38,-29,-3]) cube ([15,60,4]);
translate ([-50,-29,-3]) cube ([90,12,4]);
translate ([-50,19,-3]) cube ([90,12,4]);
    }
}}

if (assembled){
translate ([0,0,11]) rotate([180,0,0]) iphoneholder();
translate ([0,0,16])hitch_mount();
}

if (!assembled){ //view for export to stl 
translate ([0,0,5]) rotate ([0,0,0]) iphoneholder();
translate ([0,60,0]) hitch_mount();
}
*/