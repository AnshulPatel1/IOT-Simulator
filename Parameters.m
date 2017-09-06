
function varargout = Parameters(varargin)
% PARAMETERS MATLAB code for Parameters.fig
%      PARAMETERS, by itself, creates a new PARAMETERS or raises the existing
%      singleton*.
%
%      H = PARAMETERS returns the handle to a new PARAMETERS or the handle to
%      the existing singleton*.
%
%      PARAMETERS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PARAMETERS.M with the given input arguments.
%
%      PARAMETERS('Property','Value',...) creates a new PARAMETERS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Parameters_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Parameters_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Parameters

% Last Modified by GUIDE v2.5 30-Jul-2017 20:58:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Parameters_OpeningFcn, ...
                   'gui_OutputFcn',  @Parameters_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Parameters is made visible.
function Parameters_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Parameters (see VARARGIN)

% Choose default command line output for Parameters
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Parameters wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Parameters_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function numofnodes_Callback(hObject, eventdata, handles)
% hObject    handle to numofnodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numofnodes as text
%        str2double(get(hObject,'String')) returns contents of numofnodes as a double


% --- Executes during object creation, after setting all properties.
function numofnodes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numofnodes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function prob_Callback(hObject, eventdata, handles)
% hObject    handle to prob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of prob as text
%        str2double(get(hObject,'String')) returns contents of prob as a double


% --- Executes during object creation, after setting all properties.
function prob_CreateFcn(hObject, eventdata, handles)
% hObject    handle to prob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in savebutton.
function savebutton_Callback(hObject, eventdata, handles)
% hObject    handle to savebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MainGUI; 



function energy_Callback(hObject, eventdata, handles)
% hObject    handle to energy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of energy as text
%        str2double(get(hObject,'String')) returns contents of energy as a double


% --- Executes during object creation, after setting all properties.
function energy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to energy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function trans_Callback(hObject, eventdata, handles)
% hObject    handle to trans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of trans as text
%        str2double(get(hObject,'String')) returns contents of trans as a double


% --- Executes during object creation, after setting all properties.
function trans_CreateFcn(hObject, eventdata, handles)
% hObject    handle to trans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function recieve_Callback(hObject, eventdata, handles)
% hObject    handle to recieve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of recieve as text
%        str2double(get(hObject,'String')) returns contents of recieve as a double


% --- Executes during object creation, after setting all properties.
function recieve_CreateFcn(hObject, eventdata, handles)
% hObject    handle to recieve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
