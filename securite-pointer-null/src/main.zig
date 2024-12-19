const std = @import("std");

pub fn main() !void {
    var ptr: *i32 = null;
    const value = ptr.*;
    std.debug.print("Value: {d}\n", .{value});
}