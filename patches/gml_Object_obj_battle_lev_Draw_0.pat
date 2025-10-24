// TARGET: LINENUMBER
// 53
var str="";
// TARGET: LINENUMBER_REPLACE
// 56:61
    str = "A: " + scrScript(pl_rand_line);
// TARGET: LINENUMBER_REPLACE
// 60:65
    str = "L: " + scrScript(e_rand_line);
// TARGET: LINENUMBER
// 62
if (str != "")
{
    if (global.script_array[global.language][0] == "FR")
    {
        str = string_insert("\u00A0", str, 2);
    }
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    if (string_height_ext(str, string_height(global.text_font), 220) == string_height(global.text_font))
    {
        draw_sprite(spr_textbox_small, 0, 0, 0);
        draw_text_color(room_width * 0.5, 8, str, c_white, c_white, c_white, c_white, 1);
    }
    else
    {
        draw_sprite(spr_textbox_extra, 3, 0, 0);
        draw_text_ext_color(room_width * 0.5, 8, str, string_height(global.text_font), 220, c_white, c_white, c_white, c_white, 1);
        draw_sprite(spr_textbox_extra, 4, 0, 0);
    }
    draw_set_halign(fa_left);
}