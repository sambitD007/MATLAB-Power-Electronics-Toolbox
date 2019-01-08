function varargout = uncontrolled(varargin)
% UNCONTROLLED MATLAB code for uncontrolled.fig
%      UNCONTROLLED, by itself, creates a new UNCONTROLLED or raises the existing
%      singleton*.
%
%      H = UNCONTROLLED returns the handle to a new UNCONTROLLED or the handle to
%      the existing singleton*.
%
%      UNCONTROLLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNCONTROLLED.M with the given input arguments.
%
%      UNCONTROLLED('Property','Value',...) creates a new UNCONTROLLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before uncontrolled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to uncontrolled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help uncontrolled

% Last Modified by GUIDE v2.5 30-Apr-2018 16:20:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @uncontrolled_OpeningFcn, ...
                   'gui_OutputFcn',  @uncontrolled_OutputFcn, ...
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


% --- Executes just before uncontrolled is made visible.
function uncontrolled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to uncontrolled (see VARARGIN)

% Choose default command line output for uncontrolled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes uncontrolled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = uncontrolled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Voltage as text
%        str2double(get(hObject,'String')) returns contents of Voltage as a double


% --- Executes during object creation, after setting all properties.
function Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Frequency_Callback(hObject, eventdata, handles)
% hObject    handle to Frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Frequency as text
%        str2double(get(hObject,'String')) returns contents of Frequency as a double


% --- Executes during object creation, after setting all properties.
function Frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Resistance_Callback(hObject, eventdata, handles)
% hObject    handle to Resistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Resistance as text
%        str2double(get(hObject,'String')) returns contents of Resistance as a double


% --- Executes during object creation, after setting all properties.
function Resistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Resistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Inductance_Callback(hObject, eventdata, handles)
% hObject    handle to Inductance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Inductance as text
%        str2double(get(hObject,'String')) returns contents of Inductance as a double


% --- Executes during object creation, after setting all properties.
function Inductance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Inductance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Simulat.
function Simulat_Callback(hObject, eventdata, handles)
% hObject    handle to Simulat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1 v1 r1 l1 

    a = str2double(get(handles.Voltage,'String'));
    b = str2double(get(handles.Frequency,'String'));
    c = str2double(get(handles.Resistance,'String'));
    d = str2double(get(handles.Inductance,'String'));
    v1 = a;
    f1 = b;
    r1 = c;
    l1 = d;
    sim('uncontrolled1')
    axes(handles.axes1);
    plot(t,out);
    xlabel('Time');
    ylabel('Amplitude');
    title('Voltage Waveform');
     axes(handles.axes2);
    plot(t,curout);
    xlabel('Time');
    ylabel('Amplitude');
    title('Current Waveform');
