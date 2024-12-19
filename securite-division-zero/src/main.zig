const std = @import("std");

pub fn main() !void {
    const x = 5;
    const y = 0;
    const result = x / y;

    std.debug.print("Value: {d}\n", .{result});
}