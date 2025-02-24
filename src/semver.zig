const std = @import("std");

pub const Version = packed struct {
    major: u20,
    minor: u20,
    patch: u24,
};
