const std = @import("std");

const CustomError: type = error{ InvalidAge, UnrealisticAge, HIIIIIIIII };
pub const print = std.debug.print;
const User: type = struct {
    name: []const u8,
    age: i32,
    fn greetUser(self: *User) void {
        print("Hello, {s}!\n", .{self.name});
    }
};
pub fn main() !void {
    var user = User{
        .name = "Alice",
        .age = 100000,
    };
    user.greetUser();
    if (user.age < 0) {
        print("Error: Invalid age {d}\n", .{user.age});
        return CustomError.HIIIIIIIII;
    } else if (user.age > 120) {
        print("Error: Unrealistic age {d}\n", .{user.age});
        std.debug.panic("Common man", .{});
        return CustomError.UnrealisticAge;
    }

    print("{}", .{user});
}
