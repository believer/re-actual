open CommonTypes

type t = {
  id: string,
  name: string,
  group_id: bool,
  is_income: bool,
}

@bs.send
external create: (Api.t, t) => Js.Promise.t<string> = "createCategory"

@bs.send
external update: (Api.t, id, Js.t<'a>) => Js.Promise.t<unit> =
  "updateCategory"

@bs.send
external delete: (Api.t, id) => Js.Promise.t<unit> = "deleteCategory"
