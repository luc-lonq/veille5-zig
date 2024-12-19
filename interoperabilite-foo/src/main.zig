const std = @import("std");

const c = @cImport({
    @cInclude("foo.h");
});

pub fn main() !void {
    const sum = c.foo_add(5, 3);
    std.debug.print("Sum: {d}\n", .{sum});
}