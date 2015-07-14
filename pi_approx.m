%Suppose you stand with your eyes blindfolded and thraw pebbles in a square region drawn in the sand
%inside the square lies a circle with center at the center of the square and radius 1/2
%suppose that you thraw M pebbles towards the square and when you are finished you unfold your eyes
%you count all the pebbles that lie inside the square let us say N and the pebbles that lie inside the circle
%let us say O. An approximation of π=3.14159... can be given by the formula (O/N)*4
%Let the player choose how many pebbles he will throw
number_of_pebbles  = input('Enter the number of pebbles to thrown: ');
%we assume that the above input are the pebbles N of the first paragraph
x = rand(1,number_of_pebbles);y = rand(1,number_of_pebbles);
%let us make a graph
figure;
plot(x,y,'ko','Color','Red');
%plot the circle
hold on;
t=linspace(0,2*pi);
plot(1/2*cos(t)+1/2,1/2*sin(t)+1/2,'LineWidth',3,'Color','Black');
%assign to a variable the distances of the pebbles from the center of the circle 
distances = sqrt((x-1/2).^2 + (y-1/2).^2);
%find the number of the pebbles which lie inside the circle
nopitc = sum ( distances < 1/2);
%apply the formula
pi_app = (nopitc/number_of_pebbles)*4;
%absolute error
abs_error = abs(pi - pi_app);
%print the results
display(sprintf('The number of pebbles thrown in the square is %2d.\nThe number of pebbles found inside the circle divided by the total number of pebbles is: %2f\nThe absolute approximation error is: %2f\nThe pi as we computed it from this process: %2f',number_of_pebbles,nopitc/number_of_pebbles,abs_error,pi_app))
