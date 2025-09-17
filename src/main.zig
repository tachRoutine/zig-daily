const std = @import("std");
const user = @import("user.zig");

const CustomError: type = error{ InvalidAge, UnrealisticAge, HIIIIIIIII };
pub const print = std.debug.print;

pub fn main() !void {
    var userStruct = user.User{
        .name = "Alice",
        .age = 100000,
    };
    userStruct.greetUser();
    if (userStruct.age < 0) {
        print("Error: Invalid age {d}\n", .{userStruct.age});
        return CustomError.HIIIIIIIII;
    } else if (userStruct.age > 120) {
        print("Error: Unrealistic age {d}\n", .{userStruct.age});
        std.debug.panic("Common man", .{});
        return CustomError.UnrealisticAge;
    }

    print("{}", .{user});
}
