function varargout = sev_level(varargin)
% SEV_LEVEL MATLAB code for sev_level.fig
%      SEV_LEVEL, by itself, creates a new SEV_LEVEL or raises the existing
%      singleton*.
%
%      H = SEV_LEVEL returns the handle to a new SEV_LEVEL or the handle to
%      the existing singleton*.
%
%      SEV_LEVEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEV_LEVEL.M with the given input arguments.
%
%      SEV_LEVEL('Property','Value',...) creates a new SEV_LEVEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sev_level_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sev_level_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sev_level

% Last Modified by GUIDE v2.5 30-Apr-2018 18:51:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sev_level_OpeningFcn, ...
                   'gui_OutputFcn',  @sev_level_OutputFcn, ...
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


% --- Executes just before sev_level is made visible.
function sev_level_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sev_level (see VARARGIN)

% Choose default command line output for sev_level
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sev_level wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sev_level_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function voltage_Callback(hObject, eventdata, handles)
% hObject    handle to voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltage as text
%        str2double(get(hObject,'String')) returns contents of voltage as a double


% --- Executes during object creation, after setting all properties.
function voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function frequ_Callback(hObject, eventdata, handles)
% hObject    handle to frequ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frequ as text
%        str2double(get(hObject,'String')) returns contents of frequ as a double


% --- Executes during object creation, after setting all properties.
function frequ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function resistor_Callback(hObject, eventdata, handles)
% hObject    handle to resistor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resistor as text
%        str2double(get(hObject,'String')) returns contents of resistor as a double


% --- Executes during object creation, after setting all properties.
function resistor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resistor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global f5 v5 r5  

    a = str2double(get(handles.voltage,'String'));
    b = str2double(get(handles.frequ,'String'));
    c = str2double(get(handles.resistor,'String'));
    
   
    v5 = a;
    f5 = b;
    r5 = c;
    
    
    sim('seven_level')
    axes(handles.axes1);
    plot(t,out);
    %xlabel('Time');
    ylabel('Amplitude');
    title('Voltage Waveform');
     axes(handles.axes2);
    plot(t,curout);
    xlabel('Time');
    ylabel('Amplitude');
    title('Current Waveform');
