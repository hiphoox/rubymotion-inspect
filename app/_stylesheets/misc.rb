# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:location) do
  style :root,
    backgroundColor: UIColor.whiteColor

  style :map,
    constraints: [:top, :full_width]

  style :arrow,
    constraints: [:full_width, constrain_height(18), constrain_below(:map).minus(18)],
    image: 'speaker-arrow.png'.uiimage

  style :open_button,
    constraints: [:center_x],
    title: 'Open in Map'

  style :content,
    constraints: [constrain_below(:arrow), :full_width, constrain(:height).equals(:root, :height).minus(100)],
    backgroundColor: UIColor.whiteColor

  style :title,
    constraints: [constrain_width(220), :top, :center_x, constrain_height(25)],
    font: 'Cassannet Regular'.uifont(20),
    textAlignment: UITextAlignmentCenter,
    numberOfLines: 0,
    lineHeight: 20,
    text: 'Fairmont Mayakobá / Playa del Carmen / Quintana Roo'

  style :dots,
    constraints: [constrain_width(220), constrain_below(:title, 10), :center_x, constrain_height(2)],
    image: 'dots.png'.uiimage

  style :description,
    constraints: [constrain_width(220), constrain_below(:dots, 10), :center_x, constrain_height(224)],
    font: 'Arvo'.uifont(11),
    numberOfLines: 0,
    text: "UBICACIÓN PRIVILEGIADA PARA APRENDER, CONVIVIR Y RELAJARSE.\n\n El resort Fairmont Mayakoba, Riviera Maya está ubicado al sur del aeropuerto de Cancún en Playa del Carmen. Es un destino de lujo ideal desde el cual se pueden descubrir todos los sitios históricos de los mayas, además de parques ecológicos como: Xelha, Xcaret, Tulúm, Coba, Sian Ka'an y una de las nuevas Siete maravillas del mundo, Chichén Itzá.  Ver video de Sian Ka'an."

  style :title2,
    constraints: [constrain_width(220), :top, :center_x, constrain_height(25)],
    font: 'Cassannet Regular'.uifont(20),
    textAlignment: UITextAlignmentCenter,
    numberOfLines: 0,
    lineHeight: 20,
    text: "Délirium Café"

  style :dots2,
    constraints: [constrain_width(220), constrain_below(:title2, 10), :center_x, constrain_height(2)],
    image: 'dots.png'.uiimage

  style :description2,
    constraints: [constrain_width(220), constrain_below(:dots2, 10), :center_x, constrain_height(235)],
    font: 'Arvo'.uifont(11),
    numberOfLines: 0,
    text: "On Friday night you are invited to an awesome after-party at the Délirium Café.\n\nThe Délirium is known for its long beer list, standing at 2,004 different brands in January 2004 as recorded in the The Guinness Book of Records.\n\nThe bar is located in the small alley called Impasse de la Fidélité, only a couple of hundred metres from the Grand-Place. Don't miss the Jeanneke Pis statue nearby!"
end

Teacup::Stylesheet.new(:sponsors) do
  style :root,
    backgroundColor: UIColor.whiteColor

  style :content,
    constraints: [:top, :full]

  style :heroku,
    constraints: [:top, :center_x, constrain_size(281, 80)],
    image: 'sponsors/afirme.png'.uiimage

  grey_dots = 'grey_dots.png'.uiimage
  vgrey_dots = 'vgrey_dots.png'.uiimage
  vgrey_dots_110 = 'vgrey_dots_110.png'.uiimage

  style :hdots1,
    constraints: [constrain_below(:heroku), :center_x, constrain_size(262, 2)],
    image: grey_dots

  style :jetbrains,
    constraints: [constrain(:left).equals(:content, :left).plus(25), constrain_below(:hdots1, 5), constrain_size(260, 112)],
    image: 'sponsors/amexipac.png'.uiimage

  style :vdots1,
    constraints: [constrain_below(:hdots1, 5), :center_x, constrain_size(2, 142)],
    image: vgrey_dots

  style :cyrus,
    constraints: [constrain(:left).equals(:content, :left).plus(172), constrain_below(:hdots1, 5), constrain_size(283, 53) ],
    image: 'sponsors/deloitte.png'.uiimage

  style :hdots2,
    constraints: [constrain_below(:jetbrains, 5), :center_x, constrain_size(262, 2)],
    image: grey_dots

  style :nedap,
    constraints: [constrain(:left).equals(:content, :left).plus(85), constrain_below(:hdots2, 5), constrain_size(149, 60)],
    image: 'sponsors/ibm.png'.uiimage

  style :vdots2,
    constraints: [constrain_below(:hdots2, 5), :center_x, constrain_size(2, 142)],
    image: vgrey_dots

  style :boxcar,
    constraints: [constrain(:left).equals(:content, :left).plus(60), constrain_below(:hdots2, 5), constrain_size(377, 80) ],
    image: 'sponsors/Interfactura.png'.uiimage

  style :hdots3,
    constraints: [constrain_below(:nedap, 5), :center_x, constrain_size(262, 2)],
    image: grey_dots

  style :pragmatic,
    constraints: [constrain(:left).equals(:content, :left).plus(30), constrain_below(:hdots3, 5), constrain_size(260, 112) ],
    image: 'sponsors/sat.png'.uiimage

  style :hdots4,
    constraints: [constrain_below(:pragmatic, 5), :center_x, constrain_size(262, 2)],
    image: grey_dots

  style :vdots3,
    constraints: [constrain_below(:hdots3, 5), :center_x, constrain_size(2, 110)],
    image: vgrey_dots_110

  style :belighted,
    constraints: [constrain(:left).equals(:content, :left).plus(65), constrain_below(:hdots4, 5), constrain_size(180, 55) ],
    image: 'sponsors/visa.png'.uiimage
end
