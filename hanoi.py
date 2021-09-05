# I want to create a method to win the Hanoi game

def hanoi(n,x,y,z):

    # I want to make sure the first step is move to move the first disk from x to z
    if n == 1:

        print(x,'-->',z)

    # after the first disk in remove, we want to deal the other disks 
    else:
        
        # when want to move the next disk to Y
        hanoi(n-1,x,z,y)

        # We will move the last disk to Z
        print(x,'-->',z)
        
        # We will move all the disk to Z
        hanoi(n-1,y,x,z)


#ask for nubmer of disk
number = input('Enter the nubmer of disk in the game: \n')

hanoi(int(number),'X','Y','Z')
