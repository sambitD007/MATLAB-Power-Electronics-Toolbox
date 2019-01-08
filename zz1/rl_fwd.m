function varargout = rl_fwd(varargin)
% RL_FWD MATLAB code for rl_fwd.fig
%      RL_FWD, by itself, creates a new RL_FWD or raises the existing
%      singleton*.
%
%      H = RL_FWD returns the handle to a new RL_FWD or the handle to
%      the existing singleton*.
%
%      RL_FWD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RL_FWD.M with the given input arguments.
%
%      RL_FWD('Property','Value',...) creates a new RL_FWD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rl_fwd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rl_fwd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rl_fwd

% Last Modified by GUIDE v2.5 30-Apr-2018 17:19:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rl_fwd_OpeningFcn, ...
                   'gui_OutputFcn',  @rl_fwd_OutputFcn, ...
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


% --- Executes just before rl_fwd is made visible.
function rl_fwd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rl_fwd (see VARARGIN)

% Choose default command line output for rl_fwd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rl_fwd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rl_fwd_OutputFcn(hObject, eventdata, handles) 
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



function resist_Callback(hObject, eventdata, handles)
% hObject    handle to resist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resist as text
%        str2double(get(hObject,'String')) returns contents of resist as a double


% --- Executes during object creation, after setting all properties.
function resist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resist (see GCBO)
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
 global f3 v3 r3 l3 alpha3

    a = str2double(get(handles.voltage,'String'));
    b = str2double(get(handles.frequency,'String'));
    c = str2double(get(handles.resist,'String'));
    d = str2double(get(handles.induct,'String'));
    e = str2double(get(handles.firing,'String'));
    v3 = a;
    f3 = b;
    r3 = c;
    l3 = d;
    alpha3 = e;
    sim('RL_fwd')
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


function firing_Callback(hObject, eventdata, handles)
% hObject    handle to firing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of firing as text
%        str2double(get(hObject,'String')) returns contents of firing as a double


% --- Executes during object creation, after setting all properties.
function firing_CreateFcn(hObject, eventdata, handles)
% hObject    handle to firing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
