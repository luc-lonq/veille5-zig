const std = @import("std");

fn insensitive_eql(comptime uppr: []const u8, str: []const u8) bool {
    comptime {
        var i = 0;
        while (i < uppr.len) : (i += 1) {
            if (uppr[i] >= 'a' and uppr[i] <= 'z') {
                @compileError("`uppr` must be all uppercase");
            }
        }
    }
    var i = 0;
    while (i < uppr.len) : (i += 1) {
        const val = if (uppr[i] >= 'a' and uppr[i] <= 'z')
            str[i] - 32
        else
            str[i];
        if (val != uppr[i]) return false;
    }
    return true;
}

pub fn main() !void {
    const x = insensitive_eql("Hello", "hElLo");
    _ = x;
}
