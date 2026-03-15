# ML Library

function train(data)
    return system.mltrain(data)
end

function predict(model,input)
    return system.mlpredict(model,input)
end