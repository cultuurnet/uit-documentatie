---
---

# Cropping images 
## Context
When adding (resize-)parameters to images in UiTdatabank, you will first be redirected to a "parameter mapping" vhost, which will resemble the old image resizing parameters to parameters that can be processed by imgix (parameters documented at https://docs.imgix.com/apis/url).
This vhost contains a mapping table that converts the old parameters to imgix parameters and returns a redirect to imgix. Mapping is done using the following table.

## Mapping table
| Original parameters | Imgix parameters | Description | 
| --- | --- | --- | 
| bgcolor=123456 | bg=123456 | Hex code (6-char). Sets the background/whitespace color. |
| crop=auto | fit=crop&crop=entropy | Crop the image to the size specified by width and height. Centers and minimally crops to preserve aspect ratio. |
| format=png | fm=png | Change format. |
| flip=h | flip=h | Flips the image (horizontally) after resizing. |
| flip=v | flip=v | Flips the image (vertically) after resizing. |
| flip=both | flip=hv | Flips the image after resizing. |
| height=200 | h=200&fit=fill&bg=FFFFFF | Force the height to certain dimensions. Whitespace will be added if the aspect ratio is different. |
| maxheight=200 | h=200 | Fit the image within the specified bounds. (Most often used) |
| maxwidth=300 | w=300 | Fit the image within the specified bounds. (Most often used) |
| maxwidth=500&maxheight=400 | w=500&h=400 | Fit the image within the specified bounds. (Most often used) |
| paddingWidth=5 | pad=5&bg=FFFFFF | paddingColor defaults to bgcolor, which defaults to white. |
| rotate=30 | rot=30 | Rotate the image. |
| stretch=fill | fit=scale | Stretches the image to width and height if both are specified. This is the only way to lose aspect ratio. |
| width=300 | w=300&fit=fill&bg=FFFFFF | Force the width to certain dimensions. Whitespace will be added if the aspect ratio is different. |
| width=500&height=400 | w=500&h=400&fit=fill&bg=FFFFFF | Force the width and/or height to certain dimensions. Whitespace will be added if the aspect ratio is different. |
| width=500&height=400&crop=auto | w=500&h=400&fit=crop&crop=entropy | Force the width and/or height to certain dimensions. Whitespace will be added if the aspect ratio is different. |
