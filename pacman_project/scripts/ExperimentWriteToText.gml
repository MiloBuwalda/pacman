var file2 =file_text_open_write("test1.txt");
file_text_write_string(file2, "death_per_level:" + string(global.deathsInLevel_1) + "," + string(global.deathsInLevel_2) + "," + string(global.deathsInLevel_3));
file_text_close(file2);
var file2 = file_text_open_append("test1.txt");
file_text_writeln(file2);
file_text_write_string(file2, "time_of_death:" + string(global.time_death_1) + "," + string(global.time_death_2) + "," + string(global.time_death_3) + "," + string(global.time_death_4) + "," + string(global.time_death_5) + "," + string(global.time_death_6) + "," + string(global.time_death_7) + "," + string(global.time_death_8) + "," + string(global.time_death_9));
file_text_close(file2);
