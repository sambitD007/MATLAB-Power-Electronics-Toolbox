function varargout = fiv_level(varargin)
% FIV_LEVEL MATLAB code for fiv_level.fig
%      FIV_LEVEL, by itself, creates a new FIV_LEVEL or raises the existing
%      singleton*.
%
%      H = FIV_LEVEL returns the handle to a new FIV_LEVEL or the handle to
%      the existing singleton*.
%
%      FIV_LEVEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIV_LEVEL.M with the given input arguments.
%
%      FIV_LEVEL('Property','Value',...) creates a new FIV_LEVEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fiv_level_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fiv_level_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fiv_level

% Last Modified by GUIDE v2.5 30-Apr-2018 18:27:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fiv_level_OpeningFcn, ...
                   'gui_OutputFcn',  @fiv_level_OutputFcn, ...
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


% --- Executes just before fiv_level is made visible.
function fiv_level_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fiv_level (see VARARGIN)

% Choose default command line output for fiv_level
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fiv_level wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fiv_level_OutputFcn(hObject, eventdata, handles) 
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



function frequency_Callback(hObject, eventdata, handles)
% hObject    handle to frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of frequency as text
%        str2double(get(hObject,'String')) returns contents of frequency as a double


% --- Executes during object creation, after setting all properties.
function frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequency (see GCBO)
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



function induct_Callback(hObject, eventdata, handles)
% hObject    handle to induct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of induct as text
%        str2double(get(hObject,'String')) returns contents of induct as a double


% --- Executes during object creation, after setting all properties.
function induct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to induct (see GCBO)
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
 global f4 v4 r4  

    a = str2double(get(handles.voltage,'String'));
    b = str2double(get(handles.frequency,'String'));
    c = str2double(get(handles.resistor,'String'));
    
   
    v4 = a;
    f4 = b;
    r4 = c;
    
    
    sim('five_level')
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
