@admin-boundaries: #b4b4b4; // Lch(47,30,327)
@admin-boundaries-narrow: #b4b4b4; // Lch(42,35,327)
@admin-boundaries-wide: #b4b4b4; // Lch(57,25,327)

/* For performance reasons, the admin border layers are split into three groups
for low, middle and high zoom levels.
Three attachments are used, with minor borders before major ones, and the thin centerline last, to handle
overlapping borders correctly and allow each type to have a different level of opacity.
Overlapping borders are hidden by a white background line, rendered before each line.
Then all three layers are added to the rendering with comp-op: darken, so that the white lines will not show
*/

#admin-low-zoom[zoom < 8],
#admin-mid-zoom[zoom >= 8][zoom < 13],
#admin-high-zoom[zoom >= 13] {
  [admin_level = '2']::firstline {
    [zoom >= 8] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 3;
    }
    [zoom >= 9] { background/line-width: 3.5; }
    [zoom >= 10] { background/line-width: 4.5; }
    [zoom >= 11] { background/line-width: 5.5; }
    [zoom >= 12] { background/line-width: 6; }
    [zoom >= 13] { background/line-width: 7; }
    [zoom >= 14] { background/line-width: 8; }
  }
  [admin_level = '2']::wideline {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 1.2;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 1.2;
    }
    [zoom >= 5] {
      background/line-width: 1.5;
      line-width: 1.5;
    }
    [zoom >= 6] {
      background/line-width: 1.8;
      line-width: 1.8;
    }
    [zoom >= 7] {
      background/line-width: 2.2;
      line-width: 2.2;
    }
    [zoom >= 8] {
      background/line-width: 3;
      line-width: 3;
    }
    [zoom >= 9] {
      background/line-width: 3.5;
      line-width: 3.5;
    }
    [zoom >= 10] {
      background/line-width: 4.5;
      line-color: @admin-boundaries-wide;
      line-width: 4.5;
    }
    [zoom >= 11] {
      background/line-width: 5.5;
      line-width: 5;
    }
    [zoom >= 12] {
      background/line-width: 6;
      line-width: 6;
    }
    [zoom >= 13] {
      background/line-width: 7;
      line-width: 7;
    }
    [zoom >= 14] {
      background/line-width: 8;
      line-width: 8;
    }
  }
  [admin_level = '2']::narrowline {
    [zoom >= 8] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.6;
      thin/line-join: bevel;
      thin/line-color: @admin-boundaries-narrow;
      thin/line-width: 0.6;
    }
    [zoom >= 9] {
      background/line-width: 0.8;
      thin/line-width: 0.8;
    }
    [zoom >= 10] {
      background/line-width: 1;
      thin/line-width: 1;
      thin/line-dasharray: 18,1,4,1;
    }
    [zoom >= 11] {
      background/line-width: 1.2;
      thin/line-width: 1.2;
    }
    [zoom >= 12] {
      background/line-width: 1.4;
      thin/line-width: 1.4;
      thin/line-dasharray: 27,1.5,6,1.5;
    }
    [zoom >= 13] {
      background/line-width: 1.6;
      thin/line-width: 1.6;
    }
    [zoom >= 14] {
      background/line-width: 1.8;
      thin/line-width: 1.8;
      thin/line-dasharray: 36,2,8,2;
    }
  }

  [admin_level = '3']::firstline {
    [zoom >= 8] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 1.8;
    }
    [zoom >= 9] { background/line-width: 2.5; }
    [zoom >= 10] { background/line-width: 3.2; }
    [zoom >= 11] { background/line-width: 4; }
    [zoom >= 12] { background/line-width: 4.5; }
    [zoom >= 13] { background/line-width: 5; }
    [zoom >= 14] { background/line-width: 5.5; }
  }
  [admin_level = '3']::wideline {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.6;
      line-join: bevel;
      line-color: @admin-boundaries;
      line-width: 0.6;
    }
    [zoom >= 5] {
      background/line-width: 0.8;
      line-width: 0.8;
    }
    [zoom >= 6] {
      background/line-width: 1;
      line-width: 1;
    }
    [zoom >= 7] {
      background/line-width: 1.2;
      line-width: 1.2;
    }
    [zoom >= 8] {
      background/line-width: 1.8;
      line-width: 1.8;
    }
    [zoom >= 9] {
      background/line-width: 2.5;
      line-width: 2.5;
    }
    [zoom >= 10] {
      background/line-width: 3.2;
      line-color: @admin-boundaries-wide;
      line-width: 3.2;
    }
    [zoom >= 11] {
      background/line-width: 4;
      line-width: 4;
    }
    [zoom >= 12] {
      background/line-width: 4.5;
      line-width: 4.5;
    }
    [zoom >= 13] {
      background/line-width: 5;
      line-width: 5;
    }
    [zoom >= 14] {
      background/line-width: 5.5;
      line-width: 5.5;
    }
  }
  [admin_level = '3']::narrowline {
    [zoom >= 10] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.8;
      thin/line-join: bevel;
      thin/line-color: @admin-boundaries-narrow;
      thin/line-width: 0.8;
      thin/line-dasharray: 12,2,1.5,2;
    }
    [zoom >= 11] {
      background/line-width: 1;
      thin/line-width: 1;
    }
    [zoom >= 12] {
      background/line-width: 1.2;
      thin/line-width: 1.2;
      thin/line-dasharray: 17,3,2,3;
    }
    [zoom >= 13] {
      background/line-width: 1.4;
      thin/line-width: 1.4;
    }
    [zoom >= 14] {
      background/line-width: 1.6;
      thin/line-width: 1.6;
      thin/line-dasharray: 23,4,3,4;
    }
  }

  [admin_level = '4']::firstline {
    [zoom >= 8] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 1;
    }
    [zoom >= 9] { background/line-width: 1.5; }
    [zoom >= 10] { background/line-width: 2; }
    [zoom >= 11] { background/line-width: 2.5; }
    [zoom >= 12] { background/line-width: 3; }
    [zoom >= 13] { background/line-width: 3.5; }
    [zoom >= 14] { background/line-width: 4; }
  }
  [admin_level = '4']::wideline {
    [zoom >= 4] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.4;
      line-color: @admin-boundaries;
      line-join: bevel;
      line-width: 0.4;
      line-clip: false;
    }
    [zoom >= 5] {
      background/line-width: 0.5;
      line-width: 0.5;
    }
    [zoom >= 6] {
      background/line-width: 0.6;
      line-width: 0.6;
    }
    [zoom >= 7] {
      background/line-width: 0.8;
      line-width: 0.8;
    }
    [zoom >= 8] {
      background/line-width: 1;
      line-width: 1;
    }
    [zoom >= 9] {
      background/line-width: 1.5;
      line-width: 1.5;
    }
    [zoom >= 10] {
      background/line-width: 2;
      line-color: @admin-boundaries-wide;
      line-width: 2;
    }
    [zoom >= 11] {
      background/line-width: 2.5;
      line-width: 2.8;
    }
    [zoom >= 12] {
      background/line-width: 3;
      line-width: 3;
    }
    [zoom >= 13] {
      background/line-width: 3.5;
      line-width: 3.5;
    }
    [zoom >= 14] {
      background/line-width: 4;
      line-width: 4;
    }
  }
  [admin_level = '4']::narrowline {
    [zoom >= 10] {
      background/line-join: bevel;
      background/line-color: white;
      background/line-width: 0.6;
      thin/line-color: @admin-boundaries-narrow;
      thin/line-width: 0.6;
      thin/line-dasharray: 8,2,1.5,2,1.5,2;
    }
    [zoom >= 11] {
      background/line-width: 0.8;
      thin/line-width: 0.8;
    }
    [zoom >= 12] {
      background/line-width: 1;
      thin/line-width: 1;
      thin/line-dasharray: 12,3,2,3,2,3;
    }
    [zoom >= 13] {
      background/line-width: 1.2;
      thin/line-width: 1.2;
    }
    [zoom >= 14] {
      background/line-width: 1.4;
      thin/line-width: 1.4;
      thin/line-dasharray: 16,4,3,4,3,4;
    }
  }
  ::firstline { opacity: 0.5; }
  ::wideline { opacity: 0.5; }
  ::narrowline { opacity: 0.6; }
  /*
  The following code prevents admin boundaries from being rendered on top of
  each other. Comp-op works on the entire attachment, not on the individual
  border. Therefore, this code generates an attachment containing a set of
  @admin-boundaries/white dashed lines (of which only the top one is visible),
  and with `comp-op: darken` the white part is ignored, while the
  @admin-boundaries colored part is rendered (as long as the background is not
  darker than @admin-boundaries).
  The SQL has `ORDER BY admin_level`, so the boundary with the lowest
  admin_level is rendered on top, and therefore the only visible boundary.
  */
  ::firstline,
  ::wideline,
  ::narrowline { comp-op: darken; }

}

#admin-text[zoom >= 11][way_pixels >= 196000] {
  [admin_level = '1'][way_pixels >= 360000],
  [admin_level = '2'][way_pixels >= 360000],
  [zoom >= 11][admin_level = '3'],
  [zoom >= 11][admin_level = '4'] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-fill: @state-labels;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-largest-bbox-only: false;
    text-placement: line;
    text-spacing: 750;
    text-repeat-distance: 250;
    text-margin: 10;
    text-clip: true;
    text-vertical-alignment: middle;
    text-dy: -10;
  }
}

