const std = @import("std");

pub fn main() !void {
    var allocator = std.heap.page_allocator;

    const n = 10;
    const array = try allocator.alloc(i32, n);
    defer allocator.free(array);

    // Fill the array with values
    var i: i32 = 0;
    for (array[0..n]) |*value| {
        value.* = i * i;
        i += 1;
    }

    // Print the array
    const stdout = std.io.getStdOut().writer();
    for (array[0..n]) |value| {
        try stdout.print("{d} ", .{value});
    }
    try stdout.print("\n", .{});
}