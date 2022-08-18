---
title: /SilentAim
layout: page
permalink: /SilentAim
---
# Warning: This page is a little outdated, information may not be extremely reliable. [DISCONTINUED]


### Hexus silent-aim

This silent-aim uses 2 FOV's, one surrounding the prediction point and one surrounding the cursor, we'll call the cursor FOV ["global FOV"] and the prediction FOV ["local FOV"].

The [local FOV] sprouts from the prediction point, thats its root. The root for the [global FOV] is our cursor. 

If the [local FOV's] greater then the magnitude of the distance between our cursor and the prediction point then it fires the code you desire.

```markdown
`local Magnitude = ((MousePosition - PredictionPoint).Magnitude)`

the above is the calculation for the magnitude of the two positions.

`if ([local FOV] > Magnitude) then
    ???
end`

the code above is stating if the [FOV] is greater then the magnitude of my cursor 
and the prediction point then it runs the code below it .
```
