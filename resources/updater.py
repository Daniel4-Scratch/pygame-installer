import requests

url = "https://d4ss.glitch.me/pygame.txt"
file_path = "resources/ver.acf"

response = requests.get(url)

with open(file_path, "r") as file:
    content = file.read()

url_content = response.content.decode("utf-8")
file_content = content

if str(url_content) != str(file_content):
    print("New verison for the installer is available")
    print("Download at https://github.com/daniel4-scratch/pygame-installer/releases/latest")
else:
    print("You have the latest version of the installer")