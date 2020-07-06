open CommonTypes

type t = {
  id: option<string>,
  name: string,
  category: option<bool>,
  transfer_acct: option<bool>,
}

@bs.send
external create: (Api.t, t) => Js.Promise.t<string> = "createPayee"

@bs.send
external update: (Api.t, id, Js.t<'a>) => Js.Promise.t<unit> = "updatePayee"

@bs.send external delete: (Api.t, id) => Js.Promise.t<unit> = "deletePayee"
