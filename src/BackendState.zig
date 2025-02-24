const BackendState = @This();

const std = @import("std");

const BackendError = @import("BackendError.zig");

pub const None = 0;
pub const Init = 1;
pub const Ready = 2;
pub const Run = 3;
pub const Stop = 5;
pub const Exit = 6;

value: comptime_int,

pub fn default() BackendState {
    return BackendState{ .value = BackendState.Uninitialized };
}

pub fn from(v: comptime_int) BackendError!BackendState {
    return switch (v) {
        None | Init | Ready | Run | Stop | Exit => BackendState{ .value = v },
        else => BackendError.UnknownStateValue,
    };
}

pub fn value() comptime_int {
    return .value;
}
