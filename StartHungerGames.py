import os, random
import shutil, errno
from pathlib import Path
import platform
import subprocess

def main():
	script_path = os.path.dirname(os.path.realpath(__file__))
	chosen_map = ".DS_Store"
	while chosen_map == ".DS_Store":
		chosen_map = random.choice(os.listdir(script_path + "/Maps"))
		print(chosen_map)
	chosen_map = script_path + "/Maps/" + chosen_map
	currently_playing = script_path + "/CurrentlyPlaying"
	if os.path.exists(currently_playing):
		shutil.rmtree(currently_playing)
	Path(currently_playing).mkdir(parents=True, exist_ok=True)
	copytree(chosen_map, currently_playing)
	datapack_folder = currently_playing + "/SurvivalGames/datapacks"
	server_files = script_path + "/ServerFiles"
	Path(datapack_folder).mkdir(parents=True, exist_ok=True)
	Path(server_files + "/datapacks/RandomChests").mkdir(parents=True, exist_ok=True)
	if not os.path.exists(datapack_folder + "/RandomChests"):
		copytree(
			server_files + "/datapacks/RandomChests", 
			datapack_folder + "/RandomChests"
		)
	for filename in os.listdir(server_files):
		if filename == ".DS_Store" or os.path.isdir(server_files + "/" + filename):
			continue
		print(filename)
		shutil.copy(
			server_files + "/" + filename,
			currently_playing + "/" + filename
			)
	if not platform.system() == 'Windows':
		subprocess.call(currently_playing + "/start_server.sh", shell=True)




def copytree(src, dst, symlinks=False, ignore=None):
    Path(dst).mkdir(parents=True, exist_ok=True)
    for item in os.listdir(src):
        s = os.path.join(src, item)
        d = os.path.join(dst, item)
        if os.path.isdir(s):
            shutil.copytree(s, d, symlinks, ignore)
        else:
            shutil.copy2(s, d)


if __name__ == "__main__":
    main()