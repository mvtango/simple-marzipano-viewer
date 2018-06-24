# 360-Panorama-Viewer

Based on [Marzipano](http://www.marzipano.net/).


## The HTML app

Resides in index.html

URL Query Parameters:

    - settings= - a .js file with a number of settings for the view, see `demo.js`.
    - id= - the directory name for the tiles, prefixed by `settings.pathPrefix` in the settins .js.


URL Hash parameters:

    `-12:20:10:1000` - yaw (direction on horizontal plane) : pitch (vertical elevation) : field-of-view  (all in degrees) : transition time (milliseconds)

Several of these coordinates can be concatenated with `;` - this makes the viewer pan / zoom from one to another.


## How to prepare the images

They have to be tiled. You can use the free online tool at [http://www.marzipano.net/tool/](http://www.marzipano.net/tool/), and download
the tiles as a .zip. 

I use [krpano](https://krpano.com/buy/),  it's paid. See sample config in `contrib/krpano-to-marzipano.config`. 
The config has to match the tiles in the .js file referenced in the `settings` parameter of the app.

### Where to put the tiles. 

The path to the tiles is calculated relative to the directory of the `index.html`. Tiles are expected at `settings.pathPrefix` + `id`.




