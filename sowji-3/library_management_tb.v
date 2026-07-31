`timescale 1ns/1ps

module library_management_tb;

reg clk;
reg reset;
reg issue;
reg return_book;

wire available;
wire issued;

library_management uut(
    .clk(clk),
    .reset(reset),
    .issue(issue),
    .return_book(return_book),
    .available(available),
    .issued(issued)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    issue = 0;
    return_book = 0;

    // Reset
    #10;
    reset = 0;

    // Issue book
    #10;
    issue = 1;
    #10;
    issue = 0;

    // Try issuing again (book already issued)
    #10;
    issue = 1;
    #10;
    issue = 0;

    // Return book
    #10;
    return_book = 1;
    #10;
    return_book = 0;

    // Return again (already available)
    #10;
    return_book = 1;
    #10;
    return_book = 0;

    // Issue again
    #10;
    issue = 1;
    #10;
    issue = 0;

    #20;
    $finish;
end

initial
begin
    $monitor("Time=%0t Issue=%b Return=%b Available=%b Issued=%b",
             $time, issue, return_book, available, issued);
end

endmodule