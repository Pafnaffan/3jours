video_open("bigboss.mp4");

qte_index = 0;
qte_active = false;
qte_input = "";
qte_timer = 0;

video_timer = 0;

input = "";

add_letter = false;
letter_index = 1;
wrong_flash = 0;

word = "";

audio_stop_all();
audio_play_sound(snd_boss, 1, 1);

font_enable_effects(fnt_boss, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black,
	glowEnable: true,
    glowEnd: 16,
    glowColour: c_fuchsia
});



qte_list = [
    {frame: 60, word: "FRACASSE"},
    {frame: 372, word: "ENSANGLANTE"},
    {frame: 850, word: "DECLARE LE DECES"},
    {frame: 1624, word: "POUCE"},
    {frame: 1940, word: "COUP FINAL"},
    {frame: 2116, word: "PLIE"},
    {frame: 2221, word: "PLIE"},
    {frame: 2304, word: "PLIE"},
    {frame: 2766, word: "LANCE"},
    {frame: 2884, word: "BALANCE"},
    {frame: 3062, word: "ETRANGLE"},
    {frame: 3241, word: "DECIME"},
    {frame: 3619, word: "CREVE"},
    {frame: 3639, word: "CREVE"},
    {frame: 3659, word: "CREVE"},
    {frame: 3684, word: "CREVE"},
    {frame: 3709, word: "CREVE"},
    {frame: 3734, word: "CREVE"},
    {frame: 3759, word: "CREVE"},
    {frame: 3784, word: "CREVE"},
    {frame: 3809, word: "CREVE"},
    {frame: 3834, word: "CREVE"},
    {frame: 3859, word: "CREVE"},
    {frame: 3884, word: "CREVE"},
    {frame: 3909, word: "CREVE"},
    {frame: 3934, word: "CREVE"},
    {frame: 3959, word: "CREVE"},
    {frame: 3984, word: "CREVE"},
    {frame: 4009, word: "CREVE"},
    {frame: 4034, word: "CREVE"},
    {frame: 4059, word: "CREVE"},
    {frame: 4152, word: "FATALITY"},
    {frame: 4327, word: "TONY HAWK"},
    {frame: 4632, word: "SPLATCH"},
    {frame: 4682, word: "RETENTE"},
    {frame: 4863, word: "BAGARRE"},
    {frame: 5048, word: "PLUS FORT"},
    {frame: 5170, word: "VIOLENCE"},
    {frame: 5524, word: "A"},
    {frame: 5554, word: "A"},
    {frame: 5584, word: "A"},
    {frame: 5614, word: "A"},
    {frame: 5644, word: "A"},
    {frame: 5674, word: "A"},
    {frame: 5704, word: "A"},
    {frame: 5734, word: "A"},
    {frame: 5764, word: "A"},
    {frame: 5794, word: "A"},
    {frame: 5824, word: "A"},
    {frame: 5854, word: "A"},
    {frame: 5884, word: "A"},
    {frame: 5914, word: "A"},
    {frame: 5944, word: "A"},
    {frame: 5974, word: "A"},
    {frame: 6004, word: "A"},
    {frame: 6034, word: "A"},
    {frame: 6064, word: "A"},
    {frame: 6094, word: "A"},
    {frame: 6124, word: "AA"},
    {frame: 6154, word: "AAA"},
    {frame: 6184, word: "AAAA"},
    {frame: 6214, word: "AAAAA"},
    {frame: 6244, word: "AAAAAA"},
    {frame: 6274, word: "AAAAAAA"},
    {frame: 6304, word: "AAAAAAAA"},
    {frame: 6334, word: "AAAAAAAAA"},
    {frame: 6364, word: "CHAUD"},
    {frame: 6591, word: "DEMEMBRE"},
    {frame: 7089, word: "SCROUNCH"},
    {frame: 7240, word: "LANCE"},
    {frame: 7621, word: "YEET"},
    {frame: 7744, word: ":)"},
    {frame: 8162, word: "ACHEVE"}
];
