const std = @import("std");
const stdout = std.io.getStdOut().writer();

fn pi_nks_series(limit: u32, seed: f32) f32 {
    var s: i32 = 1;
    var i: i32 = 2;
    var seed0: f32 = seed;
    while (i <= limit) : (i += 2) {
        seed0 += @intToFloat(f32, (s * 4)) / @intToFloat(f32, (i * (i + 1) * (i + 2)));
        s = s * (-1);
    }
    return seed0;
}

fn pi_gls_series(limit: u32, seed: f32) f32 {
    var s: i32 = 1;
    var i: i32 = 1;
    var seed0: f32 = seed;
    while (i <= limit) : (i += 2) {
        seed0 += @intToFloat(f32, s) * @intToFloat(f32, 4) / @intToFloat(f32, i);
        s = s * (-1);
    }
    return seed0;
}

pub fn main() !u8 {
    const limit: u32 = 100;
    var pi_nks = pi_nks_series(limit, 3.0);
    var pi_gls = pi_gls_series(limit, 0.0);
    try stdout.print("NKS: {d:.13}\n", .{pi_nks});
    try stdout.print("GLS: {d:.13}\n", .{pi_gls});
    return 0;
}
