const { syncDB } = require("../../tasks/sync-db");

describe("Prueba en Sync-DB", () => {
  test("Debe de ejecutar el proceso 2 veces", () => {
    syncDB();
    const times = syncDB();
    expect(times).toBe(2);
  });
});
