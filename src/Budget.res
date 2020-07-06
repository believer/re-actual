open CommonTypes

@bs.send
external getMonths: Api.t => Js.Promise.t<array<month>> = "getBudgetMonths"

@bs.send
external getMonth: (Api.t, month) => Js.Promise.t<Js.t<'a>> =
  "getBudgetMonth"

@bs.send
external setAmount: (Api.t, month, id, amount) => Js.Promise.t<unit> =
  "setBudgetAmount"

@bs.send
external setCarryover: (Api.t, month, id, bool) => Js.Promise.t<unit> =
  "setBudgetCarryover"
