use <gridfinity-rebuilt-openscad/gridfinity-rebuilt-utility.scad>
union(){
    difference() {
        gridfinityInit(1, 1, height(4), 0, 42);
        for ( i=[1:360/4:360]) {
            rotate([0, 0, i])
            translate([10, 10, 0])
            cylinder(r=18.2/2, h=100, center=true);
        }
    }
    gridfinityBase(1, 1, 42, 0, 0, 1);
}