By Corey Boulds, Oscar Dayton, Kai Rosenbluth, and Noah Williams. 


# Programming Project 1 (A 2048 Game) 


* We have decided to change the start, play, and end screen to fit the 500 by 500 dimensions in our code. Since we need a 4 by 4 grid it will be easier to make this image change then to code around it. 

## GUI Mockup #1 (Start Screen) 
![Start Screen](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/2048TitleScreen.png?raw=true)
## GUI Mockup #2 (New Start Screen)
![New Start Screen](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/startScreen.png?raw=true)

## GUI Mockup #3 (Gameplay Screen) 
![Gameplay Screen](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/2048Gameplay.png?raw=true)
## GUI Mockup #4 (New Gameplay Screen) 
![New Gameplay Screen](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/playScreen.png?raw=true)

## GUI Mockup #5 (End Sceen) 
![End Screen](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/2048YouLost.png?raw=true)
We have decided to change the end screen to fit the 500 by 500 dimensions in our code. 
## GUI Mockup #6 (New End Sceen) 
![New End Screen](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/endScreen.png?raw=true)

## Class Diagram 
![Diagram](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/2048Diagram.png?raw=true)

Our class diagram has changed since the start of our project. We have decided to remove the entire "Grid" class because with the design of our tiles movement it was deemed unesasary 

Here is the updated class diagram: 
## New Class Diagram 
![New Diagram](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/UpdatedClassDiagram.png?raw=true)


# Project Progress And Updates: 



# Team Responsibilities:  

## Cory: 
Corey's responsibilities for this project will be mostly based around art to be implimented into our coding project. Our plan is to make the game 2048 and unique art is necessary to make the project our own opposed to a direct replica. Corey has worked mainly in the piskel website and has been responcible for create the game screen, end screen, and design of our tiles. 

Here is an example of how Corey will contribute to this group project: 
## Corey's Art (For Tiles) 
![Tile Art](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/CoreyTileArt.png?raw=true)

Corey will also contribute to parts of our coding by helping make our implimentation of images to our code successful.  


## Oscar: 
Oscar's responsibilities for this project will be focused mainly around programming and editing our project to make it design elements fit together and to make sure code functions how it is supposed to. Making the code easier to understand and work with for others while also adding to it is a importent role to have that Oscar will take on for most of the duration of our coding.

Here is an example of how Oscar adds to the project by making a .mp3 file work in our project: 
## Oscar's Sound Implementation  
![Sound](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/OscarSoundContribution.png?raw=true)

## Kai: 
Kai's responsibilities for this project will be mostly be working on the core programming components to make the application function. Things like object movement, collision detection, and screen changes will be worked on more specifically by Kai but with assistence from other team memebers. 

Here is a example of a part of the code for collision detection written by Kai: 
## Kai's Code 
![Code](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/KaiCodeContribution.png?raw=true)

## Noah: 
Noah's responsibilities for this project will be broader by having him help out with many parts of the project with a focus on organization. While every memeber will contribute to github, Noah will play a larger part in creating a more comprehensive group github page that better represents our project and its progress. 

Here is a example of how Noah organizes our github page to make it much better: 
## Noah's Organization 
![Code](https://github.com/Kair12345/GroupProject/blob/gh-pages/Images/NoahOrganization.png?raw=true) 


# App Progress Summary: 

* We have set game, tile2, tile4, and grid as our 4 main classes to work with. (Update) We have decided to not work on the grid class until we get the rest of the app working. We will use the borders of the screen to stop the tile movement. 

* We have set up basic code for each class. 
 
* The setup to collision detection has been added by creating boolean values when tiles come in contact. 

* We have successfully implemented sound with a .mp3 file. (Update) We added a "loop()" line of code so the short sound file will not stop playing. 

* We are working on getting the startScreen to switch to the playScreen though pressing a mouse button. 

* We have placed text and a variable to the screen to show the player their score. 

* We got a tile to show up with some of our pixel art. 

* We got our tile to move left, right, down, up but it goes off the screen and will not stop moving. (Update) We added a keyReleased function to stop the tile movement. 

* We added a function to stop the movement of tiles as it reaches the left side, right side, bottem, or top of the screen. Unfortunately the tiles shake a bit before stopping. 










