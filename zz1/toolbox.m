function varargout = toolbox(varargin)
% TOOLBOX MATLAB code for toolbox.fig
%      TOOLBOX, by itself, creates a new TOOLBOX or raises the existing
%      singleton*.
%
%      H = TOOLBOX returns the handle to a new TOOLBOX or the handle to
%      the existing singleton*.
%
%      TOOLBOX('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TOOLBOX.M with the given input arguments.
%
%      TOOLBOX('Property','Value',...) creates a new TOOLBOX or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before toolbox_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to toolbox_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help toolbox

% Last Modified by GUIDE v2.5 30-Apr-2018 19:21:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @toolbox_OpeningFcn, ...
                   'gui_OutputFcn',  @toolbox_OutputFcn, ...
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


% --- Executes just before toolbox is made visible.
function toolbox_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to toolbox (see VARARGIN)

% Choose default command line output for toolbox
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes toolbox wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = toolbox_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in uncontrol.
function uncontrol_Callback(hObject, eventdata, handles)
% hObject    handle to uncontrol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f1 v1 r1 l1 
run('uncontrolled')

% --- Executes on button press in sevlvl.
function sevlvl_Callback(hObject, eventdata, handles)
% hObject    handle to sevlvl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f5 v5 r5 
run('sev_level')
% --- Executes on button press in fivlvl.
function fivlvl_Callback(hObject, eventdata, handles)
% hObject    handle to fivlvl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f4 v4 r4
run('fiv_level')

% --- Executes on button press in freewheel.
function freewheel_Callback(hObject, eventdata, handles)
% hObject    handle to freewheel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f3 v3 r3 l3 alpha3
run('rl_fwd')

% --- Executes on button press in controlrl.
function controlrl_Callback(hObject, eventdata, handles)
% hObject    handle to controlrl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f2 v2 r2 l2 alpha2
run('resis_induc')