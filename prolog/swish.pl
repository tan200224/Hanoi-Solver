% Base case: No disks to move, do nothing
move(0, _, _, _) :- !.  

move(DiskNum, Begining, Destination, Temporary) :-
    DiskNum > 0,  % make sure the number of disks is valid
    NewDiskNum is DiskNum - 1, 
    
    % Move the top n-1 disks to temporary, so they are out of the way
    % Do it recursivly until it reach to the largest disk
    move(NewDiskNum, Begining, Temporary, Destination),
    
    % Move the nth disk from begining to destination
    write(' Move disk from '),
    write(Begining),
    write(' to '),
    write(Destination),
    nl,
                
    % Move the n-1 disks from temporary to destination
    move(NewDiskNum, Temporary, Destination, Begining).


% Start with n disks
hanoi(DiskNum) :-
    move(DiskNum, left, right, middle).
