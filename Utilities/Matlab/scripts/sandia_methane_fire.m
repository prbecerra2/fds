% McDermott
% 2-24-10
% sandia_methane_fire.m
%
% Plot Sandia 1m methane pool fire data and FDS results

close all
clear all

addpath '../../Validation/Sandia_Plumes/Experimental_Data'
addpath '../../Validation/Sandia_Plumes/FDS_Output_Files'

% plot velocity signal and power spectrum

velocity_signal('Sandia_CH4_1m_Test17_dx1p5cm_devc.csv',2,'k-',10,20,0,9,'Time (s)','Vertical Velocity (m/s)', ...
                'Sandia Methane Pool Fire, Test 17','$x = 0.0$ m, $z = 0.5$ m','Sandia_CH4_1m_Test17_dx1p5cm_velsignal');

close all; clear all
datadir = '../../Validation/Sandia_Plumes/FDS_Output_Files/';            
power_spectrum('Sandia_CH4_1m_Test17_dx1p5cm_powerspectrum',0.61,1,'Frequency (Hz)','Autospectral Density (m$^2$/s)',1e-1,1e3,1e-6,1e1, ...
               [datadir,'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv'],[2:5],10,20,.00223,'k-','k:',...
               'Sandia 1 m Methane Pool Fire, Test 17','FDS W-Velocity, 1.5 cm Resolution');

% close all; clear all
% datadir = '../../Validation/Sandia_Plumes/Experimental_Data/';
% power_spectrum('Sandia_CH4_1m_Test24_Exp_powerspectrum',0.61,1,'Frequency (Hz)','Autospectral Density (m$^2$/s)',1e-1,1e3,1e-6,1e1, ...
%                [datadir,'T24_velocities_at_x_of_000mm_y_of_502mm.csv'],[3],0,4.275,1e-9,'k-','k:');
       


% Test 14, Low Flow Rate

% vertical velocity

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test14_W_zp3','row',[6:26],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 14, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test14_W_zp3.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test14_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test14_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test14_dx1p5cm_devc.csv','b-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test14_W_zp5','row',[27:47],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 14, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test14_W_zp5.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test14_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test14_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test14_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test14_W_zp9','row',[48:68],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 14, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test14_W_zp9.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test14_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test14_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test14_dx1p5cm_devc.csv','b-','FDS 1.5 cm')
           
% radial velocity

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test14_U_zp3','row',[69:89],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 14, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test14_U_zp3.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test14_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test14_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test14_dx1p5cm_devc.csv','r-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test14_U_zp5','row',[90:110],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 14, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test14_U_zp5.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test14_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test14_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test14_dx1p5cm_devc.csv','r-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test14_U_zp9','row',[111:131],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 14, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test14_U_zp9.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test14_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test14_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test14_dx1p5cm_devc.csv','r-','FDS 1.5 cm')

% Test 17, High Flow Rate

% vertical velocity

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test17_W_zp3','mean',[6:26],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 17, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test17_W_zp3.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test17_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test17_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv','b-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test17_W_zp5','mean',[27:47],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 17, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test17_W_zp5.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test17_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test17_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test17_W_zp9','mean',[48:68],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 17, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test17_W_zp9.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test17_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test17_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

% radial velocity

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test17_U_zp3','mean',[69:89],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 17, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test17_U_zp3.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test17_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test17_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv','r-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test17_U_zp5','mean',[90:110],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 17, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test17_U_zp5.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test17_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test17_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv','r-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test17_U_zp9','mean',[111:131],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 17, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test17_U_zp9.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test17_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test17_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test17_dx1p5cm_devc.csv','r-','FDS 1.5 cm')
           
           
% Test 24, Medium Flow Rate

% vertical velocity

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test24_W_zp3','row',[6:26],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 24, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test24_W_zp3.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test24_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test24_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test24_dx1p5cm_devc.csv','b-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test24_W_zp5','row',[27:47],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 24, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test24_W_zp5.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test24_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test24_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test24_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test24_W_zp9','row',[48:68],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Methane Pool Fire','Test 24, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_CH4_1m_Test24_W_zp9.csv','bo','Exp', ...
               'Sandia_CH4_1m_Test24_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test24_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_CH4_1m_Test24_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

