const main = @import("main");
const string: type  =  []const u8;

pub const User: type = struct {
    name: []const u8,
    age: i64,
    pub fn greetUser(self: *User) void {
        main.print("Hello, {s}!\n", .{self.name});
    }
};


pub fn createUser(name: string, age: i64) User {
    return User{
        .name = name,
        .age = age,
    };
}
