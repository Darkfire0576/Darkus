---
title: /Amplifiers
layout: page
permalink: /Amplifiers
---

### What are custom amplifiers?

Custom aplifiers are variables that might hold integers and numbers or other non-boolean value types. These variables control things like prediction, FOV's, hitbox multipliers, movement multipliers, aim-assist sensitivities, and others.
It's important you understand how to use them:

```markdown
getgenv() <-- this is what we use to create variables that can be called from
any script executed by [Synapse X](https://x.synapse.to/).

1. `s_FOV = getgenv().SilentFOV = [Integer]`
2. `a_FOV = getgenv().AssistFOV = [Integer]`

"Integer" is just the number, so setting s_FOV to 0 would mean the silent FOV is set to 0.
Example:

`s_FOV = 0`

Obviously setting it to 0 would make the FOV too small for the engine to recognize.
After all 0 isn't greater then any positive integer, so the "Magnitude" will always
be greater then an FOV of 0, more on "Magnitude" later.
```


### How many are there?
To list all current "Custom" Amplifiers:
```markdown
1. Test
2. Test
3. Test
```
