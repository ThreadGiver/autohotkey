#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
#MaxHotkeysPerInterval 100
#UseHook

Process, Priority,, Realtime

SetKeyDelay -1

SetCapsLockState, AlwaysOff

[::/

]::=

'::-

,::w

.::v

p::l

y::f

f::u

g::i

c::j

r::p

l::n

/::z

=::]

o::r

e::.

u::g

i::c

d::e

h::d

t::y

n::b

s::o

-::[

`;::s

q::'

j::h

k::t

x::q

b::x

w::,

v::k

z::`;


#If, GetKeyState("CapsLock","P")
	j::Left
	k::Down
	l::Right
	i::Up
	`;::Send {Bs}
	u::Send {Enter}
	p::Send {escape}
	o::Send {AppsKey}

	y::Send {PgUp}
	h::Send {PgDn}
	'::Send {Del}
	n::Send {Home}
	m::Send {end}
	
	x::
	If GetKeyState("CapsLock","T"){
	    SetCapsLockState, AlwaysOff
	    }
	Else{
	    SetCapsLockState, On
	    }
	return

	f::Send {``}
	d::Send {`^}


	z::Send {PrintScreen}