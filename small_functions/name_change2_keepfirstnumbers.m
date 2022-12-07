% files name change 
dirloc = 'E:\SHMC\data\TMS\EEG_PostTMS';
names = dir(dirloc);
names = {names(~[names.isdir]).name};

len  = cellfun('length',names);

keepN = len - 33;

for ii = 1:length(names)
    newname = names{ii}(1:keepN(ii));
    movefile(names{ii}, sprintf('%s_post.raw', newname)); 
end
