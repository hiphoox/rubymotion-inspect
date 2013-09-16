# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:speaker_screen) do
  style :root,
    backgroundColor: '#f0f0f0'.uicolor,
    constraints: [:full]

  style :header_view,
    constraints: [
      :top_left,
      :full_width,
      constrain_height(73)
    ]

  style :header_view_iOS7,
    constraints: [
      constrain_top(64),
      :full_width,
      constrain_height(73)
    ]

  style :table_view,
    separatorStyle: UITableViewCellSeparatorStyleSingleLine,
    separatorColor: '#c6c6c6'.uicolor,
    constraints: [
      :full_width,
      constrain_below(:header_view).minus(10),
      constrain(:height).equals(:superview, :height).minus(63)
    ]

  style :table_view_iOS7,
    separatorStyle: UITableViewCellSeparatorStyleSingleLine,
    separatorColor: '#c6c6c6'.uicolor,
    constraints: [
      :full_width,
      constrain_below(:header_view_iOS7).minus(72),
      constrain(:height).equals(:superview, :height).minus(63)
    ]

  style :speakers_table_view,
    separatorStyle: UITableViewCellSeparatorStyleSingleLine,
    separatorColor: '#c6c6c6'.uicolor,
    constraints: [
      :full_width,
      :top_left,
      :full_height,
    ]

  style :table_view_background,
    backgroundColor: '#f0f0f0'.uicolor
end
