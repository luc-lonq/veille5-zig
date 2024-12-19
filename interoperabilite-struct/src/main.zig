const std = @import("std");

const c = @cImport({
    @cInclude("point.h");
});

pub fn main() void {
    const point = c.create_point(3, 4);
    std.debug.print("Point: ({d}, {d})\n", .{point.x, point.y});
}