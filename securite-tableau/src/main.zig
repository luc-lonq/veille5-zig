const std = @import("std");

pub fn main() !void {
    const array = [5]i32{1, 2, 3, 4, 5};
    const index = 10;
    std.debug.print("Value {d}\n", .{array[index]});
}

