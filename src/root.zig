const std = @import("std");
const testing = std.testing;

pub const backend = @import("backend.zig");

pub const BackendError = backend.BackendError;
pub const BackendState = backend.BackendState;
pub const BackendInstance = backend.BackendInstance;

pub const Version = @import("Version.zig");

test "create backend opts struct" {}
