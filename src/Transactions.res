open CommonTypes

@bs.send
external add:
  (Api.t, id, array<Transaction.t>) => Js.Promise.t<array<string>> =
  "addTransactions"

@bs.send
external get: (Api.t, id, date, date) => Js.Promise.t<array<Transaction.t>> =
  "getTransactions"

@bs.send
external filter: (Api.t, id, string) => Js.Promise.t<array<Transaction.t>> =
  "filterTransactions"

type importResult<'error> = {
  added: array<string>,
  errors: 'error,
  updated: array<string>,
}

@bs.send
external importAll:
  (Api.t, id, array<Transaction.t>) => Js.Promise.t<importResult<'error>> =
  "importTransactions"
