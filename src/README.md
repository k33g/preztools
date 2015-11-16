# PrezTools

## FrontEnd Dependencies

- [http://riotjs.com/](http://riotjs.com/) *v2.3.1*
- [http://www.basscss.com/](http://www.basscss.com/) *v7.0.4*
- [https://jquery.com/](https://jquery.com/) *v2.1.4*
- [https://github.com/chjj/marked](https://github.com/chjj/marked) *v0.3.4*
- [https://github.com/isagalaev/highlight.js](https://github.com/isagalaev/highlight.js)

## Samples

See:

- [Add a terminal to your page](/sample1.html)
- [Add a webcam to your page](/sample2.html)
- [Add a terminal and a webcam to your page](/sample2.html)


### Add a terminal to your page

When the terminal is loaded, the user is **`term`** and the password is **`term`**.
Once **`term`** user is connected, you're in a **tmux** session and in the docker working directory (**`/src`**). If you've added yaml **teamocil** configuration files to the working directory `/src`, you can load it with the command:

    teamocil --layout myprez.yml

Or, you can type `teamocil prez`, and you'll obtain a "split" session that "points" to `/src` directory.

This is the html and javascript souce code to add a **riot** terminal component (`<prez-terminal>`) to your html page:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>TOOLS.4.PREZ</title>
  <link rel="stylesheet" href="css/basscss.min.css">
</head>
<body> 

  <div class="clearfix">
    <h2 class="p2">Tools.4.Prez: Terminal</h2>
    <prez-terminal class="left p2 col-9" 
      width="100%" height="550px" 
      server="http://192.168.99.100:3000/">
    </prez-terminal>     
  </div>

  <script src="js/vendors/riot+compiler.min.js"></script>
  <!-- include the tags -->
  <script src="tags/prez-terminal.html" type="riot/tag"></script>
  <!-- mount the tags -->
  <script>
    riot.mount('prez-terminal');
  </script>

</body>
</html>
```

### Add a webcam to your page

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>TOOLS.4.PREZ</title>
  <link rel="stylesheet" href="css/basscss.min.css">
</head>

<body> 
  <div class="clearfix">
    <h2 class="p2">Tools.4.Prez: WebCam</h2>
    <prez-cam 
      class="left p2" 
      width="500px" height="500px">
    </prez-cam>  
  </div>
  
  <script src="js/vendors/riot+compiler.min.js"></script>
  <!-- include the tags -->
  <script src="tags/prez-cam.html" type="riot/tag"></script>
  <!-- mount the tags -->
  <script>
    riot.mount('prez-cam');
  </script>
</body>
</html>
```

### Add a terminal and a webcam to your page

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>TOOLS.4.PREZ</title>
  <link rel="stylesheet" href="css/basscss.min.css">
</head>

<body> 

  <div class="clearfix">
    <h2 class="p2">Tools.4.Prez: Terminal and WebCam</h2>
    <div class="col col-3">
      <prez-cam width="250px" height="250px"></prez-cam>
    </div>
    <div class="col col-9">
      <prez-terminal 
        width="100%" height="550px" 
        server="http://192.168.99.100:3000/">
      </prez-terminal>      
    </div>
  </div>

  <script src="js/vendors/riot+compiler.min.js"></script>
  <!-- include the tags -->
  <script src="tags/prez-terminal.html" type="riot/tag"></script>
  <script src="tags/prez-cam.html" type="riot/tag"></script>
  <!-- mount the tags -->
  <script>
    riot.mount('prez-terminal');
    riot.mount('prez-cam');
  </script>
  
</body>
</html>
```
