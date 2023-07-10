close all; clear all; clc;

%simulink model loaded and changed required parameters
load_system('doublePendulum');
set_param('doublePendulum/Hiz1','InitialCondition','pi/3') %Modeldeki ilk kütlenin ilk Hızı integratordan başlangıç değeri olarak girildi
set_param('doublePendulum/Aci1','InitialCondition','pi/3') %Modeldeki ilk kütlenin ilk Açısı integratordan başlangıç değeri olarak girildi
set_param('doublePendulum/Hiz2','InitialCondition','0') %Modeldeki ikinci kütlenin ilk Hızı integratordan başlangıç değeri olarak girildi
set_param('doublePendulum/Aci2','InitialCondition','2.8') %Modeldeki ikinci kütlenin ilk Açısı integratordan başlangıç değeri olarak girildi
sim('doublePendulum',10) %Simulink modeli çalıştırıldı. Zaman = 10

%figür Çizimi
figure(1)
subplot(2,2,1)
plot(Teta1(:,1),Teta1(:,2))
title('1. Sarkacın Açısının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,2)
plot(dTeta1dt(:,1),dTeta1dt(:,2))
title('1. Sarkacın Açısal Hızının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,3)
plot(Teta2(:,1),Teta2(:,2))
title('2. Sarkacın Açısının Zamana Bağlı Değişimi(Soru 5.1)')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,4)
plot(dTeta2dt(:,1),dTeta2dt(:,2))
title('2. Sarkacın Açısal Hızının  Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')

figure(2)
plot(xTeta1(:,2),yTeta1(:,2),xTeta2(:,2),yTeta2(:,2))
title('Kütlelerin Konumu(Soru 5.1)')
xlabel('Kütlenin x Konumu')
ylabel('Kütlenin y Konumu')


clear all; clc;

load_system('doublePendulum');
set_param('doublePendulum/Hiz1','InitialCondition','pi/3')
set_param('doublePendulum/Aci1','InitialCondition','pi/3')
set_param('doublePendulum/Hiz2','InitialCondition','0')
set_param('doublePendulum/Aci2','InitialCondition','2.9')
sim('doublePendulum',10)

figure(3)
subplot(2,2,1)
plot(Teta1(:,1),Teta1(:,2))
title('1. Sarkacın Açısının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,2)
plot(dTeta1dt(:,1),dTeta1dt(:,2))
title('1. Sarkacın Açısal Hızının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,3)
plot(Teta2(:,1),Teta2(:,2))
title('2. Sarkacın Açısının Zamana Bağlı Değişimi(Soru 5.2)')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,4)
plot(dTeta2dt(:,1),dTeta2dt(:,2))
title('2. Sarkacın Açısal Hızının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')

figure(4)
plot(xTeta1(:,2),yTeta1(:,2),xTeta2(:,2),yTeta2(:,2))
title('Kütlelerin Konumu(Soru 5.2)')
xlabel('Kütlenin x Konumu')
ylabel('Kütlenin y Konumu')


clear all; clc;

load_system('doublePendulum');
set_param('doublePendulum/Hiz1','InitialCondition','pi/3')
set_param('doublePendulum/Aci1','InitialCondition','pi/3')
set_param('doublePendulum/Hiz2','InitialCondition','0')
set_param('doublePendulum/Aci2','InitialCondition','3')
sim('doublePendulum',10)

figure(5)
subplot(2,2,1)
plot(Teta1(:,1),Teta1(:,2))
title('1. Sarkacın Açısının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,2)
plot(dTeta1dt(:,1),dTeta1dt(:,2))
title('1. Sarkacın Açısal Hızının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,3)
plot(Teta2(:,1),Teta2(:,2))
title('2. Sarkacın Açısının Zamana Bağlı Değişimi(Soru 5.3)')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')
subplot(2,2,4)
plot(dTeta2dt(:,1),dTeta2dt(:,2))
title('2. Sarkacın Açısal Hızının Zamana Bağlı Değişimi')
xlabel('Zaman(s)')
ylabel('Açı(Radyan)')

figure(6)
plot(xTeta1(:,2),yTeta1(:,2),xTeta2(:,2),yTeta2(:,2))
title('Kütlelerin Konumu(Soru 5.3)')
xlabel('Kütlenin x Konumu')
ylabel('Kütlenin y Konumu')