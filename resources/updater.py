import requests

url = "https://pygame-installer.glitch.me/acf/ver.acf" # The url to the ver.acf file
file_path = "resources/ver.acf"

response = requests.get(url)

with open(file_path, "r") as file:
    content = file.read()

url_content = response.content.decode("utf-8")
file_content = content

if str(url_content) != str(file_content): # If the content of the file is not the same as the content of the url
    print("New verison for the installer is available")
    print("Download at https://pygame-installer.glitch.me/download.html")
else:
    print("You have the latest version of the installer")