const std = @import("std");

const User = struct {
    name: []const u8,
    age: i32
};
const print = std.debug.print;
pub fn main() !void {
    const user = User{
        .name = "Alice",
        .age = 30,
    };
    print("{}", .{user});
    print("User: {s}, Age: {d}\n", .{user.name, user.age});
    print("Hello, world!\n", .{});
    // Prints to stderr, ignoring potential errors.
    print("All your {s} are belong to us.\n", .{"codebase"});
}
