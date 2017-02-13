function varargout = ventana_biseccion(varargin)
% VENTANA_BISECCION MATLAB code for ventana_biseccion.fig
%      VENTANA_BISECCION, by itself, creates a new VENTANA_BISECCION or raises the existing
%      singleton*.
%
%      H = VENTANA_BISECCION returns the handle to a new VENTANA_BISECCION or the handle to
%      the existing singleton*.
%
%      VENTANA_BISECCION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VENTANA_BISECCION.M with the given input arguments.
%
%      VENTANA_BISECCION('Property','Value',...) creates a new VENTANA_BISECCION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ventana_biseccion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ventana_biseccion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ventana_biseccion

% Last Modified by GUIDE v2.5 11-Feb-2017 21:05:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ventana_biseccion_OpeningFcn, ...
                   'gui_OutputFcn',  @ventana_biseccion_OutputFcn, ...
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


% --- Executes just before ventana_biseccion is made visible.
function ventana_biseccion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ventana_biseccion (see VARARGIN)

% Choose default command line output for ventana_biseccion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ventana_biseccion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ventana_biseccion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double
f_value = get(hObject,'String');
handles.functionexpression=f_value;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numbera_Callback(hObject, eventdata, handles)
% hObject    handle to numbera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numbera as text
%        str2double(get(hObject,'String')) returns contents of numbera as a
%        double

a_value = get(hObject,'String');
a = str2double(a_value);
handles.numbera=a;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function numbera_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numbera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function numberb_Callback(hObject, eventdata, handles)
% hObject    handle to numberb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numberb as text
%        str2double(get(hObject,'String')) returns contents of numberb as a double

b_value = get(hObject,'String');
b = str2double(b_value);
handles.numberb=b;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function numberb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_Callback(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N as text
%        str2double(get(hObject,'String')) returns contents of N as a double
N_value = get(hObject,'String');
N = str2double(N_value);
handles.iterations=N;
guidata(hObject,handles);



% --- Executes during object creation, after setting all properties.
function N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tol_Callback(hObject, eventdata, handles)
% hObject    handle to tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tol as text
%        str2double(get(hObject,'String')) returns contents of tol as a double
tol_value = get(hObject,'String');
tolerance = str2double(tol_value);
handles.tol=tolerance;
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function tol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startbutton.
function startbutton_Callback(hObject, eventdata, handles)
% hObject    handle to startbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
a=handles.numbera;
b=handles.numberb;
tol=handles.tol;
N=handles.iterations;
f=handles.functionexpression;
[p,N] = biseccion(f, a, b, N, tol);
set(handles.rootsolution,'String',p);
set(handles.it,'String', N);
