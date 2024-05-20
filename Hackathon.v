module Hackathon (
    input clk,          // Clock input
    input reset,        // Reset input
    output reg red_MR1, // Red signal for main road 1
    output reg yellow_MR1, // Yellow signal for main road 1
    output reg green_MR1,  // Green signal for main road 1
    output reg red_MR2, // Red signal for main road 2
    output reg yellow_MR2, // Yellow signal for main road 2
    output reg green_MR2,  // Green signal for main road 2
    output reg red_MR3, // Red signal for main road 3
    output reg yellow_MR3, // Yellow signal for main road 3
    output reg green_MR3  // Green signal for main road 3
);

// Internal signals
reg [1:0] state;    // State variable

// State definitions
parameter S_RED = 2'b00;
parameter S_GREEN_MR1 = 2'b01;
parameter S_GREEN_MR2 = 2'b10;
parameter S_GREEN_MR3 = 2'b11;

// Counter for state transitions
reg [3:0] counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        // Initialize state and counter
        state <= S_RED;
        counter <= 4'b0000;
    end else begin
        // State transition
        case (state)
            S_RED: begin
                if (counter == 4'b0101) begin
                    state <= S_GREEN_MR1;
                    counter <= 4'b0000;
                end else begin
                    counter <= counter + 1;
                end
            end
            S_GREEN_MR1: begin
                if (counter == 4'b0101) begin
                    state <= S_GREEN_MR2;
                    counter <= 4'b0000;
                end else begin
                    counter <= counter + 1;
                end
            end
            S_GREEN_MR2: begin
                if (counter == 4'b0101) begin
                    state <= S_GREEN_MR3;
                    counter <= 4'b0000;
                end else begin
                    counter <= counter + 1;
                end
            end
            S_GREEN_MR3: begin
                if (counter == 4'b0101) begin
                    state <= S_RED;
                    counter <= 4'b0000;
                end else begin
                    counter <= counter + 1;
                end
            end
        endcase
    end
end

// Output logic based on state
always @(state) begin
    case (state)
        S_RED: begin
            // Disable all signals except MR3
            red_MR1 <= 1'b1;
            yellow_MR1 <= 1'b0;
            green_MR1 <= 1'b0;
            red_MR2 <= 1'b1;
            yellow_MR2 <= 1'b0;
            green_MR2 <= 1'b0;
            red_MR3 <= 1'b0;
            yellow_MR3 <= 1'b0;
            green_MR3 <= 1'b0;
        end
        S_GREEN_MR1: begin
            // Enable MR1 green signal
            red_MR1 <= 1'b0;
            yellow_MR1 <= 1'b0;
            green_MR1 <= 1'b1;
            // Disable MR2 and MR3 signals
            red_MR2 <= 1'b1;
            yellow_MR2 <= 1'b0;
            green_MR2 <= 1'b0;
            red_MR3 <= 1'b1;
            yellow_MR3 <= 1'b0;
            green_MR3 <= 1'b0;
        end
        S_GREEN_MR2: begin
            // Enable MR2 green signal
            red_MR1 <= 1'b1;
            yellow_MR1 <= 1'b0;
            green_MR1 <= 1'b0;
            red_MR2 <= 1'b0;
            yellow_MR2 <= 1'b0;
            green_MR2 <= 1'b1;
            // Disable MR1 and MR3 signals
            red_MR3 <= 1'b1;
            yellow_MR3 <= 1'b0;
            green_MR3 <= 1'b0;
        end
        S_GREEN_MR3: begin
            // Enable MR3 green signal
            red_MR1 <= 1'b1;
            yellow_MR1 <= 1'b0;
            green_MR1 <= 1'b0;
            red_MR2 <= 1'b1;
            yellow_MR2 <= 1'b0;
            green_MR2 <= 1'b0;
            red_MR3 <= 1'b0;
            yellow_MR3 <= 1'b0;
            green_MR3 <= 1'b1;
        end
    endcase
end

endmodule
