% Mohammad Hossein Homaei, Homaei@wsnlab.org & Homaei@wsnlab.ir
% Ver 1. 10/2014
function start (numOfNodes, probability, energy, transEnergy, recieveEnergy)

numNodes = numOfNodes;% number of nodes
p = probability;

netArch  = newNetwork(100, 100, 50, 175, energy, transEnergy, recieveEnergy);
nodeArch = newNodes(netArch, numNodes);
roundArch = newRound();

par = struct;

for r = 1:roundArch.numRound
    r
    for i = 1:numNodes
        if (nodeArch.node(i).energy > 0)
            % x cordination of node
            nodeArch.node(i).x      =   rand * netArch.Yard.Length;
            nodeArch.nodesLoc(i, 1) =   nodeArch.node(i).x;
            % y cordination of node
            nodeArch.node(i).y      =   rand * netArch.Yard.Width;
            nodeArch.nodesLoc(i, 2) =   nodeArch.node(i).y;
        end
    end
    clusterModel = newCluster(netArch, nodeArch, 'leach', r, p);
    clusterModel = dissEnergyCH(clusterModel, roundArch);
    clusterModel = dissEnergyNonCH(clusterModel, roundArch);
    nodeArch = clusterModel.nodeArch; % new node architecture after select CHs
    plot1; 
    par = plotResults(clusterModel, r, par);
    axes(findobj('Tag', 'axes2'));
    set(findobj('Tag', 'edit2'), 'String', num2str(par.packetToBS)); 
    set(findobj('Tag', 'edit3'), 'String', num2str(r)); 
    set(findobj('Tag', 'edit1'), 'String', num2str(numNodes - (par.numDead))); 
    drawnow; 
    if nodeArch.numDead == nodeArch.numNode
        break
    end 
    animation(r) = getframe;
end
end 

