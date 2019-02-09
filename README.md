# Bootstruc - Frontend File Architecture

Generate the front-end folder structure for your project with this simple script. This includes a variant of the 7-1 style folder layout for Sass files as well as assets and scripts. Automatically generated are a webpack config file as well as some plugin files. Remove or replace certain files as you see fit. 

Read more about the [7-1 Pattern](https://sass-guidelin.es/#the-7-1-pattern) here.


### Use
----------
In the command line:
```
# Execute script
/path/to/yourscript.sh

# Execute in current directory
./yourscript.sh
```

If you don't want to use the command line you can simply double click to execute the file, this will build the *`src`* folder in the current directory. 

## Preview of structure for styling
Each folder has its own *"main"* **.scss** folder to import into the `main.scss`. This helps reduce cluttering with dozens of imports. 
```
styles/
|
|– 0-plugins/
|   |– _0-plugins.scss    # Import files below here.
|   |– _bootstrap.scss    # Bootstrap
|   |– _jquery-ui.scss    # jQuery UI
|   …                     # Etc.
|
|– 1-helpers/
|   |– _1-helpers.scss    # Import files below here.
|   |– _variables.scss    # Sass Variables
|   |– _functions.scss    # Sass Functions
|   |– _mixins.scss       # Sass Mixins
|
|– 2-base/
|   |– _2-base.scss       # Import files below here.
|   |– _global.scss       # Global styles
|   |– _reset.scss        # Reset/normalize
|   |– _typography.scss   # Typography rules
|   …                     # Etc.
|
|– 3-layout/
|   |– _3-layout.scss     # Import files below here.
|   |– _navigation.scss   # Navigation
|   |– _grid.scss         # Grid system
|   |– _header.scss       # Header
|   |– _footer.scss       # Footer
|   |– _sidebar.scss      # Sidebar
|   |– _forms.scss        # Forms
|   …                     # Etc.
|
|– 4-components/
|   |– _4-components.scss # Import files below here.
|   |– _buttons.scss      # Buttons
|   |– _carousel.scss     # Carousel
|   |– _cover.scss        # Cover
|   |– _dropdown.scss     # Dropdown
|   …                     # Etc.
|
|– 5-pages/
|   |– _5-pages.scss      # Import files below here.
|   |– _home.scss         # Home specific styles
|   |– _contact.scss      # Contact specific styles
|   …                     # Etc.
|
`– main.scss              # Main Sass file
```
