const std = @import("std");

fn safeDivide(a: f32, b: f32) !f32 {
    if (b == 0) {
        return error.DivisionByZero;
    }
    return a / b;
}

pub fn main() !void {
    const result = try safeDivide(10, 0);
    std.debug.print("Résultat : {d}\n", .{result});
}