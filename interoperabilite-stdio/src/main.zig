const std = @import("std");

const c = @cImport({
    @cInclude("stdio.h");
});

pub fn main() !void {
    _ = c.printf("hello world!\n");
}