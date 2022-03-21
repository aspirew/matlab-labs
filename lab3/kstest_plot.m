function [Decision,Di]=kstest_plot(X,cdfModel,cdfData)
%% Description
% X: Data X
% cdfModel: Testing Model CDF
% cdfData: Data CDF
% X=randn(100,1);
% sX=sort(sX)
% cdfModel=normcdf(X);
% cdfData= 1:length(X)/(length(X)+1);
% 
% [Decision,Di]=KStest(X,cdfModel)
% [Decision,Di]=KStest(X,cdfModel,cdfData)
% [Decision,Di]=KStest(X,'gamma')
% 
%% Written by Taesam Lee
% Gyeongsang National University
%%

sX=sort(X);
if(nargin<=2)
    cdfData=(1:length(X))/(length(X)+1);
end

if(ischar(cdfModel))
    Parameters=mle(sX,'distribution',cdfModel);
    cdfModel=cdf_type(sX,Parameters,cdfModel)
end

Dist=abs(cdfModel-cdfData');
Di=max(Dist);
Di_loc=find(Di==Dist);
[a,b,c,Di_stat]=kstest(X);

decimal=2; Di=round(Di*(10^decimal))/(10^decimal);
decimal=2;Di_stat=round(Di_stat*(10^decimal))/(10^decimal);

if (Di_stat>Di)
    display('The applied distribution is OK')
    t1=['Di(',num2str(Di),')< Di*(=',num2str(Di_stat),')'];
    display(t1)
    t2='OK';
    Decision=true;
else
    display('The applied distribution is not OK')
    t1=['Di(',num2str(Di),') > Di*(=',num2str(Di_stat),')'];
    display(t1)
    Decision=false;
    t2='Not OK';
end 
figure
plot(sX,cdfData,'LineWidth',2)
hold on
stairs(sX,cdfModel,'r','LineWidth',2)
plot(sX(Di_loc),cdfData(Di_loc),'ro','LineWidth',2)
plot(sX(Di_loc),cdfModel(Di_loc),'ro','LineWidth',2)
plot(sX(Di_loc),cdfData(Di_loc),'ro','LineWidth',2)
line([sX(Di_loc),sX(Di_loc)],[cdfModel(Di_loc),cdfData(Di_loc)],'Color',[.5 .5 .5],'LineWidth',2)
xlabel('X','FontSize',14)
ylabel('CDF','FontSize',14)
set(gca,'FontSize',14)

text(mean([sX(Di_loc),sX(Di_loc)]),mean([cdfModel(Di_loc),cdfData(Di_loc)]),[t1,sprintf('\n'),'Decision = ',t2],'FontSize',14)

function [CDF]=cdf_type(X,Param,Dist)

switch length(Param)
    case 1
        CDF=cdf(Dist,X,Param(1));
    case 2
        CDF=cdf(Dist,X,Param(1),Param(2));
    case 3
        CDF=cdf(Dist,X,Param(1),Param(2),Param(3));
    case 4
        CDF=cdf(Dist,X,Param(1),Param(2),Param(3),Param(4));
end
    

