const std = @import("std");

const BackendOpts = @This();

const errors = @import("errors.zig");

const Version = @import("Version.zig");
const BackendState = @import("BackendState.zig");

initialState: ?BackendState,

pub fn new(initialState: ?BackendState) BackendOpts {
    return BackendOpts{
        .initialState = initialState,
    };
}
