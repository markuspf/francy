#############################################################################
##
#W  init.g                      FRANCY library                 Manuel Martins
##
#Y  Copyright (C) 2016 Manuel Martins
##

#############################################################################
##
#O  GraphicCanvas( <title>, <width>, <height> )
##
## GraphicCanvas represents a base element to draw graphics on. Inspired by
## the HTML <canvas> element which is used to draw graphics, in runtime,
## via JavaScript.
##
DeclareOperation( "GraphicCanvas", [ IsString, IsInt, IsInt ] );

#############################################################################
##
#O  GraphicObject( <category representation>, <canvas>, <defaults> )
##
## Every object to draw will be a subclass of this object. This will allow
## all the objects to contain the same base information.
##
DeclareOperation( "GraphicObject", [ IsObject, IsRecord, IsRecord ] );

#############################################################################
##
#O  Box( <canvas>, <x>, <y>, <w>, <h> )
#O  Box( <canvas>, <x>, <y>, <w>, <h>, <defaults> )
##
## Creates a new graphic object,  namely a filled black  box, in the graphic
##  canvas <canvas> and  returns a {\GAP} record describing  this  object.  The
##  four   corners     of  the    box    are   $(<x>,<y>)$,  $(<x>+<w>,<y>)$,
##  $(<x>+<w>,<y>+<h>)$, and $(<x>,<y>+<h>)$.
##
##  Note that the box is $<w>+1$ pixel wide and $<h>+1$ pixels high.
##
DeclareOperation( "Box", [ IsRecord, IsInt, IsInt, IsInt, IsInt, IsRecord ] );


#############################################################################
##
#O  Circle( <sheet>, <x>, <y>, <r> )
#O  Circle( <sheet>, <x>, <y>, <r>, <defaults> )
##
##  creates a new graphic object, namely a black circle, in the graphic sheet
##  <sheet> and returns a {\GAP} record describing this object. The center
##  of the circle is $(<x>,<y>)$ and the radius is $<r>$.
##
DeclareOperation( "Circle", [ IsRecord, IsInt, IsInt, IsInt, IsRecord ] );

#############################################################################
##
#O  Link( <object>, <object>, <defaults> )
#O  Link( [<object>], [<object>], <defaults> )
##
## Creates a link between the objects. This allows to produce graphics that
## represent connected objects.
##
DeclareOperation( "LinkGraphicObjects", [ IsRecord, IsRecord ] );

#############################################################################
##
#O  Group( [<object>], <defaults> )
##
## Creates a group of objects that will lay within the boundaries of this group
##
DeclareOperation( "GroupGraphicObjects", [ IsList ] );