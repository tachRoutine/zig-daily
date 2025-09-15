const std = @import("std");

const User = struct {
    name: []const u8,
    age: i32
};
const CustomError = error{InvalidAge, UnrealisticAge};
const print = std.debug.print;
pub fn main() !void {
    const user = User{
        .name = "Alice",
        .age = -1,
    };
    if (user.age < 0){
        print("Error: Invalid age {d}\n", .{user.age});
        return CustomError.InvalidAge;
    }else if (user.age > 120) {
        print("Error: Unrealistic age {d}\n", .{user.age});
        return CustomError.UnrealisticAge;
    }

    print("{}", .{user});
    print("User: {s}, Age: {d}\n", .{user.name, user.age});
    print("Hello, world!\n", .{});
    // Prints to stderr, ignoring potential errors.
    print("All your {s} are belong to us.\n", .{"codebase"});
}
