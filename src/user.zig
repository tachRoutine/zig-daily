const main = @import("main");

pub const User: type = struct {
    name: []const u8,
    age: i32,
    fn greetUser(self: *User) void {
        main.print("Hello, {s}!\n", .{self.name});
    }
};

pub fn getUserInfo() User {
    return User{
        .name = "Bob",
        .age = 30,
    };
}
