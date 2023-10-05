use <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>

// Height paramater
height = 3;

union(){
    difference() {
        gridfinityInit(1, 1, height(height), 0, 42);
        for ( i=[1:360/4:360]) {
            rotate([0, 0, i])
            translate([10, 10, 0])
            cylinder(r=18.6/2, h=100, center=true);
        }
    }
    gridfinityBase(1, 1, 42, 0, 0, 1);
}