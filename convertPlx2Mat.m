function convertPlx2Mat(sessiondate)

global DATADIR
global mk

day = sessiondate;
daystr = num2str(day);

%% PLEXON COMPUTERS
% Superfaun, LiquidSword, Pinky, Pipe, Adjule.



s =  getdaysfiles(day,mk,'*superfaun*.plx');
path = s{1};
k = path(1:end-4);
str = ['plx2mat',' ','-o',' ',k,'.mat',' ',k,'.plx',' ','-s',' ','-e',' ','-a']
% str = ['plx2mat',' ','-o',' ',k,'.mat',' ',k,'.plx',' ','-a']
[status,cmdout] = dos(str);



l =  getdaysfiles(day,mk,'*liquidsword*.plx');
if(isempty(l))
    l =  getdaysfiles(day,mk,'*Liquidsword*.plx');
end
if(isempty(l))
    l =  getdaysfiles(day,mk,'*LiquidSword*.plx');
end

if(~isempty(l))
    path = l{1};
    k = path(1:end-4);
    str = ['plx2mat',' ','-o',' ',k,'.mat',' ',k,'.plx',' ','-s']
    [status,cmdout] = dos(str);
end


p =  getdaysfiles(day,mk,'*pinky*.plx');
if(~isempty(p))
    path = p{1};
    k = path(1:end-4);
    str = ['plx2mat',' ','-o',' ',k,'.mat',' ',k,'.plx',' ','-s']
    [status,cmdout] = dos(str);
end

pi =  getdaysfiles(day,mk,'*pipe*.plx');
if(~isempty(pi))
    path = pi{1};
    k = path(1:end-4);
    str = ['plx2mat',' ','-o',' ',k,'.mat',' ',k,'.plx',' ','-s']
    [status,cmdout] = dos(str);
end


ad =  getdaysfiles(day,mk,'*Adjule*.plx');
if(~isempty(ad))
    path = ad{1};
    k = path(1:end-4);
    str = ['plx2mat',' ','-o',' ',k,'.mat',' ',k,'.plx',' ','-s']
    [status,cmdout] = dos(str);
end



