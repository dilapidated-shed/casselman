# From mathematical drawing to physical motion

This catalog is not limited to PostScript. G-code, plotter languages, and small robot drawing programs expose the same underlying questions at a different layer: where is the current point, is the tool engaged, what coordinate system are we in, and what geometric path should be followed?

## Useful upstreams

### gcodeplot

https://github.com/arpruss/gcodeplot

Treats a 3-axis G-code machine as a pen plotter. The Z axis controls pen height, so the conceptual bridge from `moveto`/`lineto` to rapid move / lower tool / feed move is unusually direct.

### GRBL

https://github.com/grbl/grbl

A real embedded G-code parser and motion controller. Useful for seeing what the clean geometric language turns into when modal state, arcs, coordinate systems, feed rates, spindle/coolant state, and physical motion planning become real.

### svg2gcode

https://github.com/schollz/svg2gcode

A compact path-conversion specimen: SVG geometry becomes pen-plotter G-code.

### BrachioGraph

https://github.com/evildmp/BrachioGraph

Not primarily G-code, but especially useful for this corpus because it exposes XY geometry, inverse geometry from XY coordinates to servo angles, and explicit pen-up / pen-down operations.

### gcode-toolpath

https://github.com/cncjs/gcode-toolpath

Useful for studying the state hidden behind terse G-code: position, motion mode, coordinate plane, units, absolute/relative distance mode, feed mode, spindle, coolant, and tool.

### LinuxCNC

https://github.com/LinuxCNC/linuxcnc

Large reference implementation for RS274/NGC interpretation, validation, and machine semantics. Not a first rewrite target; useful as the mature boundary case.

## Language-design comparison

A useful comparison table for future Idriç work is:

| drawing world | operation/state |
| --- | --- |
| PostScript | current point, path, `moveto`, `lineto`, `curveto`, `stroke`, transform |
| MetaPost | constrained points, path equations, interpolation, transforms, `draw`, `fill` |
| plotter | pen up, move, pen down, trace path |
| laser | laser off, move, power/on, trace path |
| mill/router | retract, rapid move, plunge, feed path, retract; spindle/feed/tool state |
| G-code | modal coordinate/motion state plus `G0`, `G1`, `G2`, `G3`, etc. |

The point is not that a CNC mill literally is a pen plotter. The approximation is useful because the geometry remains recognizable while additional physically meaningful state appears one piece at a time.

## Type pressure

These examples are also good tests for avoiding weak `String`/`Int`/`Float` APIs. Distinct values include:

- length and coordinate
- angle
- feed rate
- spindle rate
- laser power
- tool identifier
- cutting depth
- coordinate plane
- absolute versus relative positioning
- rapid versus cutting motion
- engaged/retracted tool state

A language should not need to pretend those are all the same kind of number merely because their machine encoding eventually contains numbers.
