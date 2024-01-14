global SoundOutputState

HideTrayTip(wait_time := 1250) {
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
	TrayTip Format('Sound output switched to {1:s}', StrLower(AudioIdMap[id])), AudioIdMap[id]
	HideTrayTip()
}

QwertyFonctionsNotification(state) {
	TrayTip Format('Turned {1:s} Qwerty fonctions', state), Format('Qwerty fn {1:s}', state)
	HideTrayTip()
}

OpenFirefox() {
	Run "C:\Program Files\Mozilla Firefox\firefox.exe"
}

OpenOnedrive() {
	Run "C:\Users\Adrien\OneDrive - Université du Québec en Outaouais\École\Session A23"
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
	Run "https://uqo.ca/user"
}


f13:: OpenFirefox()
f14:: OpenOnedrive()
f15:: OpenCalendar()
f16:: OpenSpotify()
f17:: OpenDowloads()
f18:: OpenSchoolPortal()
f19:: SetAudio(1)
f20:: SetAudio(2)
f21:: SetAudio(0)
f22:: CycleAudio()
; f23::
; f24::
!+^#s:: QwertyFonctionsNotification("on")
!+^#z:: QwertyFonctionsNotification("off")

TrayTip 'You may now use your hotkeys', 'Autohotkey script activated'
HideTrayTip()