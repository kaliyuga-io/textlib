const std = @import("std");

const BackendInstance = @This();

const Version = @import("Version.zig");
const BackendState = @import("BackendState.zig");
const Name = [64]u8;

name: Name,
version: Version,
state: BackendState,

pub fn create(a: *std.mem.Allocator, name: Name, version: Version, state: BackendState) !*const BackendInstance {
    var b = try a.create(BackendInstance);
    b.name = name;
    b.version = version;
    b.state = state;
    return b;
}
