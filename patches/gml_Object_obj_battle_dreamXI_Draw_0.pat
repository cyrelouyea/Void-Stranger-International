// TARGET: LINENUMBER
// 50
var str="";
// TARGET: LINENUMBER_REMOVE
// 53:56
// TARGET: LINENUMBER_REPLACE
// 55
        str = "G: " + scrScript(3442);
// TARGET: LINENUMBER_REPLACE
// 59
        str = "G: " + scrScript(pl_rand_line);
// TARGET: LINENUMBER_REMOVE
// 61
// TARGET: LINENUMBER_REMOVE
// 64:67
// TARGET: LINENUMBER_REPLACE
// 66
        str = "B: " + scrScript(3451);
// TARGET: LINENUMBER_REPLACE
// 70
        str = "B: " + scrScript(3452);
// TARGET: LINENUMBER_REPLACE
// 74
        str = "B: " + scrScript(e_rand_line);
// TARGET: LINENUMBER_REMOVE
// 76
// TARGET: LINENUMBER
// 77
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