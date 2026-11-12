test "strongestExtension" {
    {
        const result = try strongestExtension(std.testing.allocator, "Watashi", &[_][]const u8{ "tEN", "niNE", "eIGHt8OKe" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Watashi.eIGHt8OKe", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "Boku123", &[_][]const u8{ "nani", "NazeDa", "YEs.WeCaNe", "32145tggg" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Boku123.YEs.WeCaNe", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "__YESIMHERE", &[_][]const u8{ "t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("__YESIMHERE.NuLl__", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "K", &[_][]const u8{ "Ta", "TAR", "t234An", "cosSo" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("K.TAR", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "__HAHA", &[_][]const u8{ "Tab", "123", "781345", "-_-" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("__HAHA.123", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "YameRore", &[_][]const u8{ "HhAas", "okIWILL123", "WorkOut", "Fails", "-_-" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("YameRore.okIWILL123", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "finNNalLLly", &[_][]const u8{ "Die", "NowW", "Wow", "WoW" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("finNNalLLly.WoW", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "_", &[_][]const u8{ "Bb", "91245" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("_.Bb", result);
    }
    {
        const result = try strongestExtension(std.testing.allocator, "Sp", &[_][]const u8{ "671235", "Bb" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("Sp.671235", result);
    }
}
