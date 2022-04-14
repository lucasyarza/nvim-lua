local util = require('colors.util')

local colors = {
  none = 'NONE',
  fg = util.get_colors_from_colorscheme('GruvboxFg0'), --#fbf1c7
  fg1 = util.get_colors_from_colorscheme('GruvboxFg1'), --#ebdbb2
  fg2 = util.get_colors_from_colorscheme('GruvboxFg2'), --#d5c4a1
  fg3 = util.get_colors_from_colorscheme('GruvboxFg3'), --#bdae93
  fg4 = util.get_colors_from_colorscheme('GruvboxFg4'), --#a89984
  gray = util.get_colors_from_colorscheme('GruvboxGray'), --#928374
  bg = util.get_colors_from_colorscheme('GruvboxBg0'), --#282828
  bg1 = util.get_colors_from_colorscheme('GruvboxBg1'), --#3c3836
  bg2 = util.get_colors_from_colorscheme('GruvboxBg2'), --#504945
  bg3 = util.get_colors_from_colorscheme('GruvboxBg3'), --#665c54
  bg4 = util.get_colors_from_colorscheme('GruvboxBg4'), --#7c6f64
  red = util.get_colors_from_colorscheme('GruvboxRed'), --#fb4934
  green = util.get_colors_from_colorscheme('GruvboxGreen'), --#b8bb26
  yellow = util.get_colors_from_colorscheme('GruvboxYellow'), --#fabd2f
  blue = util.get_colors_from_colorscheme('GruvboxBlue'), --#83a598
  purple = util.get_colors_from_colorscheme('GruvboxPurple'), --#d3869b
  cyan = util.get_colors_from_colorscheme('GruvboxAqua'), --#8ec07c
  orange = util.get_colors_from_colorscheme('GruvboxOrange'), --#fe8019
  signcolumn = util.get_colors_from_colorscheme('SignColumn'), --#3c3836
}

return colors
