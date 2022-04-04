function subjects = read_file(location,suffix)
    dirloc = location;
    cd (dirloc);  
    fileFolder=fullfile(dirloc);
    dirOutput=dir(fullfile(fileFolder,suffix));%suffix = '*.mff'
    fileNames={dirOutput.name}';
     subjects1 = cellstr(fileNames.');

     subjects2 = {};
    for s = 1:length(subjects1)
    A=isstrprop(subjects1{1,s},'digit');
    B = subjects1{1,s}(A);
    subjects2{1,s} = str2num(B);
    end
    subjects3 = cell2mat(subjects2);

    subjects3 = sort(unique(subjects3));

    subjects = subjects3; 
end
