% B_score

% input pre_14
l=length(pre_14);
score=0;
count=0;
base=1/l;
total_score=0;

for i=1:l
    if pre_14(i)>=0.5
        count=count+1;
        total_score=total_score+(pre_14(i)-0.5)*base*(2^count);
    else
        count=0;
    end
end

max(-25,log(total_score))
% clear pre_14;