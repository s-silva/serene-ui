## Serene UI

A dark minimal UI theme based on:

  * [`apex-adapt-dark-ui`](https://github.com/swivelgames/apex-adapt-dark-ui)
  * [`apex-ui`](https://atom.io/themes/apex-ui)

#### This is a fork of [`apex-adapt-dark-ui`](https://github.com/swivelgames/apex-adapt-dark-ui) by [Swivelgames](https://github.com/swivelgames)

This theme works the best on [Fira Code](https://github.com/tonsky/FiraCode) font and [Gloom syntax theme](https://atom.io/themes/gloom).

### Install

Install this theme using __Settings > Install__. Select the "Themes" toggle and search for "serene-ui". From there, go to __Settings > Themes__ section and selecting "Apex Adapt Dark" from the __UI Themes__ drop-down menu.

For the atom package page, visit: [https://atom.io/themes/serene-ui](https://atom.io/themes/serene-ui)

![Serene UI Preview](https://raw.githubusercontent.com/s-silva/serene-ui/master/preview.png)

### Settings

In the theme settings you can:

- Change the __Font Size__ to scale the whole UI up or down.
- Choose between 3 __Tab Sizing__ modes.
- Hide the  __dock buttons__.

To make changes, go to `Settings > Themes > Apex Adapt Dark UI > Settings` or the cog icon next to the theme picker.


### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use DevTools to find the right selectors):

```css
.theme-serene-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```


### FAQ

__Why do the colors change when I switch Syntax themes?__
This UI theme uses the same background color as the chosen syntax theme. If that syntax theme has a light background color, it only uses its hue, but otherwise stays dark. This lets you use dark-light combos.
