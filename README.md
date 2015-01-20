# Tin Box Bakeshop Website

For now we'll host and create the site here, if it becomes larger or no longer able to be hosted via Github Pages we will move it. Until then, here's the initial web page location and repository.

## Libraries used

 + [jQuery](http://jquery.com)
 + [Bootstrap](http://getbootstrap.com)
 + [Font Awesome](http://fortawesome.github.io/Font-Awesome/)
 + [Compass Sass](http://compass-style.org)

   > Compass is our CSS pre-processor which requires usage of an installed tool to your system. Follow the instructions [here](http://compass-style.org/install/) on how to get it installed.

## Folder structure

The following is the current layout of the folder structure for this website:

```
.
+-- config.rb
+-- index.html
+-- css/
|   +-- scss/
|   |   +--  main.scss
|   +-- main.css
+-- js/
```

### File and Folder explanations

**index.html**

The main entry point for the main page of the website. Edit this and create and link other pages as needed. Additionally use Bootstrap classes as needed.

**css/**

This is the *compiled* CSS file loaded into the page. It should **NOT** be modified but be generated via Compass. You should be editing and creating all *.scss* files in the **scss/** sub folder and using Compass to create the CSS file via: `compass compile`

**js/**

This will contain any custom JavaScript files needed for the website.


