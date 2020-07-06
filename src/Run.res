@bs.send
external withBudget: (Api.t, string, unit => Js.Promise.t<unit>) => unit =
  "runWithBudget"
