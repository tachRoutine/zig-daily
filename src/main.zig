const std = @import("std");

const  print = std.debug.print;
pub fn main() !void {
    print("Hello, world!\n", .{});
    // Prints to stderr, ignoring potential errors.
    print("All your {s} are belong to us.\n", .{"codebase"});
}
