const std = @import("std");
const user = @import("user.zig");

const CustomError: type = error{ InvalidAge, UnrealisticAge, HIIIIIIIII };
pub const print = std.debug.print;

pub fn main() !void {
    const userStruct = user.User{
        .name = "Alice",
        .age = 100000,
    };
    print("User: {s}, Age: {d}\n", .{userStruct.name, userStruct.age});
    //Yeah yeah iam complicating this 
    const newUser = user.createUser("Tach", 10000000000000);
    print("User: {s}, Age: {d}\n", .{newUser.name, newUser.age});
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
