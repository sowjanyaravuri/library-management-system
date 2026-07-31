module library_management(
    input clk,
    input reset,
    input issue,
    input return_book,
    output reg available,
    output reg issued
);

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        available <= 1;
        issued <= 0;
    end
    else
    begin
        // Issue Book
        if(issue && available)
        begin
            available <= 0;
            issued <= 1;
        end

        // Return Book
        else if(return_book && issued)
        begin
            available <= 1;
            issued <= 0;
        end
    end
end

endmodule