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



qte_list = [
    {frame: 60, word: "fracasse"},
    {frame: 312, word: "ensanglante"},
    {frame: 790, word: "declare le deces"},
    {frame: 1624, word: "pouce"},
    {frame: 1940, word: "coup final"},
    {frame: 2106, word: "plie"},
    {frame: 2221, word: "plie"},
    {frame: 2304, word: "plie"},
    {frame: 2766, word: "lance"},
    {frame: 2884, word: "balance"},
    {frame: 3062, word: "etrangle"},
    {frame: 3241, word: "decime"},
    {frame: 3609, word: "creve"},
    {frame: 4152, word: "fatality"},
    {frame: 4327, word: "tony hawk"},
    {frame: 4632, word: "splatch"},
    {frame: 4682, word: "retente"},
    {frame: 4863, word: "bagarre"},
    {frame: 5048, word: "plus fort"},
    {frame: 5170, word: "violence"},
    {frame: 5524, word: "a"},
    {frame: 6591, word: "demembre"},
    {frame: 7084, word: "scrounch"},
    {frame: 7240, word: "lance"},
    {frame: 7621, word: "yeet"},
    {frame: 7744, word: ":)"},
    {frame: 8162, word: "acheve"}
];
