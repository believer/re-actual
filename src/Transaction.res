open CommonTypes

type rec t = {
  account: string,
  amount: option<float>,
  category: option<string>,
  date: string,
  id: option<string>,
  imported_id: option<string>,
  imported_payee: option<string>,
  notes: option<string>,
  payee_name: option<string>,
  payee: option<string>,
  subtransactions: option<array<t>>,
  transfer_id: option<string>,
}

@bs.send
external update: (Api.t, id, Js.t<'a>) => Js.Promise.t<unit> =
  "updateTransaction"

@bs.send
external delete: (Api.t, id) => Js.Promise.t<unit> = "deleteTransaction"
