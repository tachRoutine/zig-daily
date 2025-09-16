const std = @import("std");

const CustomError = error{ InvalidAge, UnrealisticAge, HIIIIIIIII };
const print = std.debug.print;
const User = struct {
    name: []const u8,
    age: i32,
    fn greetUser(self: *User) void {
        print("Hello, {s}!\n", .{self.name});
    }
};
pub fn main() !void {
    var user = User{
        .name = "Alice",
        .age = -1,
    };
    user.greetUser();
    if (user.age < 0) {
        print("Error: Invalid age {d}\n", .{user.age});
        return CustomError.HIIIIIIIII;
    } else if (user.age > 120) {
        print("Error: Unrealistic age {d}\n", .{user.age});
        return CustomError.UnrealisticAge;
    }

    print("{}", .{user});
}
