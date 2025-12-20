$fn = 100;

//lo que está en azul está para imprimir
module madera(){
    color("green"){
    cube([230,700,5],center=true);
    }
}
//
module tornillo(){
    //es un cilindro, pero en la vida real un tornillo
    translate([50,280,0]) color("grey") cylinder(h =200,r=3.5);
}
//


module cortadora(){
    color("blue") translate([-217,118,25]) import("archivos usados/Cortador_Botellas_Cuerpo_Remixed.stl");
      
  }
  
//
module soporte_cuchilla(){
    //rueditas que sostienen a la cuchilla, son 4
      
      //translate([-209,197,-37.5])color("blue")  import("archivos usados/Spacer_6mm.stl");
      
      
      //translate([-245,197,-37.5])color("blue")import("archivos usados/Spacer_6mm.stl");
     
   //
      translate([-209,197,-29])color("blue")  import("archivos usados/Spacer_8|mm.stl");
     
     //
      translate([-245,197,-29])color("blue")import("archivos usados/Spacer_8mm.stl");
      //
      
      //translate([20.5,265,40])rotate([0,180,0])color("#64C1F5")import("archivos usados/rosca.3mf");
  //
      
      //translate([-15,265,40])rotate([0,180,0])color("#64C1F5")import("archivos usados/rosca.3mf");
      
  }
//
module tapa_botella(){
    
    translate([50,280,190])color("blue"){{
        
        //parte donde se sostiene la botella
        difference(){
            cylinder(h = 30, d=35);
            cylinder(h = 30, d=28);
        }
        //decoracion, la tapita de arriba
        difference(){
            translate([0,0,30])cylinder(h=0.0001, d=45);
            translate([0,0,30]) cylinder(h=0.0001,d=28);
        }
    }}
}

//
/*
module pico_caliente(){
      difference(){
      translate([3,120,17])color("gold")cube([30,20,30],center=true);
      translate([3,150,17])rotate([90,0,0])cylinder(h=50,r=4);
      }
      // Pico
{translate([-7,110,7])rotate([90,0,0])scale([2,2,2])color("gold")polyhedron(
    points=[
        [0,0,0],   // base esquina 1
        [10,0,0],  // base esquina 2
        [10,10,0], // base esquina 3
        [0,10,0],  // base esquina 4
        [5,5,10]   // vértice superior
    ],
    faces=[
        [0,1,2,3], // base
        [0,1,4],   // caras
        [1,2,4],
        [2,3,4],
        [3,0,4]
    ]
);
}     
  }

  
//  
     
module sostenes_parte_medio(){
    
    //un apoyo
    color("blue")translate([-81,-150,0])rotate([90,0,90])import("archivos usados/01 - Top Parts/recreator3d-part-4a-tensioning-rod.stl");
    
    //espajamos el otro
    mirror([1,0,0]) 
    color("blue")translate([-81,-150,0])rotate([90,0,90])
    import("archivos usados/01 - Top Parts/recreator3d-part-4a-tensioning-rod.stl");
}
//
module rodillo(){

translate([-125,-178,42])color("blue")import ("archivos usados/01 - Top Parts/recreator3d-part-4f-tensioning-rod-printable.stl");    
    }
//
    
module tamborcito_giratorio(){
    //funciona como guia para poner el cable en el medio
    
    translate([-13,-86,204])color("blue")rotate([0,90,0])
    import("archivos usados/01 - Top Parts/recreator3d-part-4c-guide.stl");
    }
 //


module lugar_engranajes(){
    
    color("blue")rotate([90,0,90])translate([-390,-217,-110]) import ("archivos usados/01 - Top Parts/recreator3d-part-5b-back-motor-mount.stl");
    }
   
*/
//madera();
//tornillo();
//tapa_botella();
cortadora();
soporte_cuchilla();
//pico_caliente();
//sostenes_parte_medio();
//rodillo();
//tamborcito_giratorio();
//lugar_engranajes();