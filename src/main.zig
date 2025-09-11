const std = @import("std");
const practice = @import("practice");

pub fn main() !void {
    std.debug.print("Hello, world!\n", .{});
    // Prints to stderr, ignoring potential errors.
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
    try practice.bufferedPrint();
}
