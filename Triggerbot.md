---
title: /Triggerbot
layout: page
permalink: /Triggerbot
---
# Warning: This page is a little outdated, information may not be extremely reliable.


### Hexus triggerbot

This triggerbot is unique, it uses the [Drawing Library](https://x.synapse.to/docs/reference/drawing_lib.html) from [Synapse X](https://x.synapse.to) to create a rectangular FOV and checks if the mouse is under the radius of the rectangle.

```markdown
`math.sqrt((Square.Size.X/2)x(Square.Size.X/2)x2)`

the above is the calculation for the radius of a 2D, 4 sided object.
Squares and rectangles are 2D, 4 sided objects.

`if (math.sqrt((Square.Size.X/2)x(Square.Size.X/2)x2) > Magnitude) then
    ???
end`

the code above is stating if the [Radius] of the [FOV] is greater then
the magnitude between my cursor and the prediction point then it runs the "Mystery code" .
```
