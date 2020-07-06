@bs.send
external get: Api.t => Js.Promise.t<array<CategoryGroup.t>> =
  "getCategoryGroups"
