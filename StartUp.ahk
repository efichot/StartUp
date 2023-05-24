#SingleInstance, Force

LControl::LAlt
LAlt::LControl
RControl::RAlt
RAlt::RControl

#w::^F4
#q::!F4
#c::#v

#t::Run "C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.16.10262.0_x64__8wekyb3d8bbwe\wt.exe"

!t::
OldClipboard := ClipboardAll
Clipboard =
SendInput {Left}+{Right 2}
SendInput, ^x
ClipWait 0 ;pause for Clipboard data
  If ErrorLevel
  {
    MsgBox, No text selected!
  }
  SwappedLetters := SubStr(Clipboard,2) . SubStr(Clipboard,1,1)
  SendInput, %SwappedLetters%
  SendInput {Left}
  Clipboard := OldClipboard
return