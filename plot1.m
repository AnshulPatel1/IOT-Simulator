% Mohammad Hossein Homaei, Homaei@wsnlab.org & Homaei@wsnlab.ir
% Ver 1. 10/2014
axes(findobj('Tag', 'axes2'));
cla(findobj('Tag', 'axes2'), 'reset');
hold on;
for i = 1:numNodes
    %drawnow
    if (nodeArch.node(i).type == 'C')
        %plot(nodeArch.nodesLoc(i, 1), nodeArch.nodesLoc(i, 2),...
        %    '.', 'MarkerSize',15, 'MarkerFaceColor', 'k'); %small circles (kids)
        plothandler = plot(nodeArch.nodesLoc(i,1), nodeArch.nodesLoc(i,2),...
            'o','MarkerFaceColor','r');
        plothandler = plot([nodeArch.nodesLoc(i,1), netArch.Sink.x],...
            [nodeArch.nodesLoc(i,2), netArch.Sink.y]);
    else
        if (nodeArch.node(i).energy <= 0)
            plothandler = plot(nodeArch.nodesLoc(i, 1), nodeArch.nodesLoc(i, 2),...
                '.','MarkerSize',15);
        else    
            plothandler = plot(nodeArch.nodesLoc(i, 1), nodeArch.nodesLoc(i, 2),...
                'o','MarkerFaceColor','b');
            locNode = [nodeArch.node(i).x, nodeArch.node(i).y];
            countCH = length(clusterModel.clusterNode.no);
            [minDis, loc] = min(sqrt(sum((repmat(locNode, countCH, 1) - ...
                clusterModel.clusterNode.loc)' .^ 2)));
            minDisCH =  clusterModel.clusterNode.no(loc);
            plothandler = plot([nodeArch.nodesLoc(i,1), nodeArch.nodesLoc(minDisCH,1)]...
                ,[nodeArch.nodesLoc(i,2), nodeArch.nodesLoc(minDisCH,2)]);
        end
    end
    
end
plothandler = plot(netArch.Sink.x, netArch.Sink.y,'o', ...
    'MarkerSize',8, 'MarkerFaceColor', 'g'); %(base station/mother) 
