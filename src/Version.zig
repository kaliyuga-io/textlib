const std = @import("std");

pub const Version = @This();

const segmentBytes = 4;
const patchSegmentBytes = 12;

const Segment = [segmentBytes]u8;
const PatchSegment = [patchSegmentBytes]u8;

major: Segment,
minor: Segment,
patch: PatchSegment,
