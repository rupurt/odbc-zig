const std = @import("std");
const testing = std.testing;
const expectEqual = testing.expectEqual;
const expectError = testing.expectError;
const allocator = testing.allocator;

const zodbc = @import("zodbc");
const err = zodbc.errors;
const types = zodbc.odbc.types;

test ".setStmtAttr/1 todo..." {
    const env_con = try zodbc.testing.connection();
    defer {
        env_con.con.deinit();
        env_con.env.deinit();
    }
    const con_str = try zodbc.testing.db2ConnectionString(allocator);
    defer allocator.free(con_str);
    try env_con.con.connectWithString(con_str);

    const stmt = try zodbc.Statement.init(env_con.con);
    defer stmt.deinit();

    // var concurrency_value: isize = 0;
    // try stmt.getStmtAttr(.CONCURRENCY, &concurrency_value, 0, null);
    // try expectEqual(1, concurrency_value);
    // var set_concurrency_value: isize = 0;
    // try stmt.setStmtAttr(.CONCURRENCY, &set_concurrency_value, 0);
    // try stmt.getStmtAttr(.CONCURRENCY, &concurrency_value, 0, null);
    // try expectEqual(set_concurrency_value, concurrency_value);

    // var get_row_array_size_value: isize = 0;
    // try stmt.getStmtAttr(.ROW_ARRAY_SIZE, &get_row_array_size_value, 0, null);
    // // try expectEqual(1, get_row_array_size_value);
    // var set_row_array_size_value: isize = 100;
    // // const set_max_length_value: isize = 100;
    // try stmt.setStmtAttr(.ROW_ARRAY_SIZE, &set_row_array_size_value, 0);
    // try stmt.getStmtAttr(.ROW_ARRAY_SIZE, &get_row_array_size_value, 0, null);
    // try expectEqual(set_row_array_size_value, get_row_array_size_value);
}
