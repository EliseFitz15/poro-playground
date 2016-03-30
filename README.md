#Intro to jQuery Library

jQuery is a JavaScript library. jQuery is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.

There is also another extension library called jQuery UI that provides some nice effects and methods for enhanced user experiences.

## Where to Start: New Learning Center!
jQuery is a very popularly used library and beyond documentation the authors of jQuery have launched a (beta) Learning Center that approached documentation in beginner friendly way.

####Cautionary Tale
Everything you can do in jQuery is written with regular ([sometimes jokingly called "vanilla"](http://vanilla-js.com/)) JavaScript. Therefore, understanding the fundamentals of JavaScript as a language (its constructs and syntax, its orientation to particular programming concepts) is *important* (it's not just us telling you - [the learning docs even say so!](http://learn.jquery.com/about-jquery/)) in order to effectively use jQuery. You want to be careful not to use jQuery as a crutch to avoid engaging with the internals of JavaScript and instead use it as a tool to expedite your work.

## How to set up in a Rails

`rails new` and done!

Rails comes with jQuery included as well as jQueryUI.

## In Sinatra

If you are adding it in a Sinarta app, you can check out this [repository](https://github.com/mlg-/space-tacos) for directions.

There are two key ways:
  - download from the [documentation.](http://api.jquery.com/)
  - include link from [Google Hosted Libraries](https://developers.google.com/speed/libraries/)

## Manipulating the DOM

This is the app we will be manipulating: https://poro-playground.herokuapp.com

### Note on Syntax
The `$` is the same as including `jQuery` before the selector. For example, `$('h2')` is the same as `jQuery('h2')` the `$` here denotes the library. jQuery being among the most popular libraries it's safe to include the dollar sign in all referees. But be aware that other libraries may also use the `$` which could through you errors down the road or a namespace collision, at which point you should refer to the jQuery [documentation on this topic](http://learn.jquery.com/using-jquery-core/avoid-conflicts-other-libraries/).


## First grab the jQuery object
There are a number of ways to "grab" selectors from the DOM:    
  - By id `$("#poro-land");`
  - By class `$(".poro-panel");`
  - By element `$("h1");`
  - Combo `$("#poro-panel img");`

#### Assigning a jQuery object to a variable
You can assign any element you select with jQuery to a variable and then call jQuery methods on it.

```js
var poroLand = $('#poro-land')
poroPanel.hide();
```
#### Pro-tip: Don't mix with Vanilla JS

When "grabbing" elements from the DOM with jQuery we are returned jQuery objects. We can call jQuery effects and events on jQuery objects but not if we "grab" them with JS.

## Then have fun with that object
To get some inspiration and decide what to do once you grab the item or items you want from the page, check out the [jQuery API documentation](http://api.jquery.com/).

### Hiding an element

`$("#poro-land").hide();`

[`hide()` documentation](http://api.jquery.com/hide/)

### Showing an element

`$("#poro-land").show();`

[`show()` documentation](http://api.jquery.com/show/)

### GET FANCY! FADE OUT!

`$("#poro-land").fadeOut();`

[`fadeOut()` documentation](http://api.jquery.com/fadeOut/)

### Changing the styling of element(s)

`$("h1").css("color", "teal");`

[`css()` documentation](http://api.jquery.com/css/)

or maybe:
```
$(".poro-panel").addClass("feature");
```

[`addClass()` documentation](http://api.jquery.com/addclass/)

### Remove an element and then append it somewhere else

```
var poroPic = $('#poro-land').remove();
$('.poro-list').append(poroPic);
```

[`remove()` documentation](http://api.jquery.com/remove/)

[`append()` documentation](http://api.jquery.com/append/)

*Challenge:* how would we add it back?

## How to use within Rails
Good practice to add files for different features but that's where you can run into some issues. For the app size you guys are using it's good to keep in one file for now.
  - Let's look at our Rails set up
  - We have a `application.js` linked in our layout

### PRO-TIP ALERT: `$(document).ready();`
Loading your JavaScript at the bottom of the page will help you avoid trying to manipulate elements that aren't yet loaded onto the page, but `$(document).ready();` is an insurance policy against this problem. It's particularly useful for images or other content which may load after a js file at the end of the `<body>` or in the `<footer>`.

It's best to only use one or fewer `$(document).ready();` in your js file as you get started. While technically you *can* use more than one, it is slightly slower (an optimization concern), more verbose (a style/readability concern) and arguably harder to debug (a developer experience concern). It also gets you into the habit of organizing your code into discrete functions.

```js
function someFunction(){
  //do a thing;
};

function someOtherFunction(){
  //do some other thing;
};

$(document).ready(function(){
  //someFunction();
  //someOtherFunction();
});
```
## Let's Try it Out!
Let's add these features:

####Toggle the form

```js
$('.poro-form h3').click(function() {
  $('#new_poro').toggle();
});
```
