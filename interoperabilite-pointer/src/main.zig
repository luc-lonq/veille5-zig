const std = @import("std");

const c = @cImport({
    @cInclude("array.c");
});

pub fn main() void {
    const n = 5;
    const array = c.create_array(n);
    defer c.free_array(array);

    for (0..n) |i| {
        const value = array[i];
        std.debug.print("array[{d}] = {d}\n", .{i, value});
    }
}