---
--- Created by HundertDampf.
--- DateTime: 03.01.2021 13:17
--- Version: 1.0
--- @module dampf_seatgenerator
---

local dampf_seatgenerator = {}

function dampf_seatgenerator.generateSeatsArray (animation, crew, forward, group, transfArray)
    passengers = {};

    for key, transf in ipairs(transfArray)
    do
        passengers[#passengers + 1] = {
            animation = animation,
            crew = crew,
            forward = forward,
            group = group,
            transf = transf,
        };
    end
    return passengers;
end

function dampf_seatgenerator.joinSeatsArrays (seatsArrays)
    passengers = {};

    for key, seats in ipairs(seatsArrays)
    do
        for i, seat in ipairs(seats) do
            passengers[#passengers + 1] = seat;
        end
    end
    return passengers;
end

return dampf_seatgenerator;