function [Data,TFinal] = get_scenario_from_xlsx(indUAV)
if (indUAV == 1)
    Data = xlsread('KOIQuadrocopter.xlsx');
elseif (indUAV == 2)
    Data = xlsread('KOIUAV1.xlsx');
else
    Data = xlsread('KOIUAV2.xlsx');
end
assert((size(Data,2) == 2),...
'Файл .xlsx должен содержать 2 столбца: 1 - время; 2 - индекс КОИ')
assert(sum(sum(isnan(Data(:,:)))) == 0,...
'NaN в файле .xlsx')
TFinal = Data(size(Data,1),1);
end

