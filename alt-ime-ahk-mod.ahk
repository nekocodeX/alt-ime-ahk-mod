; 左右 Alt キーの空打ちで IME を ON/OFF する AutoHotkey スクリプトのような何か
;
; 左 Alt キーの空打ちで IME OFF
; 右 Alt キーの空打ちで IME ON
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
; CapsLock 0.75秒 長押しで ON (OFF は変更なし)
;
; Author:              nekocodeX   https://github.com/nekocodeX/alt-ime-ahk-mod
; Original author:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

; 既存のインスタンスが存在する場合、終了して新たにインスタンスを開始
#SingleInstance Force

; メニュー項目
Menu, Tray, Add, %A_ScriptName%, AppName
Menu, Tray, Disable, %A_ScriptName%
Menu, Tray, Default, %A_ScriptName%
Menu, Tray, Add
Menu, Tray, Add, Check for Updates..., CheckForUpdates
Menu, Tray, Add, GitHub Repo / Readme, GitHubRepoReadme
Menu, Tray, Add
Menu, Tray, NoStandard
Menu, Tray, Standard
Return

AppName:
    Return

CheckForUpdates:
    Run, https://github.com/nekocodeX/alt-ime-ahk-mod/releases/latest
    Return

GitHubRepoReadme:
    Run, https://github.com/nekocodeX/alt-ime-ahk-mod
    Return

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
    Return

; 上部メニューがアクティブになるのを抑制 / Xbox Game Bar 起動用仮想キーコードとのバッティング回避 (vk07 -> vkFF)
*~LAlt::
    Send {Blind}{vkFF}
*~RAlt::
    Send {Blind}{vkFF}

; 左 Alt 空打ちで IME を OFF
LAlt up::
    if (A_PriorHotkey == "*~LAlt") {
        IME_SET(0)
    }
    Return

; 右 Alt 空打ちで IME を ON
RAlt up::
    if (A_PriorHotkey == "*~RAlt") {
        IME_SET(1)
    }
    Return

; CapsLock 0.75秒 長押しで ON (OFF は変更なし)
CapsLock::
    KeyWait, CapsLock, T0.75
    If (ErrorLevel && !GetKeyState("CapsLock", "T")) {
        SetCapsLockState, On
    } else if (!ErrorLevel && GetKeyState("CapsLock", "T")) {
        SetCapsLockState, Off
    }
    KeyWait, CapsLock
    Return

; Win + CapsLock を無視
#CapsLock::
    Return
