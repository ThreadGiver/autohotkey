global SoundOutputState

Notification(title, text := "", wait_time := 1250) {
	Traytip text, title
	Sleep(wait_time)
	TrayTip
}

AudioIdMap := Map(
	1, "Earbuds",
	2, "Panel",
	0, "Speakers"
)

CycleAudio() {
	global SoundOutputState
	If (!IsSet(SoundOutputState)) {
		SoundOutputState := 0
	}
	If (SoundOutputState = 0) {
		SetAudio(1)
	} else if (SoundOutputState = 1) {
		SetAudio(2)
	} else if (SoundOutputState = 2) {
		SetAudio(0)
	}
}

SetAudio(id) {
	global SoundOutputState
	Run Format("C:\Software\nircmd\nircmd.exe setdefaultsounddevice {1:s}", AudioIdMap[id])
	SoundOutputState := id
	Notification(AudioIdMap[id], Format('Sound output switched to {1:s}', StrLower(AudioIdMap[id])))
}

OpenFirefox() {
	Run "C:\Program Files\Mozilla Firefox\firefox.exe -new-window"
}

OpenOnedrive() {
	Run "C:\Users\Adrien\OneDrive - USherbrooke\École\Session A24"
}

OpenCalendar() {
	Run "https://calendar.google.com/calendar/u/0/r/week"
}

OpenSpotify() {
	Run "shell:AppsFolder\SpotifyAB.SpotifyMusic_zpdnekdrzrea0!Spotify"
}

OpenDowloads() {
	Run "C:\Users\Adrien\Downloads"
}

OpenSchoolPortal() {
	Run "https://turnin.dinf.usherbrooke.ca/"
}

AutoSwitchToEarbuds() {
	if not RunWait(
		A_ComSpec ' /C "C:\Software\EndPointcontroller.exe | findstr Earbuds"', , "Hide"
	) {
		global SoundOutputState
		If (!IsSet(SoundOutputState)) {
			SoundOutputState := 0
		}
		If (SoundOutputState == 0) {
			SetAudio(1)
		}
	}
}

; SetTimer(AutoSwitchToEarbuds, 1000)

!+^#1:: OpenFirefox()
!+^#2:: OpenOnedrive()
!+^#3:: OpenCalendar()
!+^#4:: OpenSpotify()
!+^#5:: OpenDowloads()
!+^#6:: OpenSchoolPortal()
!+^#7:: SetAudio(1)
!+^#8:: SetAudio(2)
!+^#9:: SetAudio(0)
!+^#0:: CycleAudio()
; f23::
; f24::
!+^#s:: Notification('Turned on Qwerty fonctions')
!+^#z:: Notification('Turned off Qwerty fonctions')

Notification('Autohotkey script activated', 'You may now use your hotkeys')