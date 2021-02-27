# Seatwork (Permutations and Combinations)

*Show your solutions*

1. Given the 16 starting positions in a chessboard, how many ways can you arrange the following: (assuming the same pieces are identical)

   a. 8 black pawns

   b. 8 white pawns and 8 black pawns

   c. **8 black pawns 2 white knights 2 black knights**

   > Complicated counting problems like these can be answered by breaking it down into multiple tasks:
   >
   > - **task 1** - **Selecting the 4 positions in the board that will be empty**. This is equal to $P(16,4)$ or $\frac{16!}{(16-4)!}$. But since these 4 empty positions are identical, divide them by $4!$ giving us $\frac{16!}{(16-4)!4!}$. (You can summarize this whole task into $C(16,4)$ and you'll get the same answer. I showed the division rule part to be clearer)
   > - **task 2** - **Selecting the 8 pieces that will be black pawns.**  Similar to the task above you can break this down to a permutation then division or combination. Either way this task will give us $C(12,8)$ ways or $\frac{12!}{(12-8)!8!}$.
   > - **task 3** - **Selecting 2 of the remaining 4 pieces to be white knights**. Similar to the task above you can break this down to a permutation and division or combination. Either way this task will give us $C(4,2)$ ways or $\frac{4!}{(4-2)!2!}$.
   > - (Note that we do not need to perform the task of selecting the black knights since the last two pieces will automatically be the black knights)
   > - Via multiplication rule the whole procedure is $C(16,4)C(12,8)C(4,2)=5405400$.
   >
   > 

   d. 4 white pawns 4 black pawns and a white king

2.  Prove the following identity (hint: look at where these coefficients lie in Pascals triangle )

   > $$
   > {n+1 \choose r+1}-{n \choose r+1}={n+1 \choose r}-{n \choose r-1}
   > $$