% radial velocity

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test24_U_zp3','row',[69:89],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 24, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test24_U_zp3.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test24_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test24_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test24_dx1p5cm_devc.csv','r-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test24_U_zp5','row',[90:110],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 24, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test24_U_zp5.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test24_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test24_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test24_dx1p5cm_devc.csv','r-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_CH4_1m_Test24_U_zp9','row',[111:131],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Methane Pool Fire','Test 24, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_CH4_1m_Test24_U_zp9.csv','ro','Exp', ...
               'Sandia_CH4_1m_Test24_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_CH4_1m_Test24_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_CH4_1m_Test24_dx1p5cm_devc.csv','r-','FDS 1.5 cm')


% Test 35, Hydrogen

% vertical velocity

radial_profile('Sandia_Plumes/Sandia_H2_1m_Test35_W_zp3','row',[6:26],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Hydrogen Pool Fire','Test 35, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_H2_1m_Test35_W_zp3.csv','bo','Exp', ...
               'Sandia_H2_1m_Test35_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_H2_1m_Test35_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_H2_1m_Test35_dx1p5cm_devc.csv','b-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_H2_1m_Test35_W_zp5','row',[27:47],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Hyrdogen Pool Fire','Test 35, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_H2_1m_Test35_W_zp5.csv','bo','Exp', ...
               'Sandia_H2_1m_Test35_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_H2_1m_Test35_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_H2_1m_Test35_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_H2_1m_Test35_W_zp9','row',[48:68],0.21,'relative',10, ...
               'Radial Position (m)','Vertical Velocity (m/s)','Sandia Hyrdogen Pool Fire','Test 35, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,0,8,1, ...
               'Sandia_H2_1m_Test35_W_zp9.csv','bo','Exp', ...
               'Sandia_H2_1m_Test35_dx6cm_devc.csv','b-.','FDS 6 cm', ...
               'Sandia_H2_1m_Test35_dx3cm_devc.csv','b--','FDS 3 cm',...
               'Sandia_H2_1m_Test35_dx1p5cm_devc.csv','b-','FDS 1.5 cm')

% radial velocity

radial_profile('Sandia_Plumes/Sandia_H2_1m_Test35_U_zp3','row',[69:89],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Hydrogen Pool Fire','Test 35, $z = 0.3$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_H2_1m_Test35_U_zp3.csv','ro','Exp', ...
               'Sandia_H2_1m_Test35_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_H2_1m_Test35_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_H2_1m_Test35_dx1p5cm_devc.csv','r-','FDS 1.5 cm')
           
radial_profile('Sandia_Plumes/Sandia_H2_1m_Test35_U_zp5','row',[90:110],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Hydrogen Pool Fire','Test 35, $z = 0.5$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_H2_1m_Test35_U_zp5.csv','ro','Exp', ...
               'Sandia_H2_1m_Test35_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_H2_1m_Test35_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_H2_1m_Test35_dx1p5cm_devc.csv','r-','FDS 1.5 cm')

radial_profile('Sandia_Plumes/Sandia_H2_1m_Test35_U_zp9','row',[111:131],0.23,'relative',10, ...
               'Radial Position (m)','Radial Velocity (m/s)','Sandia Hydrogen Pool Fire','Test 35, $z = 0.9$ m','Northeast', ...
               -.5,.5,.05,-.5,.5,.1,-.8,.8,.2, ...
               'Sandia_H2_1m_Test35_U_zp9.csv','ro','Exp', ...
               'Sandia_H2_1m_Test35_dx6cm_devc.csv','r-.','FDS 6 cm', ...
               'Sandia_H2_1m_Test35_dx3cm_devc.csv','r--','FDS 3 cm',...
               'Sandia_H2_1m_Test35_dx1p5cm_devc.csv','r-','FDS 1.5 cm')
      
           
           
           
           
           
           
           
           
           