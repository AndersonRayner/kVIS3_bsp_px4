% kVIS3 Data Visualisation
%
% Copyright (C) 2012 - present  Kai Lehmkuehler, Matt Anderson and
% contributors
%
% Contact: kvis3@uav-flightresearch.com
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

function [] = import_px4_folder(hObject, ~)

%% Select PX4 Log folder
root_directory = uigetdir(pwd,'Import PX4 Folder');
files = dir([root_directory,'\**\*.ulg']);

% Import each file
for ii = 1:numel(files)
    
    %% Import ulog File
    file = [files(ii).folder,'\',files(ii).name];
    [pathstr,name,ext] = fileparts(file);
    fprintf('%d / %d : Processing %s\n',ii,length(files),file);
    
    fds = import_px4(file);
    
    %% Update KSID
    fds = kVIS_fdsUpdateAttributes(fds);
    kVIS_addDataSet(hObject, fds, matlab.lang.makeValidName(name));
    
end

return

