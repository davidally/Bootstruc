mkdir -p src/{assets/{images,videos},scripts/vendors,styles/{0-plugins,1-helpers,2-base,3-layout,4-components,5-pages}} && cd src && touch index.html index.js .gitignore && cd styles && touch 0-plugins/_0-plugins.scss 1-helpers/{_1-helpers,_functions,_mixins,_variables}.scss 2-base/{_2-base,_global,_reset,_typography}.scss 3-layout/{_3-layout,_content,_footer,_grid,_navigation}.scss 4-components/{_4-components,_buttons,_image,_scrollbar,_video}.scss 5-pages/{_5-pages,_caseStudy,_contact,_home}.scss main.scss && echo "
@import '0-plugins/0-plugins';
@import '1-helpers/1-helpers';
@import '2-base/2-base';
@import '3-layout/3-layout';
@import '4-components/4-components';
@import '5-pages/5-pages';
" >>main.scss && cd ../scripts && touch main.js && cd ../..
