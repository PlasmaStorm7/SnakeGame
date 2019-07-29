#### snakeBackend.pde

`setRows(int rowNumber)` - Stabilește numărul de rânduri

`setColumns(int columnNumber)` - Stabilește numărul de coloane

`setInitialSnakePieceNumber(int number)` - Stabilește cât de lung e șarpele la început

`setInitialSnakeHeadPosition(int x, int y)` - Stabilește poziția capului șarpelui la început

`void pause()` - Pune pauză jocului

`void unpause()` - Reia jocul

`boolean gameFinished()` - Verifică dacă jocul s-a terminat (șarpele și-a mușcat coada sau a dat de perete)

`int getScore()` - Returnează lungimea șarpelui

`void startGame()` - Începe jocul / Reîncepe jocul (valorile inițiale trebuie resetate folosind funcțiile corespunzătoare)

`void setSnakeDirection(int snakeDirection)` - Setează direcția de mers a șarpelui (inclusiv înainte de începerea jocului): `UP`, `DOWN`, `LEFT`, `RIGHT`

`void advanceGame()` - Avansează jocul (mută șarpele)

`boolean outsideBoundaries(int positionX, int positionY)` - Verifică dacă coordonatele identifică o piesă din joc

`int getPiece(int x, int y)` - Returnează felul de piesă din joc: `NOPIECE`, `SNAKEPIECE`, `FOODPIECE`

Pentru a desena piesele jocului, puteți folosi două bucle `for`:

```
for(int x = 0; x < columns; x++)
{
    for(int y = 0; y < rows ; y++)
    {
        int piece = getPiece(x, y);
    }
}
```