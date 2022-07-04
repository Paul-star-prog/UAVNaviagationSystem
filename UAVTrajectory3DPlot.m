function out1 = UAVTrajectory3DPlot(NameUAV,indUAV, out)
% Функция, предназначенная для построения графика пространственной траектории БпЛА
% и сохранения результата в файл .fig.
% Запуск после окончания моделирования модели
% UAVIntegratedNavigationSystem.slx
% NameUAV - строка с названием БпЛА.
% indUAV - индекс типа БпЛА.
%% Размер шрифта по осям %%
set(0,'DefaultAxesFontSize', 12);
%% Построение пространственной траектории БпЛА %%
if (indUAV == 3)
    fig1=figure;
    plot3(out.North_Complex.data,out.East_Complex.data,out.Altitude_Complex.data);
    hold on;
    plot3(out.North_True.data,out.East_True.data,out.Altitude_True.data);
    hold on;
    plot3(out.North_GNSS.data,out.East_GNSS.data,out.Altitude_GNSS.data);
    title('Пространственная траектория БпЛА' + " " + string(NameUAV),'FontSize',16);
    legend('Траектория БпЛА - Комплексное решение',...
           'Траектория БпЛА - Истинное движение',...
           'Траектория БпЛА - Навигационное решение по СНС',...
           'FontSize', 12, 'Location','northwest');
    xlabel('Координата Север, м', 'FontSize', 12);
    ylabel('Координата Восток, м', 'FontSize', 12);
    zlabel('Высота БпЛА, м', 'FontSize', 12);
    saveas(fig1, "Пространственная траектория БпЛА" + " " + string(NameUAV) + " " + ".fig");
    close;
else
    fig1=figure;
    plot3(out.North_Complex.data,out.East_Complex.data,out.Altitude_Complex.data);
    hold on;
    plot3(out.North_True.data,out.East_True.data,out.Altitude_True.data);
    hold on;
    plot3(out.North_GNSS.data,out.East_GNSS.data,out.Altitude_GNSS.data);
    hold on;
    plot3(out.North_AION.data,out.East_AION.data,out.Altitude_AION.data);
    title('Пространственная траектория БпЛА' + " " + string(NameUAV),'FontSize',16);
    legend('Траектория БпЛА - Комплексное решение',...
           'Траектория БпЛА - Истинное движение',...
           'Траектория БпЛА - Навигационное решение по СНС',...
           'Траектория БпЛА - Навигационное решение по АИОН',...
           'FontSize', 12, 'Location','northwest');
    xlabel('Координата Север, м', 'FontSize', 12);
    ylabel('Координата Восток, м', 'FontSize', 12);
    zlabel('Высота БпЛА, м', 'FontSize', 12);
    saveas(fig1, "Пространственная траектория БпЛА" + " " + string(NameUAV) + " " + ".fig");
    close;    
end
end