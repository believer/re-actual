open CommonTypes

type t = {
  id: option<string>,
  name: string,
  _type: string,
  offbudget: bool,
  closed: bool,
}

@bs.send
external create: (Api.t, t) => Js.Promise.t<string> = "createAccount"

@bs.send
external createWithBalance: (Api.t, t, amount) => Js.Promise.t<string> =
  "createAccount"

@bs.send
external update: (Api.t, id, Js.t<'a>) => Js.Promise.t<unit> =
  "updateAccount"

@bs.send external close: (Api.t, id) => Js.Promise.t<unit> = "closeAccount"

@bs.send
external closeWithTransferAccount: (Api.t, id, id) => Js.Promise.t<unit> =
  "closeAccount"

@bs.send
external closeWithTransferAccountAndCategory:
  (Api.t, id, id, id) => Js.Promise.t<unit> =
  "closeAccount"

@bs.send
external reopen: (Api.t, id) => Js.Promise.t<unit> = "reopenAccount"

@bs.send
external delete: (Api.t, id) => Js.Promise.t<unit> = "deleteAccount"
