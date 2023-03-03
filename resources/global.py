import requests

ga = "https://pygame-installer.glitch.me/acf/ga.acf"
gatext = "https://pygame-installer.glitch.me/acf/gatext.acf"

response = requests.get(ga)

url_content = response.content.decode("utf-8")

if url_content == "1":
    response = requests.get(gatext)
    url_content = response.content.decode("utf-8")
    print(url_content)
