//
// ktBOX2
//
//

A = 1;
B = 1;



gap1 = 0.001;
gap2 = 0.002;
panel_thick = 1;






if( A )
{
//color( "Blue" )
{
difference()
{
    union()
    {
        //wall
        translate( [-1.5, -1.5, 11] )
        cube( [143, 43, panel_thick] );
        translate( [-1.5, -1.5, -1.5] )
        cube( [143, panel_thick, 13.5] );
        translate( [-1.5, 40.5, -1.5] )
        cube( [143, panel_thick, 13.5] );
        translate( [-1.5, -1.5, -1.5] )
        cube( [panel_thick, 43, 13.5] );
        translate( [140.5, -1.5, -1.5] )
        cube( [panel_thick, 43, 13.5] );
        translate( [109, -1.5, 0] )
        cube( [panel_thick, 43, 12] );
        
        //side
        translate( [-1.5, -1.5, 0] )
        cube( [9.27, 43, 12] );
        translate( [132.23, -1.5, 0] )
        cube( [9.27, 43, 12] );

        //inter
        translate( [-1.5+9.27, 2.22+2.54*7+2.54/2-(20+1)/2-panel_thick, 0+1] )
        cube( [109+1.5-9.27, panel_thick, 12-1] );
        translate( [114.45, -1.5, 0] )
        cube( [3.55, 8, 12] );
    }
    screw_hole( 2.5, 2.5 );
    screw_hole( 2.5, 40-2.5 );
    screw_hole( 140-2.5, 2.5 );
    screw_hole( 140-2.5, 40-2.5 );
    
    //left
    translate( [-1.5-gap1, 8, -1.5-gap1] )
    cube( [8.5, 24, 9] );
    translate( [3, 8, -1.5+gap1] )
    cube( [4, 24, 13.5] );
    
    //right
    translate( [133+gap1, 8, -1.5-gap1] )
    cube( [8.5, 24, 9] );
    translate( [133, 8, -1.5+gap1] )
    cube( [4, 24, 13.5] );
    
    //front
    translate( [2.69+2.54*3, -2, -1.5-gap1] )
    cube( [2.54*41, 11.769, 9] );
    translate( [140-23+1, -1.5-gap1, -1.5-gap1] )
    cube( [14+gap1, 3+gap2, 4.5] );
    
    //relay
    translate( [8.5-1.5+6+6/2, 2.22+2.54*7+2.54/2, 12] ){
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*1, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*2, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*3, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*4, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*5, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*6, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
        translate( [2.54*5*7, 0, 0] )
        cube( [5+0.5, 20+0.5, 3], center=true );
    }
}
}
}



if( B )
{
//color( "Black" )
{
    translate( [0, 50, 0] )
    {
        difference()
        {
            union()
            {
                //base
                translate( [-1.5, -1.5, 0] )
                cube( [143, 43, 4] );
            }
            rear_screw_hole( 2.5, 2.5 );
            rear_screw_hole( 2.5, 40-2.5 );
            rear_screw_hole( 140-2.5, 2.5 );
            rear_screw_hole( 140-2.5, 40-2.5 );
            
            //port
            translate( [2.69+2.54*1, 20, 2] )
            cube( [4, 22, 4+gap2], center=true );
            translate( [140-2.69-2.54*1, 20, 2] )
            cube( [4, 22, 4+gap2], center=true );
            
            translate( [2.69-1, 20, 2.5] )
            cube( [4, 22, 3+gap2], center=true );
            translate( [140-2.69+1, 20, 2.5] )
            cube( [4, 22, 3+gap2], center=true );
            
            //all
            translate( [70, 20, 2.5] )
            cube( [123, 40, 3+gap2], center=true );
        }
    }
}
}








module screw_hole( x, y, z=0 )
{
    hole_height = 5-1.5;
    translate( [x, y, z-gap1] )
    {
        cylinder( hole_height, 1.6, 1.6, $fn=30 );
        cylinder( 2.4+0.15, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
    }
}



module rear_screw_hole( x, y, z=0 )
{
    translate( [x, y, z] )
    {
        translate( [0, 0, 3] )
        cylinder( 5, 1.5, 1.5, $fn=30 );
        translate( [0, 0, 2.2-gap1] )
        cylinder( 0.8+gap2, 1.5+0.7, 1.5, $fn=30 );
        translate( [0, 0, -gap1] )
        cylinder( 2.2+gap1, 3.25+0.4, 3.25-0.6, $fn=30 );
    }
}
