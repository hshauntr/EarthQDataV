% Earthquake Data Visualization By Shaun Tran

%clear previous data
clear all
clc 

%creating the gui as a normalized scale
gui = figure('units','Normalized','Position',[0,0,1,1]);

%placing gui components
yearStatic = uicontrol(gui,'Units','normalized','fontsize',15,'Style','text','Position',[0.75,0.85,0.1,0.05],'String','Enter year');
yearInput = uicontrol(gui,'Units','normalized','fontsize',12,'Style','edit','Position',[0.775,0.83,0.05,0.03]);
plotButton = uicontrol(gui,'Units','normalized','fontsize',12,'Style','pushbutton','Position',[0.84,0.83,0.025,0.03],'string','Plot','callback',{@buttonpress,yearInput});

%read csv file
database = readtable('database.csv');

%creating an empty geobubble
geobubble(0,0,'Units','normalized','Position',[.13,.15,.5,.7]);
title('Earthquakes around the world')

%converting MM-DD-YYY to only years
filteryear = year(database.Date);
database.Date = filteryear;

%count unique values of years into an array
[yearcount,count,value] = unique(filteryear);
quakes = accumarray(value,1);
value_counts = [yearcount, quakes];

%plotting the number of earthquakes
x = value_counts(:,1);
y = value_counts(:,2);
axes('Position',[.7 .3 .25 .35]);
plot(x,y,'b','LineWidth',3);
grid on
xlabel('Year');
ylabel('Number of Earthquakes');
title('Historical earthquake trend')

%creating function for button press
function buttonpress(~,~,yearInput)

%delete previous geobubble to avoid overlapping
myhandle = findobj(gcf,'Type','geobubble');
delete(myhandle);

%repeating steps above and placing into function
database = readtable('database.csv');
filteryear = year(database.Date);
database.Date = filteryear;

%sorting by the input of the year
sortyear= str2double(get(yearInput, 'string'));
rows = (database.Date==sortyear);

%creating the geobubble with the year input
geobubble(database(rows,:),'Latitude','Longitude','SizeVariable','Magnitude','Units','normalized','Position',[.13,.15,.5,.7]);
title('Earthquakes around the world')

%creating a count of each years
[yearcount,count,value] = unique(filteryear);
quakes = accumarray(value,1);
value_counts = [yearcount, quakes];

%plotting the historical earthquake trend
x = value_counts(:,1);
y = value_counts(:,2);
axes('Position',[.7 .3 .25 .35]);
plot(x,y,'b','LineWidth',3);

%adding marker of the year selected
hold on

%x is user input
newx = sortyear;

%y is the input year corresponding to the table created for the plot
newvalue = find(value_counts == sortyear);
updatevalue = value_counts(newvalue,:);
newy = updatevalue(2);

%plotting the marker
plot(newx,newy,'o','MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',8)

%label graph
grid on
xlabel('Year');
ylabel('Number of Earthquakes');
title('Historical earthquake trend')

end




