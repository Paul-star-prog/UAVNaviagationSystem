function out1 = UAVOrientationPlot(NameUAV, out)
% Функция, предназначенная для построения графиков угловой ориентации и показаний ДУСов БпЛА
% и сохранение результатов в файл .fig.
% Запуск после окончания моделирования модели
% UAVIntegratedNavigationSystem.slx
% NameUAV - строка с названием БпЛА.
%% Размер шрифта по осям %%
set(0,'DefaultAxesFontSize', 12);
%% Построение графиков угла крена БпЛА %%
fig1=figure;
plot(out.Roll_Complex.time,out.Roll_Complex.data);
hold on;
plot(out.Roll_GNSS.time,out.Roll_GNSS.data);
hold on;
plot(out.Roll_INS.time,out.Roll_INS.data);
grid on;
title('Угол крена БпЛА' + " " + string(NameUAV),'FontSize',16);
legend('Угол Крена - Комплексное решение',...
       'Угол Крена - Навигационное решение по СНС',...
       'Угол Крена - Навигационное решение по ИНС',...
       'FontSize', 12, 'Location','northwest');
xlabel('Время, сек', 'FontSize', 12);
ylabel('Угол Крена, град', 'FontSize', 12);
saveas(fig1, "Угол Крена БпЛА"  + " " + string(NameUAV) + " " + ".fig");
close;
%% Построение графиков угла курса БпЛА %%
fig1=figure;
plot(out.Yaw_Complex.time,out.Yaw_Complex.data);
hold on;
plot(out.Yaw_GNSS.time,out.Yaw_GNSS.data);
hold on;
plot(out.Yaw_INS.time,out.Yaw_INS.data);
grid on;
title('Угол курса БпЛА' + " " + string(NameUAV),'FontSize',16);
legend('Угол Курса - Комплексное решение',...
       'Угол Курса - Навигационное решение по СНС',...
       'Угол Курса - Навигационное решение по ИНС',...
       'FontSize', 12, 'Location','northwest');
xlabel('Время, сек', 'FontSize', 12);
ylabel('Угол Курса, град', 'FontSize', 12);
saveas(fig1, "Угол Курса БпЛА"  + " " + string(NameUAV) + " " + ".fig");
close;
%% Построение графиков угла тангажа БпЛА %%
fig1=figure;
plot(out.Pitch_Complex.time,out.Pitch_Complex.data);
hold on;
plot(out.Pitch_GNSS.time,out.Pitch_GNSS.data);
hold on;
plot(out.Pitch_INS.time,out.Pitch_INS.data);
grid on;
title('Угол тангажа БпЛА' + " " + string(NameUAV),'FontSize',16);
legend('Угол Тангажа - Комплексное решение',...
       'Угол Тангажа - Навигационное решение по СНС',...
       'Угол Тангажа - Навигационное решение по ИНС',...
       'FontSize', 12, 'Location','northwest');
xlabel('Время, сек', 'FontSize', 12);
ylabel('Угол Тангажа, град', 'FontSize', 12);
saveas(fig1, "Угол Тангажа БпЛА" + " " + string(NameUAV) + " " + ".fig");
close;
%% Построение графиков показаний ДУСов БпЛА %%
fig1=figure;
plot(out.AngleVelBF_X.time,out.AngleVelBF_X.data);
hold on;
plot(out.AngleVelBF_Y.time,out.AngleVelBF_Y.data);
hold on;
plot(out.AngleVelBF_Z.time,out.AngleVelBF_Z.data);
grid on;
title('Угловые скорости БпЛА' + " " + string(NameUAV) + " " + '(Связ. С.К.)','FontSize',16);
legend('Угловая скорость БпЛА по оси OX',...
       'Угловая скорость БпЛА по оси OY',...
       'Угловая скорость БпЛА по оси OZ',...
       'FontSize', 12, 'Location','northwest');
xlabel('Время, сек', 'FontSize', 12);
ylabel('Угловая скорость, град/сек', 'FontSize', 12);
saveas(fig1, "Угловые скорости БпЛА" + " " + string(NameUAV) + " " + "(Связ. С.К.)" + ".fig");
close;
end