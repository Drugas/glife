﻿/*
 *		-- Rename Changed Image Paths due to code changes--
 *
 *		Requires images subfolder to exist in current directory
 *		
 *
 *      WD: Jul 2015
 *
 *
 */
  
  

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; -- Move or rename without overwriting any existing files --

;! WD: Move missing Image ~ "cumfrot.jpg" from "images\picb" to "images\Body"
FileMove, images\picb\cumfrot.jpg, images\Body\cumfrot.jpg

; ! WD: Move missing Image ~ "tatvag6.jpg" from "images\picBody" to "images\Body"
FileMove, images\picBody\tatvag6.jpg, images\picb\tatvag6.jpg

; ! WD: Rename missing Image ~  'ghFinger.jpg' to 'ghFinger5.jpg'
FileMove, images\etogame\ghFinger.jpg, images\etogame\ghFinger5.jpg

; ! WD: Rename missing Image ~ 'kendraStrap.jpg' to 'kendraStrap1.jpg'
FileMove, images/pics2/kendraStrap.jpg, images/pics2/kendraStrap1.jpg

; ! WD: Rename 'png' clothing images as scripts are only using 'jpg' ~ Fixed code and images
FileMove, images\clothes\*.png, images\clothes\*.jpg 
Loop, Files, images\clothes, DR					;; Get all subdirs in Clothes
{
	FileMove, %A_LoopFileFullPath%\*.png, %A_LoopFileFullPath%\*.jpg
}
