while true do
    if turtle.getItemCount() == 0 then
        if turtle.getSelectedSlot() == 15 then
            turtle.select(1)
            sleep(5)
        else
            turtle.select(turtle.getSelectedSlot()+1)
        end
    else
        turtle.place()
        sleep(0.1)
        turtle.select(16)
        turtle.dig()
        turtle.dropUp()
        turtle.select(1)
    end    
end